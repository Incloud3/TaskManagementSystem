using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Prometheus;
using TaskManagementSystem.Data;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
var connectionString = builder.Configuration.GetConnectionString("DefaultConnection") ??
                       throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");

builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseMySql(connectionString,
        new MySqlServerVersion(new Version(8, 0, 35))));
builder.Services.AddDatabaseDeveloperPageExceptionFilter();

builder.Services.AddDefaultIdentity<IdentityUser>(options => options.SignIn.RequireConfirmedAccount = false)
    .AddEntityFrameworkStores<ApplicationDbContext>();
builder.Services.AddControllersWithViews();

var app = builder.Build();

bool dbConnected = false;
int retryCount = 0;
int maxRetries = 10; // Set maximum number of retries

while (!dbConnected && retryCount < maxRetries)
{
    try
    {
        using (var scope = app.Services.CreateScope())
        {
            var services = scope.ServiceProvider;
            var context = services.GetRequiredService<ApplicationDbContext>();
            context.Database.OpenConnection(); // Attempt to open a connection
            context.Database.CloseConnection();
            dbConnected = true; // Successful connection
        }
    }
    catch (Exception ex)
    {
        retryCount++;
        Console.WriteLine($"Attempt {retryCount}: Unable to connect to MySQL - {ex.Message}");
        Thread.Sleep(5000); // Wait for 5 seconds before retrying
    }
}

if (!dbConnected)
{
    throw new InvalidOperationException("Failed to connect to MySQL after multiple attempts.");
}

// Apply migrations
using (var scope = app.Services.CreateScope())
{
    var services = scope.ServiceProvider;
    var context = services.GetRequiredService<ApplicationDbContext>();
    context.Database.Migrate();
}

app.UseDeveloperExceptionPage();

app.UseHttpMetrics();
app.MapMetrics();
// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseMigrationsEndPoint();
}
else
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();
app.UseAuthentication();
app.UseAuthorization();

app.UseStatusCodePagesWithReExecute("/StatusCode/{0}");

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");
app.MapRazorPages();

app.Run();