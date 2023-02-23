using MPT_01_SEv2.Forms.Enums;
using System.Linq;
using System;
using System.Windows.Forms;
using System.Collections.Generic;
using MPT_01_SEv2.Forms.Database;
using System.Data.Entity;

namespace MPT_01_SEv2.Forms.Telas.TipoTela
{
    public partial class FormComPaginacao : Form
    {
        public int _skip;
        public int _take;

        public int _min;
        public int _max;

        public IQueryable<object> _list;

        public FormComPaginacao()
        {
            _skip = 0;
            _min = 0;
        }

        public void BtnFirstPage_Click(object sender, EventArgs e) => this.AcaoDoBotao(EBtnPageActions.PRIMEIRO);
        public void BtnLastPage_Click(object sender, EventArgs e) => this.AcaoDoBotao(EBtnPageActions.ULTIMO);
        public void BtnPreviousPage_Click(object sender, EventArgs e) => this.AcaoDoBotao(EBtnPageActions.ANTERIOR);
        public void BtnNextPage_Click(object sender, EventArgs e) => this.AcaoDoBotao(EBtnPageActions.PROXIMO);

        public bool VerificarPaginaMaximo() => this._skip < _max;
        public bool VerificarPaginaMinimo() => this._skip > _min;

        public virtual void AcaoDoBotao(EBtnPageActions action)
        {
            switch (action)
            {
                case EBtnPageActions.PROXIMO:
                    this._skip = this._skip >= _max ? _max : this._skip + 1;
                    break;
                case EBtnPageActions.ANTERIOR:
                    this._skip = this._skip <= 0 ? 0 : this._skip - 1;
                    break;
                case EBtnPageActions.PRIMEIRO:
                    this._skip = _min;
                    break;
                case EBtnPageActions.ULTIMO: 
                    this._skip = _max; 
                    break;
                default: 
                    throw new NotImplementedException();
            }
        }
    }
}
