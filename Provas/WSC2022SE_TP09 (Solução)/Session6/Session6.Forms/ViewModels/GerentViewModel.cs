using System;
using System.Collections.Generic;
using System.Linq;

namespace Session6.Forms.ViewModels
{
    public class GerentViewModel
    {
        private readonly Session6Entities _context;
        private readonly User _base;

        public GerentViewModel(Session6Entities context, User user)
        {
            _context = context;
            _base = user;

            this.User = _base;
        }

        public User User { get; }
        public List<Item> Item { get; } = new List<Item>();
        public List<ItemPrice> ItemPrices { get; } = new List<ItemPrice>();
        public List<Transaction> Transaction { get; } = new List<Transaction>();
    }
}
