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
            Priority = TaskPriority.High
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
            Priority = TaskPriority.Medium
        };

        var validationResults = new List<ValidationResult>();
        var context = new ValidationContext(task);

        var isValid = Validator.TryValidateObject(task, context, validationResults, true);

        Assert.False(isValid);
        Assert.Contains(validationResults, v => v.ErrorMessage.Contains("The Description field is required"));
    }

    [Fact]
    public void TaskPlanned_DeadlineIsRequired()
    {
        var task = new TaskPlanned()
        {
            Title = "Test Title",
            Description = "Test description",
            Priority = TaskPriority.Low
        };

        var validationResults = new List<ValidationResult>();
        var context = new ValidationContext(task);

        var isValid = Validator.TryValidateObject(task, context, validationResults, true);

        Assert.False(isValid);
        Assert.Contains(validationResults,
            v => v.ErrorMessage.Contains("The Deadline field must be set to a valid date and time"));
    }

    [Fact]
    public void TaskPlanned_TitleLength()
    {
        var task = new TaskPlanned()
        {
            Title =
                "Really long test title which would be invalid since the maximum number of characters that are available is set to 100",
            Description = "Test description",
            Deadline = DateTime.Today,
            Priority = TaskPriority.High
        };

        var validationResults = new List<ValidationResult>();
        var context = new ValidationContext(task);

        var isValid = Validator.TryValidateObject(task, context, validationResults, true);

        Assert.False(isValid);
        Assert.Contains(validationResults, v => v.ErrorMessage.Contains("Title cannot be longer than 100 characters"));
    }

    [Fact]
    public void TaskPlanned_ValidPriorityValuesAreAccepted()
    {
        var tasks = new List<TaskPlanned>
        {
            new TaskPlanned { Id = 1, Title = "Task1", Description = "Description1", Deadline = DateTime.Today, Priority = TaskPriority.High },
            new TaskPlanned { Id = 2, Title = "Task2", Description = "Description2", Deadline = DateTime.Today, Priority = TaskPriority.Low },
            new TaskPlanned { Id = 3, Title = "Task3", Description = "Description3", Deadline = DateTime.Today, Priority = TaskPriority.Critical },
            new TaskPlanned { Id = 4, Title = "Task4", Description = "Description4", Deadline = DateTime.Today, Priority = TaskPriority.Medium },
        };

        foreach (var task in tasks)
        {
            var validationResults = new List<ValidationResult>();
            var context = new ValidationContext(task);

            var isValid = Validator.TryValidateObject(task, context, validationResults, true);
        
            Assert.True(isValid, $"Failed validation for Task with ID: {task.Id}");
        }
    }
}