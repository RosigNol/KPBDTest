//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit17.h"
#include "Unit15.h"
#include "Unit16.h"
#include "Unit4.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sLabel"
#pragma link "sPanel"
#pragma link "sButton"
#pragma link "sComboBox"
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
void __fastcall TForm2::sButton1Click(TObject *Sender)
{
  Form2->Hide();
  Form2->Close();
  Form1->Enabled=true;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::FormActivate(TObject *Sender)
{
   Form2->sComboBox2->Enabled=false;
   Form2->sLabel4->Caption="�������� (����������) � ��������:";
   DataModule1->ADOQuery1->Close();
   DataModule1->ADOQuery1->SQL->Clear();
   DataModule1->ADOQuery1->SQL->Add("Select * From Student Where Student.fam=" + QuotedStr(Form1->sEdit2->Text) +
   "and Student.NumberStudentTicket=" + QuotedStr(Form1->sEdit1->Text) + ";");
   DataModule1->ADOQuery1->Open();
   Form2->sLabel7->Caption="������� ��� �������� (���): "+
   DataModule1->ADOQuery1->FieldByName("fam")->AsString+ " "+
   DataModule1->ADOQuery1->FieldByName("name")->AsString+ " " +
   DataModule1->ADOQuery1->FieldByName("otch")->AsString+ "!";
   Form2->sLabel8->Caption="����� ������������� ������: "+
   DataModule1->ADOQuery1->FieldByName("NumberStudentTicket")->AsString+"!";
   Form2->sLabel9->Caption="����� ������: "+
   DataModule1->ADOQuery1->FieldByName("GroupSt")->AsString+ "!";
   Form2->sLabel10->Caption="����� ���������� � ���� ��� ������������:";
   Form2->sLabel11->Caption="�������� ����������:";
   Form2->sLabel12->Caption="�������� ����:";
   Form2->sButton2->Caption="������ ����!";
   DataModule1->ADOQuery1->Close();
   DataModule1->ADOQuery1->SQL->Clear();
   DataModule1->ADOQuery1->SQL->Add("Select * From Discipline;");
   DataModule1->ADOQuery1->Open();
   DataModule1->ADOQuery1->First();
   for (int i=0; i < DataModule1->ADOQuery1->RecordCount; i++)
   {
	  Form2->sComboBox1->Items->Add(DataModule1->ADOQuery1->FieldByName("NameDiscipline")->AsString);
	  DataModule1->ADOQuery1->Next();
   }
   if(DataModule1->ADOQuery1->IsEmpty())
   {
	  Form2->sComboBox1->Items->Add("���������� �����������!");
   }
}
//---------------------------------------------------------------------------
void __fastcall TForm2::sComboBox1Change(TObject *Sender)
{
   Form2->sComboBox2->Enabled=true;
   DataModule1->ADOQuery1->Close();
   DataModule1->ADOQuery1->SQL->Clear();
   DataModule1->ADOQuery1->SQL->Add("Select * From Theme Inner Join "
   " Discipline on Theme.NumberDiscipline= Discipline.NumberDiscipline"
   " Where NameDiscipline="+QuotedStr(Form2->sComboBox1->Text)+";");
   DataModule1->ADOQuery1->Open();
   DataModule1->ADOQuery1->First();
   sComboBox2->Items->Clear();
   for (int i=0; i < DataModule1->ADOQuery1->RecordCount; i++)
   {
	  Form2->sComboBox2->Items->Add(DataModule1->ADOQuery1->FieldByName("ThemeName")->AsString);
	  DataModule1->ADOQuery1->Next();
   }
   if(DataModule1->ADOQuery1->IsEmpty())
   {
	  Form2->sComboBox2->Items->Add("���� �����������!");
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm2::sButton2Click(TObject *Sender)
{
   DataModule1->ADOQuery1->Close();
   DataModule1->ADOQuery1->SQL->Clear();
   DataModule1->ADOQuery1->SQL->Text=("exec CountAndRand @themename="+
   QuotedStr(Form2->sComboBox2->Text)+", @Disciplinename="+
   QuotedStr(Form2->sComboBox1->Text)+";");
   DataModule1->ADOQuery1->Open();
   if((DataModule1->ADOQuery1->IsEmpty()) || (DataModule1->ADOQuery1->FieldByName("Rand1")->AsInteger==0))
   {
	   ShowMessage("��������, �� ������� �� �������� ���� ���� �����������! \n"
	   "�������� ������ ����.");
   }
   else
   {
  Form2->Hide();
  Form2->Close();
  Form4 = new TForm4(this);
  Form4->ShowModal();
   }
}
//---------------------------------------------------------------------------


void __fastcall TForm2::FormCreate(TObject *Sender)
{
   Form2->GridPanel1->Align=alClient;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::FormClose(TObject *Sender, TCloseAction &Action)
{
  Form2->Hide();
  Form2->Close();
  Form1->Enabled=true;
}
//---------------------------------------------------------------------------

