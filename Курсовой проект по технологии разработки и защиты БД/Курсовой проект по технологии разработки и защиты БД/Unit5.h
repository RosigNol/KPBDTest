//---------------------------------------------------------------------------

#ifndef Unit5H
#define Unit5H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include "sButton.hpp"
#include "sLabel.hpp"
#include "sPanel.hpp"
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.StdCtrls.hpp>
#include "frxClass.hpp"
#include "frxADOComponents.hpp"
#include <string>
#include "sButton.hpp"
#include "sLabel.hpp"
#include "sPanel.hpp"
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <iostream>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "sButton.hpp"
#include "sLabel.hpp"
#include "sPanel.hpp"
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TForm5 : public TForm
{
__published:	// IDE-managed Components
	TsPanel *sPanel1;
	TsLabel *sLabel1;
	TsLabel *sLabel2;
	TsLabel *sLabel3;
	TsLabel *sLabel4;
	TsLabel *sLabel5;
	TsLabel *sLabel7;
	TsLabel *sLabel8;
	TsLabel *sLabel9;
	TsLabel *sLabel10;
	TsButton *sButton1;
	TsLabel *sLabel11;
	TsLabel *sLabel6;
	TsButton *sButton2;
	TGridPanel *GridPanel1;
	TfrxReport *frxReport1;
	void __fastcall FormActivate(TObject *Sender);
	void __fastcall sButton1Click(TObject *Sender);
	void __fastcall sButton2Click(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TForm5(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm5 *Form5;
//---------------------------------------------------------------------------
#endif
