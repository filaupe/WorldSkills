using Session4.Infra.Models;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace Session4.Forms;

public partial class SeoulStaySearchPropertiesOrListings : Form
{
    private readonly Session4Context _context;
    private readonly List<SearchingViewModel> _list;
    private readonly AutoCompleteStringCollection _autoComplete;

    public SeoulStaySearchPropertiesOrListings()
    {
        InitializeComponent();

        _context = new();
        _list = new();
        _autoComplete = new();
    }

    private void LoadList()
    {
        this.dataGridView1.Rows.Clear();
        foreach (var model in _list)
        {
            var property = model.Item.Title;
            var area = model.Area?.Name;
            var averageScore = model.Item.ItemScores.All(c => c.Value == 0) ? string.Empty : (model.Item.ItemScores.Sum(x => x.Value) / model.Item.ItemScores.Count).ToString();
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
            var averageScore = model.Item.ItemScores.All(c => c.Value == 0) ? string.Empty 
                : (model.Item.ItemScores.Sum(x => x.Value) / model.Item.ItemScores.Count).ToString();
            var totalCompletedReservations = model.Item.Capacity;
            var amountPayable = model.Item.ItemPrices.Sum(x => x.Price);

            this.dataGridView1.Rows.Add(property, area, averageScore, totalCompletedReservations, $"R$ {amountPayable}");
        }
    }
    private void LoadList(long area, long attraction, long propertyTitle,
        DateTime before, DateTime after, int qtdNights, int qtdPeoples,
        decimal minPrice, decimal maxPrice, long propertyType, long amenity1,
        long amenity2, long amenity3)
    {
        this.dataGridView1.Rows.Clear();
        foreach (var model in _list.Where(x 
            => x.Item.AreaID == area
            && x.Area.Attractions.Any(c => c.ID == attraction)
            && x.Item.ID == propertyTitle
            && x.Item.Capacity == qtdPeoples
            && x.Item.MinimumNights < qtdNights 
            && x.Item.MaximumNights > qtdNights
            && x.Item.ItemPrices.Any(c => c.Price <= minPrice || c.Price <= maxPrice )
            && x.ItemType.ID == propertyType
            && x.Amenities.Any(c => c.ID == amenity1 || c.ID == amenity2 || c.ID == amenity3)))
        {
            var property = model.Item.Title;
            var areaName = model.Area?.Name;
            var averageScore = model.Item.ItemScores.All(c => c.Value == 0) ? string.Empty : (model.Item.ItemScores.Sum(x => x.Value) / model.Item.ItemScores.Count).ToString();
            var totalCompletedReservations = model.Item.Capacity;
            var amountPayable = model.Item.ItemPrices.Sum(x => x.Price);

            this.dataGridView1.Rows.Add(property, areaName, averageScore, totalCompletedReservations, $"R$ {amountPayable}");
        }
    }

    private void SeoulStaySearchPropertiesOrListings_Load(object sender, EventArgs e)
    {
        foreach (var item in _context.Items.ToList())
        {
            var model = new SearchingViewModel(_context, item);
            _list.Add(model);
            _autoComplete.Add(model.Item.Title);
            _autoComplete.Add(model.Area.Name);
            _autoComplete.Add(model.ItemType.Name);
            _autoComplete.AddRange(model.Attractions.Select(x => x.Name).ToArray());
            _autoComplete.AddRange(model.Amenities.Select(x => x.Name).ToArray());
        }

        textBox1.AutoCompleteMode = AutoCompleteMode.Suggest;
        textBox1.AutoCompleteSource = AutoCompleteSource.CustomSource;
        textBox1.AutoCompleteCustomSource = _autoComplete;

        this.LoadList();
        this.toolStripStatusLabel1.Text = $"Displaying {this.dataGridView1.RowCount} options";
    }

    private void button1_Click(object sender, EventArgs e) // melhorar
    { 
        this.dataGridView1.Rows.Clear();
        var txt = this.textBox1.Text;
        var date = this.dateTimePicker1.Value;
        string nights = this.textBox2.Text;
        string people = this.textBox3.Text;

        try
        {
            if (string.IsNullOrWhiteSpace(txt))
                this.LoadList();
            if (string.IsNullOrWhiteSpace(nights))
            { nights = "0"; }
            else if (int.Parse(nights) == 0)
                throw new Exception("Valores numéricos não podem ser iguais a zero");
            if (string.IsNullOrWhiteSpace(people))
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
        this.toolStripStatusLabel1.Text = $"Displaying {this.dataGridView1.RowCount} options";
    }

    private void button2_Click(object sender, EventArgs e)
    {
        using AdvancedSearchDiaolog dialog = new(_context);

        if (dialog.ShowDialog() == DialogResult.OK)
        {
            var area = (dialog.comboBox1.SelectedItem as Area)!.ID;
            var attraction = (dialog.comboBox4.SelectedItem as Attraction)!.ID;
            var propertyTitle = (dialog.comboBox5.SelectedItem as Item)!.ID;
            var propertyType = (dialog.comboBox3.SelectedItem as ItemType)!.ID;
            var amenity1 = (dialog.comboBox2.SelectedItem as Amenity)!.ID;
            var amenity2 = (dialog.comboBox8.SelectedItem as Amenity)!.ID;
            var amenity3 = (dialog.comboBox9.SelectedItem as Amenity)!.ID;
            var qtdNights = int.Parse(dialog.textBox1.Text);
            var qtdPeoples = int.Parse(dialog.textBox3.Text);
            var minPrice = decimal.Parse(dialog.textBox5.Text);
            var maxPrice = decimal.Parse(dialog.textBox4.Text);

            this.LoadList(area, attraction, propertyTitle, DateTime.Now, 
                DateTime.Now, qtdNights, qtdPeoples, minPrice, maxPrice,
                propertyType, amenity1, amenity2, amenity3);
        }
    }
}
