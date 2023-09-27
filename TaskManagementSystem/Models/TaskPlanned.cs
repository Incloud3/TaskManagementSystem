using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Identity;
namespace TaskManagementSystem.Models;

public class TaskPlanned
{
    [Required]
    public int Id { get; set; }
    [Required]
    public string Title { get; set; }
    [Required]
    public string Description { get; set; }
    [Required]
    public DateTime Deadline { get; set; }
    [Required]
    public string Priority { get; set; }

    public string UserId { get; set; }
    public virtual IdentityUser User { get; set; }
}