using Microsoft.AspNetCore.Mvc;

namespace TaskManagementSystem.Controllers;

public class StatusCodeController : Controller
{
    [Route("StatusCode/{id}")]
    public IActionResult Index(int id)
    {
        string viewName;
        switch (id)
        {
            case 403:
                viewName = "Forbidden";
                break;
            case 404:
                viewName = "NotFound";
                break;
            default:
                viewName = "Error";
                break;
        }

        return View(viewName);
    }
}