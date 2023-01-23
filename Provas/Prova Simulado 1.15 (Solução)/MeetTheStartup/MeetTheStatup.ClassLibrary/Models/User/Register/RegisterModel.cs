using MeetTheStatup.ClassLibrary.Models.User.Enums;
using System.ComponentModel.DataAnnotations;

namespace MeetTheStatup.ClassLibrary.Models.User.Register;

public class RegisterModel
{
    public RegisterModel(string name, string login, string password, EUserType type = EUserType.USER)
    {
        Name = name;
        Login = login;
        Password = password;
        Type = type;
    }

    public string Name { get; set; }
    public string Login { get; set; }
    public string Password { get; set; }
    public EUserType Type { get; set; }
}

