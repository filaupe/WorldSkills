using Session1.Infra.Models;

namespace Session1.Forms.ViewModels;

public class TravelerViewModel
{
    private readonly Session1Context _context;
    private readonly Item _base;

    public TravelerViewModel(Item item)
    {
        _context = new();
        _base = item;

        this.Id = _base.ID;
        this.Title = _base.Title;
        this.Capacity = _base.Capacity;
        this.Area = (_context.Areas.Find(_base.AreaID)!).Name;
        this.Type = (_context.ItemTypes.Find(_base.ItemTypeID)!).Name;
    }

    public long Id { get; }

    public string Title { get; }

    public int Capacity { get; }

    public string Area { get; }

    public string Type { get; }
}
