using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TaskManagementSystem.Data;
using TaskManagementSystem.Models;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Build.Framework;

namespace TaskManagementSystem.Controllers;

[Authorize]
public class TaskController : Controller
{
    private readonly ApplicationDbContext _context;
    private readonly UserManager<IdentityUser> _userManager;

    public TaskController(ApplicationDbContext context, UserManager<IdentityUser> userManager)
    {
        _context = context;
        _userManager = userManager;
    }

    public async Task<IActionResult> Index()
    {
        var userId = _userManager.GetUserId(User);
        var tasksPlanned = await _context.TasksPlanned
            .Where(t => t.UserId == userId)
            .ToListAsync();
        return View(tasksPlanned);
    }

    [HttpGet]
    public IActionResult Create()
    {
        return View();
    }

    [HttpPost]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> Create([Bind("Title,Description,Deadline,Priority")] TaskPlanned model)
    {
        ModelState.Remove("User");
        ModelState.Remove("UserId");
        if (ModelState.IsValid)
        {
            var userId = _userManager.GetUserId(User);
            if (userId == null) return View("Error");
            model.UserId = userId;

            _context.TasksPlanned.Add(model);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }
        return View(model);
    }

    [HttpGet]
    public async Task<IActionResult> Edit(int id)
    {
        var task = await _context.TasksPlanned.FindAsync(id);
        if (task == null)
        {
            return StatusCode(404);
        }

        var userId = _userManager.GetUserId(User);
        if (userId == null || task.UserId != userId)
        {
            return StatusCode(403);
        }

        return View(task);
    }

    [HttpPost]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> Edit(int id, [Bind("Id,Title,Description,Deadline,Priority")] TaskPlanned taskPlanned)
    {
        if (id != taskPlanned.Id)
        {
            return StatusCode(404);
        }

        var userId = _userManager.GetUserId(User);
        var existingTask = await _context.TasksPlanned.FindAsync(id);

        if (existingTask == null)
        {
            return StatusCode(404);
        }

        if (userId == null || existingTask.UserId != userId)
        {
            return StatusCode(403);
        }

        ModelState.Remove("User");
        ModelState.Remove("UserId");
        if (ModelState.IsValid)
        {
            try
            {
                taskPlanned.UserId = existingTask.UserId;
                taskPlanned.User = existingTask.User;
                _context.Entry(existingTask).CurrentValues.SetValues(taskPlanned);
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TaskExists(taskPlanned.Id))
                {
                    return StatusCode(404);
                }
                else
                {
                    throw;
                }
            }
            return RedirectToAction(nameof(Index));
        }
        return View(taskPlanned);
    }
    
    [HttpPost, ActionName("Delete")]
    public async Task<IActionResult> Delete(int id)
    {
        var task = await _context.TasksPlanned.FindAsync(id);
        _context.TasksPlanned.Remove(task);
        await _context.SaveChangesAsync();
        return RedirectToAction(nameof(Index));
        //TODO Implement task verification before deletion
        //TODO Implement user authentication for deletion
        //TODO Add additional info about deleted task on the delete page
    }


    private bool TaskExists(int id)
    {
        return _context.TasksPlanned.Any(e => e.Id == id);
    }
}