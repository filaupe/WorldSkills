using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppBuscaSites
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
            TabbedPage tb = new TabbedPage();
            tb.Children.Add(new MainPage());
            tb.Children.Add(new Page1());
            tb.Children.Add(new Page2());
            MainPage = tb;
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
