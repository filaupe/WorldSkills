using Session1.Forms.Windows;
using Session1.Infra.Models;

namespace Session1.Forms;

internal static class Program
{
    private static readonly Session1Context _context = new();

    [STAThread]
    static void Main()
    {
        // To customize application configuration such as set high DPI settings or default font,
        // see https://aka.ms/applicationconfiguration.
        ApplicationConfiguration.Initialize();
        Application.Run(new SeoulStayLogin(_context));
    }
}