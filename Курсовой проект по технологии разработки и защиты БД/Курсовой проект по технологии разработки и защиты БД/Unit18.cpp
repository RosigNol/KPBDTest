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
	Form3->sEdit1->Text="Введите Вашу фамилию!";
	Form3->sEdit2->Text="Введите Ваше имя!";
	Form3->sEdit3->Text="Введите Ваше отчество!";
	Form3->sEdit4->Text="Введите Вашу группу!";
	Form3->sEdit5->Text="Введите Ваш номер студенческого билета!";
	Form3->sLabel1->Caption="Ввод личной информации студента для регистрации:";
	Form3->sButton1->Caption="Зарегестрировать студента.";
	Form3->sButton2->Caption="Выход.";
}
//---------------------------------------------------------------------------
void __fastcall TForm3::sButton1Click(TObject *Sender)
{
	if((Form3->sEdit1->Text.IsEmpty()) || (Form3->sEdit1->Text=="Введите Вашу фамилию!"))
   {
		ShowMessage("Вы не заполнили поле 'Фамилия'!");
   }   else
	if((Form3->sEdit2->Text.IsEmpty()) || (Form3->sEdit2->Text=="Введите Ваше имя!"))
   {
		ShowMessage("Вы не заполнили поле 'Имя'!");
   }  else
   if((Form3->sEdit3->Text.IsEmpty()) || (Form3->sEdit3->Text=="Введите Ваше отчество!"))
   {
		ShowMessage("Вы не заполнили поле 'Отчество'!");
   }  else
   if((Form3->sEdit4->Text.IsEmpty()) || (Form3->sEdit4->Text=="Введите Вашу группу!"))
   {
		ShowMessage("Вы не заполнили поле 'Группа'!");
   } else
	if((Form3->sEdit5->Text.IsEmpty()) || (Form3->sEdit5->Text=="Введите Ваш номер студенческого билета!"))
   {
		ShowMessage("Вы не заполнили поле 'Номер студенческого билета'!");
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
	ShowMessage("Вы успешно зарегестрировались!\n"
	"Теперь Вы можете приступить к прохождению тестов!");
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
	Form3->sEdit2->Text="Введите Ваше имя!";
	}
	if (Form3->sEdit3->Text==" ") {
	Form3->sEdit3->Text="Введите Ваше отчество!";
	}
	if (Form3->sEdit4->Text==" ") {
	Form3->sEdit4->Text="Введите Вашу группу!";
	}
	if (Form3->sEdit5->Text==" ") {
	Form3->sEdit5->Text="Введите Ваш номер студенческого билета!";
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm3::sEdit2Click(TObject *Sender)
{
	   Form3->sEdit2->Text=" ";
	   if (Form3->sEdit1->Text==" ")
	   {
	Form3->sEdit1->Text="Введите Вашу фамилию!";
	   }
	   if (Form3->sEdit3->Text==" ")
	   {
	Form3->sEdit3->Text="Введите Ваше отчество!";
	   }
	   if (Form3->sEdit4->Text==" ")
	   {
	Form3->sEdit4->Text="Введите Вашу группу!";
	   }
	   if (Form3->sEdit5->Text==" ")
	   {
	Form3->sEdit5->Text="Введите Ваш номер студенческого билета!";
	   }
}
//---------------------------------------------------------------------------

void __fastcall TForm3::sEdit3Click(TObject *Sender)
{
	   Form3->sEdit3->Text=" ";
	  if (Form3->sEdit1->Text==" ")
	   {
	Form3->sEdit1->Text="Введите Вашу фамилию!";
	   }
	   if (Form3->sEdit2->Text==" ")
	   {
	Form3->sEdit2->Text="Введите Ваше имя!";
	   }
	   if (Form3->sEdit4->Text==" ")
	   {
	Form3->sEdit4->Text="Введите Вашу группу!";
	   }
	   if (Form3->sEdit5->Text==" ")
	   {
	Form3->sEdit5->Text="Введите Ваш номер студенческого билета!";
	   }
}
//---------------------------------------------------------------------------

void __fastcall TForm3::sEdit4Click(TObject *Sender)
{
	   Form3->sEdit4->Text=" ";
		if (Form3->sEdit1->Text==" ")
	   {
	Form3->sEdit1->Text="Введите Вашу фамилию!";
	   }
	   if (Form3->sEdit2->Text==" ")
	   {
	Form3->sEdit2->Text="Введите Ваше имя!";
	   }
	   if (Form3->sEdit3->Text==" ")
	   {
	Form3->sEdit3->Text="Введите Ваше отчество!";
	   }
	   if (Form3->sEdit5->Text==" ")
	   {
	Form3->sEdit5->Text="Введите Ваш номер студенческого билета!";
	   }
}
//---------------------------------------------------------------------------

void __fastcall TForm3::sEdit5Click(TObject *Sender)
{
	   Form3->sEdit5->Text=" ";
	   	if (Form3->sEdit1->Text==" ")
	   {
	Form3->sEdit1->Text="Введите Вашу фамилию!";
	   }
	   if (Form3->sEdit2->Text==" ")
	   {
	Form3->sEdit2->Text="Введите Ваше имя!";
	   }
	   if (Form3->sEdit3->Text==" ")
	   {
	Form3->sEdit3->Text="Введите Ваше отчество!";
	   }
	   if (Form3->sEdit4->Text==" ")
	   {
	Form3->sEdit4->Text="Введите Вашу группу!";
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

