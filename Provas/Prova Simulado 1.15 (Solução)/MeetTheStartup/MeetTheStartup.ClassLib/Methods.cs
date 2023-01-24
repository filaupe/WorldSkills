namespace MeetTheStartup.ClassLib;

public static class Methods
{
    private static Thread _t1 = null!;

    public static void OpenForm(this Form thisForm, Form form)
    {
        _t1 = new Thread(() => Application.Run(form));
        _t1.SetApartmentState(ApartmentState.STA);
        _t1.Start();

        thisForm.Close();
    }

    public static void ShowForm(Form form)
    {

    }
}
