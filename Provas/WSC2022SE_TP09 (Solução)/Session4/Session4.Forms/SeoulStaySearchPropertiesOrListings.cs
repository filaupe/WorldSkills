using Microsoft.EntityFrameworkCore;
using Session4.Infra.Models;

namespace Session4.Forms;

public partial class SeoulStaySearchPropertiesOrListings : Form
{
    private readonly Session4Context _context;

    public SeoulStaySearchPropertiesOrListings()
    {
        InitializeComponent();

        _context = new();
    }

    private void SeoulStaySearchPropertiesOrListings_Load(object sender, EventArgs e)
    {
        List<SearchingViewModel> list = new();
        foreach (var item in _context.Items.ToList())
            list.Add(new SearchingViewModel(_context, item));

        foreach (var model in list)
        {
            decimal averageScore;

            var property = model.Item.Title;
            var area = model.Area?.Name;

            try
            {
                averageScore = model.Item.ItemScores.Sum(x => x.Value) / model.Item.ItemScores.Count;
            }
            catch
            {
                averageScore = 0;
            }

            var totalCompletedReservations = model.Item.Capacity;
            var amountPayable = model.Item.ItemPrices.Sum(x => x.Price);

            this.dataGridView1.Rows.Add(property,
                area, averageScore,
                totalCompletedReservations, $"R$ {amountPayable}");
        }
    }

    private void button1_Click(object sender, EventArgs e)
    {
        this.dataGridView1.Rows.Clear();
        var txt = this.textBox1.Text;
        List<SearchingViewModel> list = new();
        foreach (var item in _context.Items.ToList())
            list.Add(new SearchingViewModel(_context, item));

        foreach (var model in list)
        {
            decimal averageScore;

            var property = model.Item.Title;
            var area = model.Area?.Name;

            try
            {
                averageScore = model.Item.ItemScores.Sum(x => x.Value)/ model.Item.ItemScores.Count;
            }
            catch
            {
                averageScore = 0;
            }

            var totalCompletedReservations = model.Item.Capacity;
            var amountPayable = model.Item.ItemPrices.Sum(x => x.Price);

            this.dataGridView1.Rows.Add(property, 
                area, averageScore, 
                totalCompletedReservations, $"R$ {amountPayable}");
        }
    }
}
