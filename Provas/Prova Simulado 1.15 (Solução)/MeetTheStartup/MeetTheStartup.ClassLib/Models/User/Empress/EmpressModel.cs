using MeetTheStartup.ClassLib.Models.User.Empress.Visits;

namespace MeetTheStartup.ClassLib.Models.User.Empress;

public class EmpressModel : UserPrincipalModel
{
    public required string FantasyName { get; set; }

    public List<VisitModelEmpress> Vists { get; set; } = new();
}
