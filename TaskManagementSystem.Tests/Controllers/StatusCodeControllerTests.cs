using Xunit;
using TaskManagementSystem.Controllers;
using Microsoft.AspNetCore.Mvc;

namespace TaskManagementSystem.Tests;

public class StatusCodeControllerTests
{
    private readonly StatusCodeController _statusCodeController;

    public StatusCodeControllerTests()
    {
        _statusCodeController = new StatusCodeController();
    }

    [Theory]
    [InlineData(403, "Forbidden")]
    [InlineData(404, "NotFound")]
    [InlineData(401, "Error")]
    [InlineData(500, "Error")]
    public void Index_Returns_CorrectView_ForGivenStatusCode(int statusCode, string expectedViewName)
    {
        var result = _statusCodeController.Index(statusCode) as ViewResult;

        Assert.NotNull(result);
        Assert.Equal(expectedViewName, result.ViewName);
    }
}