using Microsoft.EntityFrameworkCore;
using MPT_01_SEv1.Forms.Models;

namespace MPT_01_SEv1.Forms;

public class AppDbContext : DbContext
{
    public DbSet<Department> Departments { get; set; }
    public DbSet<Employee> Employees { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlServer("Data Source=.\\FILAUPE;Initial Catalog=bdBrasilResort;Integrated Security=True;Encrypt=False;User ID=sa;Password=filaupe.123");
    }
}
