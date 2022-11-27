using System;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.ComponentModel;
using AppBuscaSites.Models;
using Newtonsoft.Json;
using System.Net.Http;
using System.Text;

namespace AppBuscaSites.ViewModels
{
    public sealed partial class MainPageViewModel : ObservableObject
    {
        [ObservableProperty]
        [NotifyPropertyChangedFor(nameof(Url))]
        private string websiteUrl;

        [ObservableProperty]
        [NotifyPropertyChangedFor(nameof(Url))]
        private string id;

        [ObservableProperty]
        [NotifyPropertyChangedFor(nameof(Url))]
        private string source;

        [ObservableProperty]
        [NotifyPropertyChangedFor(nameof(Url))]
        private string medium;

        [ObservableProperty]
        [NotifyPropertyChangedFor(nameof(Url))]
        private string name;

        [ObservableProperty]
        [NotifyPropertyChangedFor(nameof(Url))]
        private string term;

        [ObservableProperty]
        [NotifyPropertyChangedFor(nameof(Url))]
        private string content;

        public string Url
        {
            get
            {
                try
                {
                    return "";
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
        }

        [RelayCommand]
        private async Task CopyToClipboard()
        {
            await Clipboard.SetTextAsync(Url);
            await Application.Current.MainPage
                .DisplayAlert(
                    "Copied!!!",
                    "URL copied to clipboard",
                    "OK");
        }
    }
}
