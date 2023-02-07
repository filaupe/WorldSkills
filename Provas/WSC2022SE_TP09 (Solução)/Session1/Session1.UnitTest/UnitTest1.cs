using Microsoft.SqlServer.Server;
using Session1.Infra;
using Session1.Infra.Models;
using System.Reflection;

namespace Session1.UnitTest;

[TestClass]
public class UnitTest1
{
    [TestMethod]
    public void CreateUser()
    {
        var guid = Guid.NewGuid();

        User esperado = new()
        {
            GUID = guid,
            Username = "Filaupe",
            Password = "filaupe.123",
            FullName = "Luiz Felipe",
            Gender = true,
            BirthDate = new DateTime(2004, 09, 14),
            FamilyCount = 4,
        };

        Methods m = new();

        var resultado = m.createUser(guid, "Filaupe", "filaupe.123", "filaupe.123", "Luiz Felipe", true, new DateTime(2004, 09, 14), 4, true);

        Assert.AreEqual(esperado.FullName, resultado?.FullName);
    }
    [TestMethod]
    [ExpectedException(typeof(InvalidDataException))]
    public void CreateUserFailFamilyCount()
    {
        var guid = Guid.NewGuid();

        User esperado = new()
        {
            GUID = guid,
            Username = "Filaupe",
            Password = "filaupe.123",
            FullName = "Luiz Felipe",
            Gender = true,
            BirthDate = new DateTime(2004, 09, 14),
            FamilyCount = 4,
        };

        Methods m = new();

        var resultado = m.createUser(guid, "Filaupe", "filaupe.123", "filaupe.123", "Luiz Felipe", true, new DateTime(2004, 09, 14), 0, true);

        Assert.AreEqual(esperado.FullName, resultado?.FullName);
    }
    [TestMethod]
    [ExpectedException(typeof(InvalidDataException))]
    public void CreateUserFailPassword()
    {
        var guid = Guid.NewGuid();

        User esperado = new()
        {
            GUID = guid,
            Username = "Filaupe",
            Password = "filaupe.123",
            FullName = "Luiz Felipe",
            Gender = true,
            BirthDate = new DateTime(2004, 09, 14),
            FamilyCount = 4,
        };

        Methods m = new();

        var resultado = m.createUser(guid, "Filaupe", "filaupe.1234", "filaupe.123", "Luiz Felipe", true, new DateTime(2004, 09, 14), 4, true);

        Assert.AreEqual(esperado.FullName, resultado?.FullName);
    }
    [TestMethod]
    [ExpectedException(typeof(InvalidDataException))]
    public void CreateUserFailAcceptTerms()
    {
        var guid = Guid.NewGuid();

        User esperado = new()
        {
            GUID = guid,
            Username = "Filaupe",
            Password = "filaupe.123",
            FullName = "Luiz Felipe",
            Gender = true,
            BirthDate = new DateTime(2004, 09, 14),
            FamilyCount = 4,
        };

        Methods m = new();

        var resultado = m.createUser(guid, "Filaupe", "filaupe.123", "filaupe.123", "Luiz Felipe", true, new DateTime(2004, 09, 14), 4, false);

        Assert.AreEqual(esperado.FullName, resultado?.FullName);
    }
}