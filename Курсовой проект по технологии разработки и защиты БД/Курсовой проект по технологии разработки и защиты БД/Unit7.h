//---------------------------------------------------------------------------

#ifndef Unit7H
#define Unit7H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "sButton.hpp"
#include "sEdit.hpp"
#include "sLabel.hpp"
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TForm7 : public TForm
{
__published:	// IDE-managed Components
	TsEdit *sEdit1;
	TsEdit *sEdit2;
	TsEdit *sEdit3;
	TsEdit *sEdit4;
	TsEdit *sEdit5;
	TsLabel *sLabel1;
	TsButton *sButton1;
	TsButton *sButton2;
	TGridPanel *GridPanel1;
	void __fastcall FormActivate(TObject *Sender);
	void __fastcall sEdit1Click(TObject *Sender);
	void __fastcall sEdit3Click(TObject *Sender);
	void __fastcall sEdit4Click(TObject *Sender);
	void __fastcall sEdit5Click(TObject *Sender);
	void __fastcall sButton1Click(TObject *Sender);
	void __fastcall sButton2Click(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall sEdit2Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm7(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm7 *Form7;
//---------------------------------------------------------------------------
#endif
