//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit7.h"
#include "Unit16.h"
#include "Unit15.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma link "sEdit"
#pragma link "sLabel"
#pragma resource "*.dfm"
TForm7 *Form7;
//---------------------------------------------------------------------------
__fastcall TForm7::TForm7(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm7::FormActivate(TObject *Sender)
{
   Form7->GridPanel1->Align=alClient;
   Form7->sEdit1->Text="Введите Ваше имя!";
   Form7->sEdit2->Text="Введите Вашу фамилию!";
   Form7->sEdit3->Text="Введите Ваше отчество!";
   Form7->sEdit4->Text="Введите Ваш логин!";
   Form7->sEdit5->Text="Введите Ваш пароль!";
}
//---------------------------------------------------------------------------
void __fastcall TForm7::sEdit1Click(TObject *Sender)
{
   Form7->sEdit1->Text="";
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
void __fastcall TForm7::sEdit3Click(TObject *Sender)
{
   Form7->sEdit3->Text="";
}
//---------------------------------------------------------------------------
void __fastcall TForm7::sEdit4Click(TObject *Sender)
{
   Form7->sEdit4->Text="";
}
//---------------------------------------------------------------------------
void __fastcall TForm7::sEdit5Click(TObject *Sender)
{
   Form7->sEdit5->Text="";
}
//---------------------------------------------------------------------------
void __fastcall TForm7::sButton1Click(TObject *Sender)
{
	  DataModule1->ADOConnection1->Connected=false;
	  DataModule1->ADOConnection1->LoginPrompt=true;
	  if (DataModule1->ADOConnection1->LoginPrompt==true) {
	  DataModule1->ADOConnection1->Connected=true;
	  DataModule1->ADOQuery3->Close();
	  DataModule1->ADOQuery3->SQL->Clear();
	  DataModule1->ADOQuery3->SQL->Add("exec TransEnterTeacher"
	  " @name="+ QuotedStr(Form7->sEdit1->Text)+", @fam="
	  + QuotedStr(Form7->sEdit2->Text)+", @otch="
	  + QuotedStr(Form7->sEdit3->Text)+", @login="
	   + QuotedStr(Form7->sEdit4->Text)+", @password="
		+ QuotedStr(Form7->sEdit5->Text)+" ,@pr=Y;");
	  DataModule1->ADOQuery3->ExecSQL();
	  ShowMessage("Преподаватель успешно добавлен!");
	  }
	  else
	  {
	  DataModule1->ADOConnection1->Connected=true;
      }
}
//---------------------------------------------------------------------------
void __fastcall TForm7::sButton2Click(TObject *Sender)
{
   Form7->Hide();
   Form7->Close();
   Form1->Enabled=true;
}
//---------------------------------------------------------------------------
void __fastcall TForm7::FormClose(TObject *Sender, TCloseAction &Action)
{
  Form7->Hide();
   Form7->Close();
   Form1->Enabled=true;
}
//---------------------------------------------------------------------------
void __fastcall TForm7::FormCreate(TObject *Sender)
{
   Form7->GridPanel1->Align=alClient;
   Form7->sEdit1->Text="Введите Ваше имя!";
   Form7->sEdit2->Text="Введите Вашу фамилию!";
   Form7->sEdit3->Text="Введите Ваше отчество!";
   Form7->sEdit4->Text="Введите Ваш логин!";
   Form7->sEdit5->Text="Введите Ваш пароль!";
}
//---------------------------------------------------------------------------
void __fastcall TForm7::sEdit2Click(TObject *Sender)
{
	Form7->sEdit2->Text="";
}
//---------------------------------------------------------------------------
