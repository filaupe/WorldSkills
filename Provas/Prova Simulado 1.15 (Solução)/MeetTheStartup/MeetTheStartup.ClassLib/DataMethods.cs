using MeetTheStartup.ClassLib.Models.User.Empress;
using MeetTheStartup.ClassLib.Models.User.User;

namespace MeetTheStartup.ClassLib;

public static class DataMethods
{
    public static bool Login(List<UserModel> users, string login, string password)
        => users.Any(x => x.Login == login && x.Password == password);
    public static bool Login(List<EmpressModel> users, string name, string password, string fantasyName)
        => users.Any(x => x.Name == name && x.Password == password && x.FantasyName == fantasyName);
}
