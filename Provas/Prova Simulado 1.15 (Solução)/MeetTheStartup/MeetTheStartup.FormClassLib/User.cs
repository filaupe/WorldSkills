namespace MeetTheStartup.FormClassLib;
public class User
{
    public string Name { get; set; }
    public string Password { get; set; }
    public List<Image> Images { get; set; }
    public EuserType Type { get; set; }

}
public class UserModel : User
{
    public string Login { get; set; }
    public List<UserVisit> Visits { get; set; }
}
public class EmpressModel : User
{
    public string FantasyName { get; set; }

    public List<Visit> Visits { get; set; }
}
public class Visit
{
    public string EmpressName { get; set; }
    public DateTime Date { get; set; }
    public int Vacancys { get; set; }
    public bool HaveWaitingList { get; set; }
    public List<UserModel> Participants { get; set; }
    public List<UserModel> WaitingList { get; set; }
}
public class UserVisit
{
    public string EmpressName { get; set; }
    public DateTime Hour { get; set; }
}

