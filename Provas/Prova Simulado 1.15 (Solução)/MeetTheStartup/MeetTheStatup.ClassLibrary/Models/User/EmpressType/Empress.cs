using MeetTheStatup.ClassLibrary.Models.User.Enums;

namespace MeetTheStatup.ClassLibrary.Models.User.EmpressType;

public class Empress : UserModelPrincipal
{
    public Empress(string name, string login, string password, EUserType type, List<Image> images) 
        : base(name, login, password, type, images)
    {

    }
}
