namespace WSC2019_TP09.Forms
{
    public class Class1 <TEntidade> 
        where TEntidade : class
    {
        public Session2Entities _context = new Session2Entities();

        public virtual TEntidade FillModel(TEntidade model) => model;
    }
} 
