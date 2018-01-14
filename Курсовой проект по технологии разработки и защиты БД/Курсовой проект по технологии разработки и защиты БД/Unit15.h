//---------------------------------------------------------------------------

#ifndef Unit15H
#define Unit15H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "sSkinManager.hpp"
#include "sButton.hpp"
#include "sEdit.hpp"
#include "sLabel.hpp"
#include "sPageControl.hpp"
#include "sPanel.hpp"
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Menus.hpp>
#include "frxDCtrl.hpp"
#include "ADOConEd.hpp"
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TsSkinManager *sSkinManager1;
	TsPageControl *sPageControl1;
	TsTabSheet *sTabSheet1;
	TsTabSheet *sTabSheet2;
	TsPanel *sPanel1;
	TsLabel *sLabel1;
	TsEdit *sEdit1;
	TsEdit *sEdit2;
	TsButton *sButton1;
	TsButton *sButton2;
	TsLabel *sLabel2;
	TsPanel *sPanel2;
	TsLabel *sLabel3;
	TsEdit *sEdit3;
	TsEdit *sEdit4;
	TsButton *sButton3;
	TsButton *sButton4;
	TsLabel *sLabel4;
	TImage *Image1;
	TImage *Image2;
	TsLabel *sLabel5;
	TfrxDialogControls *frxDialogControls1;
	TMainMenu *MainMenu1;
	TMenuItem *N1;
	TMenuItem *N2;
	TMenuItem *N3;
	TMenuItem *N4;
	TGridPanel *GridPanel1;
	void __fastcall sEdit1Click(TObject *Sender);
	void __fastcall sEdit2Click(TObject *Sender);
	void __fastcall sEdit3Click(TObject *Sender);
	void __fastcall sEdit4Click(TObject *Sender);
	void __fastcall sButton1Click(TObject *Sender);
	void __fastcall sButton2Click(TObject *Sender);
	void __fastcall sButton3Click(TObject *Sender);
	void __fastcall sButton4Click(TObject *Sender);
	void __fastcall N2Click(TObject *Sender);
	void __fastcall N3Click(TObject *Sender);
	void __fastcall N4Click(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall FormActivate(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
