using AppBuscaSites.Models;
using AppBuscaSites.Services;
using System;
using System.Linq;
using Xamarin.Forms;

namespace AppBuscaSites
{
    public partial class MainPage : ContentPage
    {
        GameScoreApi api;

        public MainPage()
        {
            InitializeComponent();
            api = new GameScoreApi();
        }

        private async void SearchSites_TextChanged(object sender, TextChangedEventArgs e)
        {
            var lista = await api.GetHighScores();
            ListaSites.ItemsSource = lista.Where(s => s.game.ToLower().Contains(SearchSites.Text.ToLower())).Select(c => c.game);
        }

        private async void ContentPage_Appearing(object sender, EventArgs e)
        {
            var lista = await api.GetHighScores();
            ListaSites.ItemsSource = lista.Select(c => c.game);
        }
    }
}
