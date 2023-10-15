namespace TaskManagementSystem.Tests.Controllers;

public class HomeControllerTests
{
    private readonly Mock<ILogger<HomeController>> _loggerMock;
    private readonly HomeController _homeController;
    private readonly Mock<HttpContext> _httpContextMock;

    public HomeControllerTests()
    {
        _loggerMock = new Mock<ILogger<HomeController>>();
        _homeController = new HomeController(_loggerMock.Object);
        _httpContextMock = new Mock<HttpContext>();
        _httpContextMock.SetupGet(hc => hc.TraceIdentifier).Returns("TestTraceIdentifier");
        _homeController.ControllerContext = new ControllerContext
        {
            HttpContext = _httpContextMock.Object
        };
    }
    
    [Fact]
    public void Index_Returns_ViewResult()
    {
        var result = _homeController.Index();

        Assert.IsType<ViewResult>(result);
    }

    [Fact]
    public void Privacy_Returns_ViewResult()
    {
        var result = _homeController.Privacy();

        Assert.IsType<ViewResult>(result);
    }

    [Fact]
    public void Error_Returns_ViewResult()
    {
        var result = _homeController.Error() as ViewResult;

        Assert.IsType<ViewResult>(result);
        Assert.IsType<ErrorViewModel>(result.Model);
        Assert.NotNull((result.Model as ErrorViewModel).RequestId);
    }
}