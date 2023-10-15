using Xunit;
using System.ComponentModel.DataAnnotations;
using System.Runtime.InteropServices.JavaScript;
using TaskManagementSystem.Models;

namespace TaskManagementSystem.Tests.Models;

public class TaskPlannedTests
{
    [Fact]
    public void TaskPlanned_TitleIsRequired()
    {
        var task = new TaskPlanned()
        {
            Description = "Test description",
            Deadline = DateTime.Today,
            Priority = "High"
        };

        var validationResults = new List<ValidationResult>();
        var context = new ValidationContext(task);

        var isValid = Validator.TryValidateObject(task, context, validationResults, true);

        Assert.False(isValid);
        Assert.Contains(validationResults, v => v.ErrorMessage.Contains("The Title field is required"));
    }

    [Fact]
    public void TaskPlanned_DescriptionIsRequired()
    {
        var task = new TaskPlanned()
        {
            Title = "Test Title",
            Deadline = DateTime.Today,
            Priority = "Low"
        };

        var validationResults = new List<ValidationResult>();
        var context = new ValidationContext(task);

        var isValid = Validator.TryValidateObject(task, context, validationResults, true);

        Assert.False(isValid);
        Assert.Contains(validationResults, v => v.ErrorMessage.Contains("The Description field is required"));
    }
    
    [Fact]
    public void TaskPlanned_PriorityIsRequired()
    {
        var task = new TaskPlanned()
        {
            Title = "Test Title",
            Description = "Test description",
            Deadline = DateTime.Today,
        };

        var validationResults = new List<ValidationResult>();
        var context = new ValidationContext(task);

        var isValid = Validator.TryValidateObject(task, context, validationResults, true);

        Assert.False(isValid);
        Assert.Contains(validationResults, v => v.ErrorMessage.Contains("The Priority field is required"));
    }
    
    [Fact]
    public void TaskPlanned_DeadlineIsRequired()
    {
        var task = new TaskPlanned()
        {
            Title = "Test Title",
            Description = "Test description",
            Priority = "High"
        };

        var validationResults = new List<ValidationResult>();
        var context = new ValidationContext(task);

        var isValid = Validator.TryValidateObject(task, context, validationResults, true);

        Assert.False(isValid);
        Assert.Contains(validationResults, v => v.ErrorMessage.Contains("The Deadline field must be set to a valid date and time"));
    }

    [Fact]
    public void TaskPlanned_TitleLength()
    {
        var task = new TaskPlanned()
        {
            Title = "Really long test title which would be invalid since the maximum number of characters that are available is set to 100",
            Description = "Test description",
            Deadline = DateTime.Today,
            Priority = "High"
        };

        var validationResults = new List<ValidationResult>();
        var context = new ValidationContext(task);

        var isValid = Validator.TryValidateObject(task, context, validationResults, true);

        Assert.False(isValid);
        Assert.Contains(validationResults, v => v.ErrorMessage.Contains("Title cannot be longer than 100 characters"));
    }
}