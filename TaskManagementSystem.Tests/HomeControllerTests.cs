using System;
using Xunit;
using Moq;
using Microsoft.Extensions.Logging;
using TaskManagementSystem.Controllers;
using TaskManagementSystem.Models;
using Microsoft.AspNetCore.Mvc;

namespace TaskManagementSystem.Tests;

public class HomeControllerTests
{
    private readonly Mock<ILogger<HomeController>> _loggerMock;
    private readonly HomeController _homeController;

    public HomeControllerTests()
    {
        _loggerMock = new Mock<ILogger<HomeController>>();
        _homeController = new HomeController(_loggerMock.Object);
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