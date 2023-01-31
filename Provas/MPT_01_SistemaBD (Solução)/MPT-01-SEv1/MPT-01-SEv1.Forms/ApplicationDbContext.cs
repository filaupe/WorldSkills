using Microsoft.EntityFrameworkCore;
using MPT_01_SEv1.Forms.Models.Departments;
using MPT_01_SEv1.Forms.Models.Employees;

namespace MPT_01_SEv1.Forms;

public class ApplicationDbContext : DbContext
{
    public DbSet<Employee> Employees { get; set; }
    public DbSet<Department> Departments { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlServer("Data Source=.\\FILAUPE;Initial Catalog=filaupe;Integrated Security=True;Encrypt=False;User ID=sa;Password=filaupe.123");
    }
}
