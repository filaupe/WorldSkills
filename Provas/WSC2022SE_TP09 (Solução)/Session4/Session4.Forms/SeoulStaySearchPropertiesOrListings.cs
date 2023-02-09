using Session4.Infra.Models;

namespace Session4.Forms;

public partial class SeoulStaySearchPropertiesOrListings : Form
{
    private readonly Session4Context _context;
    private List<SearchingViewModel> _list = null!;

    public SeoulStaySearchPropertiesOrListings()
    {
        InitializeComponent();

        _context = new();
    }

    private void LoadList()
    {
        this.dataGridView1.Rows.Clear();
        foreach (var model in _list)
        {
            var property = model.Item.Title;
            var area = model.Area?.Name;
            var averageScore = model.Item.ItemScores.All(c => c.Value == 0) ? String.Empty : (model.Item.ItemScores.Sum(x => x.Value) / model.Item.ItemScores.Count).ToString();
            var totalCompletedReservations = model.Item.Capacity;
            var amountPayable = model.Item.ItemPrices.Sum(x => x.Price);

            this.dataGridView1.Rows.Add(property, area, averageScore, totalCompletedReservations, $"R$ {amountPayable}");
        }
    }
    private void LoadList(string txt, int capacity, int nights, DateTime date)
    {
        const StringComparison sc = StringComparison.InvariantCultureIgnoreCase;
        this.dataGridView1.Rows.Clear();
        foreach (var model in _list.Where(x
            => x.Area.Name.Contains(txt, sc) 
                || x.Item.Title.Contains(txt, sc)
                || x.ItemType.Name.Contains(txt, sc)
                || x.Attractions.Any(x => x.Name.Contains(txt, sc))
                || x.Amenities.Any(x => x.Name.Contains(txt, sc))
                || x.Item.Capacity == capacity
                || nights <= x.Item.MaximumNights && nights >= x.Item.MinimumNights
                || x.Item.ItemPrices.Any(x 
                    => x.Date.Year == date.Year
                        && x.Date.Month == date.Month
                        && x.Date.Day == date.Day)))
        {
            var property = model.Item.Title;
            var area = model.Area?.Name;
            var averageScore = model.Item.ItemScores.All(c => c.Value == 0) ? String.Empty 
                : (model.Item.ItemScores.Sum(x => x.Value) / model.Item.ItemScores.Count).ToString();
            var totalCompletedReservations = model.Item.Capacity;
            var amountPayable = model.Item.ItemPrices.Sum(x => x.Price);

            this.dataGridView1.Rows.Add(property, area, averageScore, totalCompletedReservations, $"R$ {amountPayable}");
        }
    }

    private void SeoulStaySearchPropertiesOrListings_Load(object sender, EventArgs e)
    {
        _list = new();
        foreach (var item in _context.Items.ToList())
            _list.Add(new SearchingViewModel(_context, item));

        this.LoadList();
    }

    private void button1_Click(object sender, EventArgs e)
    {
        this.dataGridView1.Rows.Clear();
        var txt = this.textBox1.Text;
        var date = this.dateTimePicker1.Value;
        string nights = this.textBox2.Text;
        string people = this.textBox3.Text;

        try
        {
            if (String.IsNullOrWhiteSpace(txt))
                this.LoadList();
            if (String.IsNullOrWhiteSpace(nights))
            { nights = "0"; }
            else if (int.Parse(nights) == 0)
                throw new Exception("Valores numéricos não podem ser iguais a zero");
            if (String.IsNullOrWhiteSpace(people))
            { people = "0"; }
            else if (int.Parse(people) == 0)
                throw new Exception("Valores numéricos não podem ser iguais a zero");
            if (DateTime.Now.Date.Year < date.Year
                && DateTime.Now.Date.Month < date.Month
                && DateTime.Now.Date.Day < date.Day)
                throw new Exception("A data de início não pode ser antes da data atual");
           this.LoadList(txt, int.Parse(people), int.Parse(nights), date);
        }
        catch (Exception ex)
        {
            MessageBox.Show(ex.Message);
        }
    }
}
