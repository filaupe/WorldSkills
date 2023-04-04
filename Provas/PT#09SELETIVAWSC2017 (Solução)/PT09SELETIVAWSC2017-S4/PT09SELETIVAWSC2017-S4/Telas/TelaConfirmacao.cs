using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PT09SELETIVAWSC2017_S4.Telas
{
    public partial class TelaConfirmacao : Form
    {
        private readonly TripleDESCryptoServiceProvider _tripleDES;
        private readonly string _policy;
        public TelaConfirmacao()
        {
            InitializeComponent();
        }

        private void TelaConfirmacao_Load(object sender, EventArgs e)
        {
            var MD5Service = new MD5CryptoServiceProvider();
            var TipleDescService = new TripleDESCryptoServiceProvider();

            var mysecurityKey = "australia";
            var TextToDecrypt = File.ReadAllText("PoliticaHotel.txt");

            byte[] keyBytes = Encoding.UTF8.GetBytes(mysecurityKey);
            byte[] textBytes = Convert.FromBase64String(TextToDecrypt);

            byte[] KeyHashBytes = MD5Service.ComputeHash(keyBytes);

            TipleDescService.Key = KeyHashBytes;
            TipleDescService.Mode = CipherMode.ECB;
            TipleDescService.Padding = PaddingMode.PKCS7;

            var decrypter = TipleDescService.CreateDecryptor();

            byte[] resultBytesDecrypt = decrypter.TransformFinalBlock(textBytes, 0, textBytes.Length);

            string resultDecrypt = Encoding.UTF8.GetString(resultBytesDecrypt);
            
            var encrypter = TipleDescService.CreateEncryptor();

            var resultBytesEncrypt = encrypter.TransformFinalBlock(resultBytesDecrypt, 0, resultBytesDecrypt.Length);

            string resultEncrypt = Convert.ToBase64String(resultBytesEncrypt);

            MD5Service.Clear();
            TipleDescService.Clear();

            MessageBox.Show(resultEncrypt);
            MessageBox.Show(resultDecrypt);
        }
    }
}
