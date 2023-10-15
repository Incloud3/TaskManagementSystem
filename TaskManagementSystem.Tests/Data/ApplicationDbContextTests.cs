using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TaskManagementSystem.Controllers;
using TaskManagementSystem.Models;
using TaskManagementSystem.Data;
using Moq;

namespace TaskManagementSystem.Tests.Data;

public class ApplicationDbContextTests : IDisposable
{
    private readonly ApplicationDbContext _context;
    private readonly Mock<UserManager<IdentityUser>> _userManagerMock;
    private readonly TaskController _taskController;

    public ApplicationDbContextTests()
    {
        var dbOptions = new DbContextOptionsBuilder<ApplicationDbContext>()
            .UseInMemoryDatabase(databaseName: Guid.NewGuid().ToString()).Options;

        _context = new ApplicationDbContext(dbOptions);
        _context.Database.EnsureCreated();
        
        var userStoreMock = new Mock<IUserStore<IdentityUser>>();
        _userManagerMock = new Mock<UserManager<IdentityUser>>(userStoreMock.Object, null, null, null, null, null, null, null, null);
    }

    [Fact]
    public void CanInsertTaskPlanned()
    {
        var task = new TaskPlanned
        {
            Title = "Test Title", Description = "Test description", Deadline = DateTime.Today,
            Priority = TaskPriority.Critical
        };
        var task2 = new TaskPlanned
        {
            Title = "Test Title", Description = "Test description", Deadline = DateTime.Today,
            Priority = TaskPriority.Critical
        };
        
        _context.TasksPlanned.Add(task);
        _context.TasksPlanned.Add(task2);
        _context.SaveChanges();
        
        Assert.Equal(2, _context.TasksPlanned.Count());
    }
    
    [Fact]
    public async Task Delete_ValidTaskId_TaskIsDeleted()
    {
        // Arrange
        var mockContext = new Mock<ApplicationDbContext>();
        var mockUserManager = new Mock<UserManager<IdentityUser>>();
        // ... (set up your mocks to return your test data and behave as expected)
        var tasks = new List<TaskPlanned>
        {
            new TaskPlanned { Id = 1, UserId = "testUser" },
            new TaskPlanned { Id = 2, UserId = "testUser" }
        };
        mockContext.Setup(m => m.TasksPlanned).ReturnsDbSet(tasks);
        var controller = new TaskController(mockContext.Object, mockUserManager.Object);

        // Act
        var result = await controller.Delete(1);

        // Assert
        var redirectToActionResult = Assert.IsType<RedirectToActionResult>(result);
        Assert.Equal("Index", redirectToActionResult.ActionName);
        Assert.Single(mockContext.Object.TasksPlanned); // Only one task should remain after deletion
    }
    
    public void Dispose()
    {
        _context.Database.EnsureDeleted();
        _context.Dispose();
    }
}