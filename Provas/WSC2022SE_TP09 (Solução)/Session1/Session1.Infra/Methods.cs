using Session1.Infra.Models;

namespace Session1.Infra;

public class Methods
{
    public User createUser(Guid guid, string username, string password, string retypePassword, string fullName,
    bool gender, DateTime birthDate, int familyCount, bool acceptTerms)
    {
        if (String.IsNullOrWhiteSpace(username))
            throw new InvalidDataException("the field username needs to be filled");
        if (String.IsNullOrWhiteSpace(fullName))
            throw new InvalidDataException("the field full name needs to be filled");
        if (String.IsNullOrWhiteSpace(password))
            throw new InvalidDataException("the field password needs to be filled");
        if (String.IsNullOrWhiteSpace(retypePassword))
            throw new InvalidDataException("the field needs retype password to be filled");
        if (familyCount == 0)
            throw new InvalidDataException("Add you family members count");
        if (!acceptTerms)
            throw new InvalidDataException("You need to accept the terms to create an account ");
        if (password.Length < 5)
            throw new InvalidDataException("Password field don't have five or more chracters");
        if (password != retypePassword)
            throw new InvalidDataException("The field password and retype password not match");

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
