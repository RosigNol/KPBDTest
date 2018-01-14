//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit18.h"
#include "Unit16.h"
#include "Unit15.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma link "sEdit"
#pragma link "sLabel"
#pragma resource "*.dfm"
TForm3 *Form3;
//---------------------------------------------------------------------------
__fastcall TForm3::TForm3(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm3::FormActivate(TObject *Sender)
{
	Form3->GridPanel1->Align=alClient;
	Form3->sEdit1->Text="������� ���� �������!";
	Form3->sEdit2->Text="������� ���� ���!";
	Form3->sEdit3->Text="������� ���� ��������!";
	Form3->sEdit4->Text="������� ���� ������!";
	Form3->sEdit5->Text="������� ��� ����� ������������� ������!";
	Form3->sLabel1->Caption="���� ������ ���������� �������� ��� �����������:";
	Form3->sButton1->Caption="���������������� ��������.";
	Form3->sButton2->Caption="�����.";
}
//---------------------------------------------------------------------------
void __fastcall TForm3::sButton1Click(TObject *Sender)
{
	if((Form3->sEdit1->Text.IsEmpty()) || (Form3->sEdit1->Text=="������� ���� �������!"))
   {
		ShowMessage("�� �� ��������� ���� '�������'!");
   }   else
	if((Form3->sEdit2->Text.IsEmpty()) || (Form3->sEdit2->Text=="������� ���� ���!"))
   {
		ShowMessage("�� �� ��������� ���� '���'!");
   }  else
   if((Form3->sEdit3->Text.IsEmpty()) || (Form3->sEdit3->Text=="������� ���� ��������!"))
   {
		ShowMessage("�� �� ��������� ���� '��������'!");
   }  else
   if((Form3->sEdit4->Text.IsEmpty()) || (Form3->sEdit4->Text=="������� ���� ������!"))
   {
		ShowMessage("�� �� ��������� ���� '������'!");
   } else
	if((Form3->sEdit5->Text.IsEmpty()) || (Form3->sEdit5->Text=="������� ��� ����� ������������� ������!"))
   {
		ShowMessage("�� �� ��������� ���� '����� ������������� ������'!");
   }  else
   {
	DataModule1->ADOQuery1->Close();
	DataModule1->ADOQuery1->SQL->Add("exec TransEnterStudent @fam=" + QuotedStr(Form3->sEdit1->Text)+
	",@name=" + QuotedStr(Form3->sEdit2->Text)+
	",@otch=" + QuotedStr(Form3->sEdit3->Text)+
	",@GroupSt=" + QuotedStr(Form3->sEdit4->Text)+
	",@NumberStudentTicket=" + QuotedStr(Form3->sEdit5->Text)+
	",@pr='Y';");
	DataModule1->ADOQuery1->ExecSQL();
	ShowMessage("�� ������� ������������������!\n"
	"������ �� ������ ���������� � ����������� ������!");
   }
}
//---------------------------------------------------------------------------
void __fastcall TForm3::sButton2Click(TObject *Sender)
{
   Form3->Hide();
   Form3->Close();
   Form1->Enabled=true;
}
//---------------------------------------------------------------------------
void __fastcall TForm3::FormCreate(TObject *Sender)
{
   Form3->GridPanel1->Align=alClient;
}
//---------------------------------------------------------------------------

void __fastcall TForm3::sEdit1Click(TObject *Sender)
{
	 Form3->sEdit1->Text=" ";
	if (Form3->sEdit2->Text==" ") {
	Form3->sEdit2->Text="������� ���� ���!";
	}
	if (Form3->sEdit3->Text==" ") {
	Form3->sEdit3->Text="������� ���� ��������!";
	}
	if (Form3->sEdit4->Text==" ") {
	Form3->sEdit4->Text="������� ���� ������!";
	}
	if (Form3->sEdit5->Text==" ") {
	Form3->sEdit5->Text="������� ��� ����� ������������� ������!";
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm3::sEdit2Click(TObject *Sender)
{
	   Form3->sEdit2->Text=" ";
	   if (Form3->sEdit1->Text==" ")
	   {
	Form3->sEdit1->Text="������� ���� �������!";
	   }
	   if (Form3->sEdit3->Text==" ")
	   {
	Form3->sEdit3->Text="������� ���� ��������!";
	   }
	   if (Form3->sEdit4->Text==" ")
	   {
	Form3->sEdit4->Text="������� ���� ������!";
	   }
	   if (Form3->sEdit5->Text==" ")
	   {
	Form3->sEdit5->Text="������� ��� ����� ������������� ������!";
	   }
}
//---------------------------------------------------------------------------

void __fastcall TForm3::sEdit3Click(TObject *Sender)
{
	   Form3->sEdit3->Text=" ";
	  if (Form3->sEdit1->Text==" ")
	   {
	Form3->sEdit1->Text="������� ���� �������!";
	   }
	   if (Form3->sEdit2->Text==" ")
	   {
	Form3->sEdit2->Text="������� ���� ���!";
	   }
	   if (Form3->sEdit4->Text==" ")
	   {
	Form3->sEdit4->Text="������� ���� ������!";
	   }
	   if (Form3->sEdit5->Text==" ")
	   {
	Form3->sEdit5->Text="������� ��� ����� ������������� ������!";
	   }
}
//---------------------------------------------------------------------------

void __fastcall TForm3::sEdit4Click(TObject *Sender)
{
	   Form3->sEdit4->Text=" ";
		if (Form3->sEdit1->Text==" ")
	   {
	Form3->sEdit1->Text="������� ���� �������!";
	   }
	   if (Form3->sEdit2->Text==" ")
	   {
	Form3->sEdit2->Text="������� ���� ���!";
	   }
	   if (Form3->sEdit3->Text==" ")
	   {
	Form3->sEdit3->Text="������� ���� ��������!";
	   }
	   if (Form3->sEdit5->Text==" ")
	   {
	Form3->sEdit5->Text="������� ��� ����� ������������� ������!";
	   }
}
//---------------------------------------------------------------------------

void __fastcall TForm3::sEdit5Click(TObject *Sender)
{
	   Form3->sEdit5->Text=" ";
	   	if (Form3->sEdit1->Text==" ")
	   {
	Form3->sEdit1->Text="������� ���� �������!";
	   }
	   if (Form3->sEdit2->Text==" ")
	   {
	Form3->sEdit2->Text="������� ���� ���!";
	   }
	   if (Form3->sEdit3->Text==" ")
	   {
	Form3->sEdit3->Text="������� ���� ��������!";
	   }
	   if (Form3->sEdit4->Text==" ")
	   {
	Form3->sEdit4->Text="������� ���� ������!";
	   }
}
//---------------------------------------------------------------------------

void __fastcall TForm3::FormClose(TObject *Sender, TCloseAction &Action)
{
   Form3->Hide();
   Form3->Close();
	Form1->Enabled=true;
}
//---------------------------------------------------------------------------

