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

    public async Task<IActionResult> Edit(int id)
    {
        var task = await _context.TasksPlanned.FindAsync(id);
        if (task == null)
        {
            return NotFound();
        }

        return View(task);
    }

    [HttpPost]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> Edit(int id, [Bind("Id,Title,Description,Deadline,Priority")] TaskPlanned taskPlanned)
    {
        if (id != taskPlanned.Id)
        {
            return NotFound();
        }
        
        ModelState.Remove("User");
        ModelState.Remove("UserId");
        if (ModelState.IsValid)
        {
            var userId = _userManager.GetUserId(User);
            if (userId == null) return View("Error");
            taskPlanned.UserId = userId;
            
            try
            {
                _context.Update(taskPlanned);
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TaskExists(taskPlanned.Id))
                {
                    return NotFound();
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
    public async Task<IActionResult> DeleteConfirmed(int id)
    {
        var task = await _context.TasksPlanned.FindAsync(id);
        _context.TasksPlanned.Remove(task);
        await _context.SaveChangesAsync();
        return RedirectToAction(nameof(Index));
    }


    private bool TaskExists(int id)
    {
        return _context.TasksPlanned.Any(e => e.Id == id);
    }
    

    //[HttpGet]
    //public async Task<IActionResult> Delete(int? id)
    //{
    //    if (id == null)
    //    {
    //        return NotFound();
    //    }
//
    //    var task = await _context.TasksPlanned.FindAsync(id);
    //    if (task == null)
    //    {
    //        return NotFound();
    //    }

    //    return View(task);
    //}
}