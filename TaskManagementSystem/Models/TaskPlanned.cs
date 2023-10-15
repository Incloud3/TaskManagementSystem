using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Identity;
namespace TaskManagementSystem.Models;

public class TaskPlanned
{
    [Required]
    public int Id { get; set; }
    [Required]
    [StringLength(100, ErrorMessage = "Title cannot be longer than 100 characters")]
    public string Title { get; set; }
    [Required]
    public string Description { get; set; }
    [Required]
    [NotDefaultValue]
    public DateTime Deadline { get; set; }
    [Required]
    public string Priority { get; set; }

    public string UserId { get; set; }
    public virtual IdentityUser User { get; set; }
}

public class NotDefaultValueAttribute : ValidationAttribute
{
    protected override ValidationResult IsValid(object value, ValidationContext validationContext)
    {
        if (value is DateTime dateTimeValue && dateTimeValue == DateTime.MinValue)
        {
            return new ValidationResult("The Deadline field must be set to a valid date and time");
        }

        return ValidationResult.Success;
    }
}
