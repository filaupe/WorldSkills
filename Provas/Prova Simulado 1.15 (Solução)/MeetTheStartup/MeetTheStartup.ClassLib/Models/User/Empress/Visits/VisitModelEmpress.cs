using MeetTheStartup.ClassLib.Models.User.User;

namespace MeetTheStartup.ClassLib.Models.User.Empress.Visits;

public class VisitModelEmpress
{
    public required bool HaveWaitingList { get; set; }

    public required DateTime DateTime { get; set; }

    public required int Vacancys { get; set; }

    public List<UserModel> Participants { get; set; } = new();

    public List<UserModel>? WaitingList { get; set; } = null;
}
