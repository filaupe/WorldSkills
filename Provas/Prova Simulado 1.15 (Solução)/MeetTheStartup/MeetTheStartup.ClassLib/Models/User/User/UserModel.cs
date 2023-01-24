using MeetTheStartup.ClassLib.Models.User.Empress.Visits;

namespace MeetTheStartup.ClassLib.Models.User.User;

public class UserModel : UserPrincipalModel
{
    public List<VisitModelUser> Visits { get; set; } = new();
}
