namespace MeetTheStartup.FormClassLib;

public static class Methods
{
    private static Thread _t1 = null!;

    public static void OpenForm(this Form formPrincipal, Form form)
    {
        _t1 = new Thread(() => Application.Run(form));
        _t1.SetApartmentState(ApartmentState.STA);
        _t1.Start();

        formPrincipal.Close();
    }
}