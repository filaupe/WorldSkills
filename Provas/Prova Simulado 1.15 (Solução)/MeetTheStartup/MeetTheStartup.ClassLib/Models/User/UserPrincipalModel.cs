using MeetTheStartup.ClassLib.enums;

namespace MeetTheStartup.ClassLib.Models.User;

public class UserPrincipalModel
{
    public required string Name { get; set;}
    public required string Login { get; set;}
    public required string Password { get; set;}
    public EUserType Type { get; set;}
    public List<Image> Images { get; set; } = new();
}
