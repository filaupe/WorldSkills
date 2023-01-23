using MeetTheStatup.ClassLibrary.Models.User.Enums;

namespace MeetTheStatup.ClassLibrary.Models.User;

public class UserModel
{
    public UserModel(string name, string login, string password, EUserType type)
    {
        this.Name = name;
        this.Login = login;
        this.Password = password;
        this.Type = type;
    }

    public string Name { get; }
    public string Login { get; }
    public string Password { get; }
    public EUserType Type { get; }
}
