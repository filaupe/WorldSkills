using Session4.Infra.Models;

namespace Session4.Forms;

public class SearchingViewModel
{
    private readonly Session4Context _context;
    private readonly Item _base;

    public SearchingViewModel(Session4Context context, Item item)
    {
        _context = context;
        _base = item;

        this.ItemType = _context.ItemTypes.Find(_base.ItemTypeID)!;
        this.Area = _context.Areas.Find(_base.AreaID)!;

        _base.ItemPrices.ToList().AddRange(_context.ItemPrices.Where(x => x.ItemID == _base.ID));
        _base.ItemScores.ToList().AddRange(_context.ItemScores.Where(x => x.ItemID == _base.ID));

        _base.ItemAmenities.ToList().AddRange(_context.ItemAmenities.Where(x => x.ItemID == _base.ID));
        _base.ItemAttractions.ToList().AddRange(_context.ItemAttractions.Where(x => x.ItemID == _base.ID));

        foreach (var amenity in _context.Amenities.ToList())
            if (_base.ItemAmenities.Any(c => c.ID == amenity.ID))
                this.Amenities.Add(amenity);
        foreach (var attraction in _context.Attractions.ToList())
            if (_base.ItemAttractions.Any(c => c.ID == attraction.ID))
                this.Attractions.Add(attraction);
    }

    public Item Item { get => _base; }
    public ItemType ItemType { get; }
    public Area Area { get; }
    public List<Amenity> Amenities { get; } = new();
    public List<Attraction> Attractions { get; } = new();
}
