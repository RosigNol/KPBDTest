//---------------------------------------------------------------------------

#ifndef Unit6H
#define Unit6H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "sLabel.hpp"
#include "sPanel.hpp"
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
#include "sButton.hpp"
#include "sComboBox.hpp"
#include "sRadioButton.hpp"
#include <Vcl.ComCtrls.hpp>
#include "sCheckBox.hpp"
#include <Vcl.DBGrids.hpp>
#include "sEdit.hpp"
#include "sPageControl.hpp"
#include "frxADOComponents.hpp"
#include "frxClass.hpp"
#include "frxDBSet.hpp"
#include <Vcl.Menus.hpp>
//---------------------------------------------------------------------------
class TForm6 : public TForm
{
__published:	// IDE-managed Components
	TsPanel *sPanel1;
	TsLabel *sLabel1;
	TDateTimePicker *DateTimePicker1;
	TsComboBox *sComboBox1;
	TsComboBox *sComboBox2;
	TsComboBox *sComboBox3;
	TsPanel *sPanel2;
	TsLabel *sLabel3;
	TsButton *sButton1;
	TsButton *sButton2;
	TsCheckBox *sCheckBox1;
	TsCheckBox *sCheckBox2;
	TsCheckBox *sCheckBox3;
	TsCheckBox *sCheckBox4;
	TDBGrid *DBGrid1;
	TDBGrid *DBGrid2;
	TsPageControl *sPageControl1;
	TsTabSheet *sTabSheet1;
	TsTabSheet *sTabSheet2;
	TsTabSheet *sTabSheet3;
	TsTabSheet *sTabSheet4;
	TsPanel *sPanel3;
	TsPanel *sPanel4;
	TsPanel *sPanel5;
	TsLabel *sLabel4;
	TsEdit *sEdit1;
	TsButton *sButton3;
	TsLabel *sLabel5;
	TsEdit *sEdit2;
	TsButton *sButton5;
	TsPanel *sPanel6;
	TsLabel *sLabel6;
	TsEdit *sEdit3;
	TsCheckBox *sCheckBox5;
	TsButton *sButton7;
	TsLabel *sLabel7;
	TsEdit *sEdit4;
	TsButton *sButton10;
	TsComboBox *sComboBox4;
	TsComboBox *sComboBox5;
	TsComboBox *sComboBox6;
	TsComboBox *sComboBox7;
	TsComboBox *sComboBox8;
	TsComboBox *sComboBox9;
	TsTabSheet *sTabSheet5;
	TsTabSheet *sTabSheet6;
	TsButton *sButton4;
	TsButton *sButton6;
	TsPanel *sPanel7;
	TsPanel *sPanel8;
	TsLabel *sLabel8;
	TsEdit *sEdit5;
	TsPanel *sPanel9;
	TsButton *sButton8;
	TDBGrid *DBGrid3;
	TGridPanel *GridPanel1;
	TGridPanel *GridPanel2;
	TGridPanel *GridPanel3;
	TGridPanel *GridPanel4;
	TGridPanel *GridPanel5;
	TsLabel *sLabel2;
	TMainMenu *MainMenu1;
	TMenuItem *G1;
	TMenuItem *N1;
	TMenuItem *N2;
	TMenuItem *N3;
	TMenuItem *N4;
	TMenuItem *N5;
	TMenuItem *N6;
	TMenuItem *N7;
	TfrxReport *frxReport1;
	TfrxReport *frxReport2;
	TsLabel *sLabel9;
	TsLabel *sLabel10;
	TsEdit *sEdit6;
	TsButton *sButton9;
	void __fastcall FormActivate(TObject *Sender);
	void __fastcall sCheckBox1Click(TObject *Sender);
	void __fastcall sCheckBox2Click(TObject *Sender);
	void __fastcall sCheckBox3Click(TObject *Sender);
	void __fastcall sCheckBox4Click(TObject *Sender);
	void __fastcall sComboBox1Change(TObject *Sender);
	void __fastcall sComboBox2Change(TObject *Sender);
	void __fastcall sComboBox3Change(TObject *Sender);
	void __fastcall DateTimePicker1Change(TObject *Sender);
	void __fastcall sButton3Click(TObject *Sender);
	void __fastcall sButton5Click(TObject *Sender);
	void __fastcall sComboBox8Change(TObject *Sender);
	void __fastcall sComboBox4Change(TObject *Sender);
	void __fastcall sComboBox9Change(TObject *Sender);
	void __fastcall sButton10Click(TObject *Sender);
	void __fastcall sButton1Click(TObject *Sender);
	void __fastcall sButton2Click(TObject *Sender);
	void __fastcall sButton4Click(TObject *Sender);
	void __fastcall sButton6Click(TObject *Sender);
	void __fastcall sButton7Click(TObject *Sender);
	void __fastcall sButton8Click(TObject *Sender);
	void __fastcall sTabSheet5Show(TObject *Sender);
	void __fastcall sTabSheet1Show(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall N1Click(TObject *Sender);
	void __fastcall N2Click(TObject *Sender);
	void __fastcall N3Click(TObject *Sender);
	void __fastcall N4Click(TObject *Sender);
	void __fastcall N5Click(TObject *Sender);
	void __fastcall N6Click(TObject *Sender);
	void __fastcall N7Click(TObject *Sender);
	void __fastcall sEdit1Click(TObject *Sender);
	void __fastcall sEdit2Click(TObject *Sender);
	void __fastcall sEdit4Click(TObject *Sender);
	void __fastcall sEdit3Click(TObject *Sender);
	void __fastcall sEdit5Click(TObject *Sender);
	void __fastcall sComboBox5Change(TObject *Sender);
	void __fastcall sComboBox6Change(TObject *Sender);
	void __fastcall sComboBox7Change(TObject *Sender);
	void __fastcall sButton9Click(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TForm6(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm6 *Form6;
//---------------------------------------------------------------------------
#endif
