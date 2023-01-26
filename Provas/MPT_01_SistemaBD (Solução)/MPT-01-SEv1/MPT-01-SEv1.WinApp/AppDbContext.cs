using Microsoft.EntityFrameworkCore;

namespace MPT_01_SEv1.WinApp;

public class AppDbContext : DbContext
{
    public DbSet<Modelos.Funcionario.Model> Funcionarios { get; set; }
    public DbSet<Modelos.Departamento.Model> Departamentos { get; set; }
    
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlServer(@"Data Source=.\WORLDSKILLSP1;Initial Catalog=bdBrasilResort;Encrypt=False;User ID=sa;Password=oc.2013");
    }
}
