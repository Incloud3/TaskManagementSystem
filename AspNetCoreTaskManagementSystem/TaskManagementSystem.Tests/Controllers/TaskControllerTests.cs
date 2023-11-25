namespace TaskManagementSystem.Tests.Controllers;

public class TaskControllerTests : IDisposable
{
    private readonly ApplicationDbContext _context;
    private readonly Mock<UserManager<IdentityUser>> _userManagerMock;
    private readonly TaskController _taskController;

    public TaskControllerTests()
    {
        var options = new DbContextOptionsBuilder<ApplicationDbContext>()
            .UseInMemoryDatabase(databaseName: $"TestDb{Guid.NewGuid()}").Options;

        _context = new ApplicationDbContext(options);
        _context.Database.EnsureCreated();

        var userStoreMock = new Mock<IUserStore<IdentityUser>>();
        _userManagerMock = new Mock<UserManager<IdentityUser>>(userStoreMock.Object, null, null, null, null, null, null, null, null);
        _taskController = new TaskController(_context, _userManagerMock.Object);
    }

    [Fact]
    public async Task Index_Returns_CorrectTasks()
    {
        string testUserId = "TestId";
        _userManagerMock.Setup(um => um.GetUserId(It.IsAny<ClaimsPrincipal>())).Returns(testUserId);

        var mockTasks = new List<TaskPlanned>
        {
            new TaskPlanned { Id = 1, UserId = testUserId, Title = "Task1", Description = "Description1", Priority = TaskPriority.High },
            new TaskPlanned { Id = 2, UserId = testUserId, Title = "Task2", Description = "Description2", Priority = TaskPriority.Low },
            new TaskPlanned { Id = 3, UserId = testUserId, Title = "Task3", Description = "Description3", Priority = TaskPriority.High },
            new TaskPlanned { Id = 4, UserId = testUserId, Title = "Task4", Description = "Description4", Priority = TaskPriority.Critical},
        };

        _context.TasksPlanned.AddRange(mockTasks);
        _context.SaveChanges();

        var result = await _taskController.Index() as ViewResult;
        var tasks = result.Model as List<TaskPlanned>;

        Assert.Equal(4, tasks.Count);
    }

    public void Dispose()
    {
        _context.Database.EnsureDeleted();
        _context.Dispose();
    }
}
