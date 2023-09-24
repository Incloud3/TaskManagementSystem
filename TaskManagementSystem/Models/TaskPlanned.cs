using Microsoft.AspNetCore.Identity;
namespace TaskManagementSystem.Models;

public class TaskPlanned
{
    public int Id { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public DateTime Deadline { get; set; }
    public string Priority { get; set; }

    public string UserId { get; set; }
    public IdentityUser User { get; set; }
}