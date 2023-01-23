using System.ComponentModel.DataAnnotations;

namespace MeetTheStatup.ClassLibrary.Models.User.Login;

public class LoginModel
{
    public required string Login { get; set; }
    public required string Password { get; set; }

    public bool Verify(List<UserModel> users)
        => users.Any(user => user.Login == this.Login && user.Password == this.Password);
}
