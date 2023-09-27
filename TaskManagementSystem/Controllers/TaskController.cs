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
        var user = _userManager.GetUserAsync(User);
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
    public async Task<IActionResult> Create(TaskPlanned model)
    {
        var userId = _userManager.GetUserId(User);
        var user = await _userManager.GetUserAsync(User);
        model.User = user;
        model.UserId = "3ed89427-3e97-4576-98a5-16fed2c8d4f6";
        //ModelState.Remove("User");
        //ModelState.Remove("UserId");
        if (ModelState.IsValid)
        {
            //var errors = ModelState.Select(x => x.Value.Errors)
            
            //var userId = _userManager.GetUserId(User);
            if (userId == null)
            {
                return View("Error");
            }
            
            _context.TasksPlanned.Add(model);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }
        
        var errors = ModelState.Select(x => x.Value.Errors)
            .Where(y => y.Count > 0)
            .ToList();
        foreach (var error in ModelState)
        {
            Console.WriteLine($"Key: {error.Key}, Error: {string.Join(",", error.Value.Errors.Select(e => e.ErrorMessage))}");
        }
        foreach (var errorList in errors)
        {
            foreach (var error in errorList)
            {
                Console.WriteLine(error.ErrorMessage);
            }
        }
        Console.WriteLine(_userManager.GetUserId(User)+ ": UserId");
        Console.WriteLine(await _userManager.GetUserAsync(User) + ": User");
        Console.WriteLine("WHAT THE FUCK IS GOING ON");
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
    public async Task<IActionResult> Edit(int id,
        [Bind("Id, Title, Description, Deadline, Priority")]
        TaskPlanned taskPlanned)
    {
        if (id != taskPlanned.Id)
        {
            return NotFound();
        }

        if (ModelState.IsValid)
        {
            try
            {
                _context.Update(taskPlanned);
                await _context.SaveChangesAsync();
            }
            catch
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