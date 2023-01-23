using MeetTheStatup.ClassLibrary.Models.User.Enums;

namespace MeetTheStatup.ClassLibrary.Models.User;

public class UserModelPrincipal
{
    public UserModelPrincipal(string name, string login, string password, EUserType type, List<Image> images)
    {
        this.Name = name;
        this.Login = login;
        this.Password = password;
        this.Type = type;
        this.Images = new();
    }

    public string Name { get; }
    public string Login { get; }
    public string Password { get; }
    public List<Image> Images { get; }
    public EUserType Type { get; }
}
