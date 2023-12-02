namespace TaskManagementSystem.Tests.Data
{
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

            _userManagerMock.Setup(um => um.GetUserId(It.IsAny<ClaimsPrincipal>())).Returns("testUser");

            _taskController = new TaskController(_context, _userManagerMock.Object);
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
        public async Task Edit_ValidTaskId_TaskIsUpdated()
        {
            var tasks = new List<TaskPlanned>
            {
                new TaskPlanned { Id = 1, Title = "Original Title", Description = "Original description", UserId = "testUser" }
            };
            _context.TasksPlanned.AddRange(tasks);
            _context.SaveChanges();

            var updatedTask = new TaskPlanned { Id = 1, Title = "Updated Title", Description = "Updated description", UserId = "testUser" };

            var result = await _taskController.Edit(1, updatedTask);

            var redirectToActionResult = Assert.IsType<RedirectToActionResult>(result);
            Assert.Equal("Index", redirectToActionResult.ActionName);
            var taskInDb = _context.TasksPlanned.First(t => t.Id == 1);
            Assert.Equal("Updated Title", taskInDb.Title);
            Assert.Equal("Updated description", taskInDb.Description);
        }

        [Fact]
        public async Task Delete_ValidTaskId_TaskIsDeleted()
        {
            var task1 = new TaskPlanned 
            { 
                Id = 1, 
                UserId = "testUser", 
                Title = "Test Title 1", 
                Description = "Test Description 1", 
                Deadline = DateTime.Today, 
                Priority = TaskPriority.Critical 
            };

            var task2 = new TaskPlanned 
            { 
                Id = 2, 
                UserId = "testUser", 
                Title = "Test Title 2", 
                Description = "Test Description 2", 
                Deadline = DateTime.Today, 
                Priority = TaskPriority.High 
            };
            
            _context.TasksPlanned.Add(task1);
            _context.TasksPlanned.Add(task2);
            _context.SaveChanges();
            
            var result = await _taskController.Delete(1);
            
            var redirectToActionResult = Assert.IsType<RedirectToActionResult>(result);
            Assert.Equal("Index", redirectToActionResult.ActionName);
            Assert.Single(_context.TasksPlanned);
        }

        public void Dispose()
        {
            _context.Database.EnsureDeleted();
            _context.Dispose();
        }
    }
}
