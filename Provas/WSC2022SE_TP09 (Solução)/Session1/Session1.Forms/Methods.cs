using Session1.Infra.Models;
using System.Windows.Forms;

namespace Session1.Forms;

public class Methods
{
    public User createUser(Guid guid, string username, string password, string retypePassword, string fullName,
    bool gender, DateTime birthDate, int familyCount, bool acceptTerms)
    {
        if (String.IsNullOrWhiteSpace(username))
            throw new Exception("the field username needs to be filled");
        if (String.IsNullOrWhiteSpace(fullName))
            throw new Exception("the field full name needs to be filled");
        if (String.IsNullOrWhiteSpace(password))
            throw new Exception("the field password needs to be filled");
        if (String.IsNullOrWhiteSpace(retypePassword))
            throw new Exception("the field needs retype password to be filled");
        if (familyCount == 0)
            throw new Exception("Add you family members count");
        if (!acceptTerms)
            throw new Exception("You need to accept the terms to create an account ");
        if (password.Length < 5)
            throw new Exception("Password field don't have five or more chracters");
        if (password != retypePassword)
            throw new Exception("The field password and retype password not match");

        return new()
        {
            GUID = guid,
            Username = username,
            Password = password,
            FullName = fullName,
            Gender = gender,
            BirthDate = birthDate,
            FamilyCount = familyCount,
        };
    }
}
