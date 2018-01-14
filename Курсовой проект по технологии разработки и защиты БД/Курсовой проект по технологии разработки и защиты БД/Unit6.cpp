//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit6.h"
#include "Unit16.h"
#include "Unit15.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sLabel"
#pragma link "sPanel"
#pragma link "sButton"
#pragma link "sComboBox"
#pragma link "sRadioButton"
#pragma link "sCheckBox"
#pragma link "sEdit"
#pragma link "sPageControl"
#pragma link "frxADOComponents"
#pragma link "frxClass"
#pragma link "frxDBSet"
#pragma resource "*.dfm"
TForm6 *Form6;
String cWhere;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
__fastcall TForm6::TForm6(TComponent* Owner)
	: TForm(Owner)
{
}


//---------------------------------------------------------------------------
void ReopenQuery()
{
  cWhere= "";
  if (Form6->sComboBox1->Enabled==true)
  {
	 cWhere = "fam=" + QuotedStr(Form6->sComboBox1->Text);
  };
  if (Form6->sComboBox2->Enabled==true)
  {
  if (cWhere!="")
  {
	  cWhere= cWhere + " AND ";
  }
	cWhere="GroupSt="+ QuotedStr(Form6->sComboBox2->Text);
  };
  if (Form6->sComboBox3->Enabled==true)
  {
  if (cWhere!="")
  {
	  cWhere = cWhere + " AND ";
  }
	cWhere="NameDiscipline="+ QuotedStr(Form6->sComboBox3->Text);
  };
  if (Form6->DateTimePicker1->Enabled==true)
  {
   if (cWhere!="")
  {
	  cWhere = cWhere + " AND ";
  }
	cWhere="DateSt="+
	QuotedStr(DateToStr(Form6->DateTimePicker1->Date.FormatString("dd.mm.yyyy")));
  };
  DataModule1->ADOQuery1->SQL->Clear();
  if (cWhere!="")
  {
   DataModule1->ADOQuery1->SQL->Add("SELECT NumberResult as [����� ����������],"
   "fam as [�������], GroupSt as [������], ThemeName as [�������� ����], "
   "NameDiscipline as [�������� ����������], DateSt as [����],"
   "StartSt as [����� ������], "
   " FinishSt as [����� �����], Average as [���������� ����� (���.)], "
   "SumPoint as [����� ������], Mark as [������]"
   " FROM Results INNER JOIN"
   " Student ON Results.NumberStudent = Student.NumberStudent INNER JOIN"
   " Discipline ON Results.NumberDiscipline = Discipline.NumberDiscipline"
   " INNER JOIN Theme ON Results.NumberTheme = Theme.NumberTheme AND "
   "Results.NumberDiscipline = Theme.NumberDiscipline AND"
   " Discipline.NumberDiscipline = Theme.NumberDiscipline Where "+cWhere+ ";");
  }
  else
  {
	DataModule1->ADOQuery1->SQL->Add("SELECT NumberResult as [����� ����������],"
   "fam as [�������], GroupSt as [������], ThemeName as [�������� ����], "
   "NameDiscipline as [�������� ����������], DateSt as [����],"
   "StartSt as [����� ������], "
   " FinishSt as [����� �����], Average as [���������� ����� (���.)], "
   "SumPoint as [����� ������], Mark as [������]"
   " FROM Results INNER JOIN"
   " Student ON Results.NumberStudent = Student.NumberStudent INNER JOIN"
   " Discipline ON Results.NumberDiscipline = Discipline.NumberDiscipline"
   " INNER JOIN Theme ON Results.NumberTheme = Theme.NumberTheme AND "
   "Results.NumberDiscipline = Theme.NumberDiscipline AND"
   " Discipline.NumberDiscipline = Theme.NumberDiscipline");
  }
  DataModule1->ADOQuery1->Open();
}
//---------------------------------------------------------------------------
void __fastcall TForm6::FormActivate(TObject *Sender)
{
   Form6->sButton6->Caption="����� �� �������� ������ � ����������.";
   Form6->sButton4->Caption="����� �� ��������� �������� � �����.";
   Form6->sComboBox8->Text="�������� ����������!";
   Form6->sComboBox9->Text="�������� ����!";
   Form6->sLabel4->Caption="���������� ����������!";
   Form6->sEdit1->Text="������� �������� ����������!";
   Form6->sButton3->Caption="������ ������.";
   Form6->sLabel5->Caption="���������� ����!";
   Form6->sEdit2->Text="������� �������� ����!";
   Form6->sComboBox7->Text="�������� ����������!";
   Form6->sButton5->Caption="������ ������.";
   Form6->sLabel6->Caption="���������� ������ �� ������!";
   Form6->sEdit3->Text="������� ����� ������!";
   Form6->sButton7->Caption="������ ������.";
   Form6->sCheckBox5->Caption="����� ����������?";
   Form6->sComboBox6->Text="�������� ������ � �������� ��������� ���� �����.";
   Form6->sLabel7->Caption="���������� �������!";
   Form6->sEdit4->Text="������� ����� �������!";
   Form6->sButton10->Caption="������ ������.";
   Form6->sComboBox4->Text="�������� ����������!";
   Form6->sComboBox5->Text="�������� ����!";
   Form6->sLabel8->Caption="��������� ��������� ������. ������� ����� ������ ��� ������ 5:";
   Form6->sEdit5->Text="������� ����� ������ ��� ������ 5!";
   Form6->sEdit5->Text="������� ����� ������ ��� ������ 5!";
   Form6->sButton8->Caption="�������� �������� ������";
   Form6->sButton9->Caption="�������� ������ ������";
   DataModule1->ADOQuery1->Close();
   DataModule1->ADOQuery1->SQL->Clear();
   DataModule1->ADOQuery1->SQL->Add("Select fam, name, otch from Teacher"
   " Where login="+ QuotedStr(Form1->sEdit3->Text)+ " and password=" +
   QuotedStr(Form1->sEdit4->Text)+";");
   DataModule1->ADOQuery1->Open();
   Form6->sLabel2->Caption="����� ����������: "+
   DataModule1->ADOQuery1->FieldByName("fam")->AsString+" "+
   DataModule1->ADOQuery1->FieldByName("name")->AsString+" "+
   DataModule1->ADOQuery1->FieldByName("otch")->AsString+"!";
   Form6->sLabel1->Caption="�������� ����������� ������������: ";
   Form6->sCheckBox1->Caption ="�� ����.";
   Form6->sCheckBox2->Caption="�� ���������.";
   Form6->sCheckBox3->Caption="�� ������.";
   Form6->sCheckBox4->Caption="�� ����������.";
   Form6->sComboBox1->Text="�������!";
   Form6->sComboBox2->Text="������!";
   Form6->sComboBox3->Text="����������!";
   DataModule1->ADOQuery1->Close();
   DataModule1->ADOQuery1->SQL->Clear();
   DataModule1->ADOQuery1->SQL->Add("Select fam, GroupSt from Student;");
   DataModule1->ADOQuery1->Open();
   DataModule1->ADOQuery1->First();
   //////////////////////////////////////////////////////////////////
   for (int i=0; i < DataModule1->ADOQuery1->RecordCount; i++)
   {
	  Form6->sComboBox1->Items->Add(DataModule1->ADOQuery1->FieldByName("fam")->AsString);
	  DataModule1->ADOQuery1->Next();
   }
   DataModule1->ADOQuery1->First();
   for (int i=0; i < DataModule1->ADOQuery1->RecordCount; i++)
   {
	  Form6->sComboBox2->Items->Add(DataModule1->ADOQuery1->FieldByName("GroupSt")->AsString);
	  DataModule1->ADOQuery1->Next();
   }
   /////////////////////////////////////////////////////////////////����������
   DataModule1->ADOQuery1->Close();
   DataModule1->ADOQuery1->SQL->Clear();
   DataModule1->ADOQuery1->SQL->Add("Select NameDiscipline From Discipline;");
   DataModule1->ADOQuery1->Open();
   DataModule1->ADOQuery1->First();
   for (int i=0; i < DataModule1->ADOQuery1->RecordCount; i++)
   {
	  Form6->sComboBox3->Items->Add(DataModule1->ADOQuery1->FieldByName("NameDiscipline")->AsString);
	  DataModule1->ADOQuery1->Next();
   }
   DataModule1->ADOQuery1->First();
    for (int i=0; i < DataModule1->ADOQuery1->RecordCount; i++)
   {
	  Form6->sComboBox7->Items->Add(DataModule1->ADOQuery1->FieldByName("NameDiscipline")->AsString);
	  DataModule1->ADOQuery1->Next();
   }
   DataModule1->ADOQuery1->First();
	for (int i=0; i < DataModule1->ADOQuery1->RecordCount; i++)
   {
	  Form6->sComboBox4->Items->Add(DataModule1->ADOQuery1->FieldByName("NameDiscipline")->AsString);
	  DataModule1->ADOQuery1->Next();
   }
   DataModule1->ADOQuery1->First();
	for (int i=0; i < DataModule1->ADOQuery1->RecordCount; i++)
   {
	  Form6->sComboBox8->Items->Add(DataModule1->ADOQuery1->FieldByName("NameDiscipline")->AsString);
	  DataModule1->ADOQuery1->Next();
   }
   Form6->sLabel3->Caption="������� ������� ����������� ���������!";
   Form6->sButton1->Caption="�������� ���������.";
   Form6->sButton2->Caption="������� ����.";
   DataModule1->ADOQuery1->Close();
   DataModule1->ADOQuery1->SQL->Clear();
   DataModule1->ADOQuery1->SQL->Add("SELECT NumberResult as [����� ����������],"
   "fam as [�������], GroupSt as [������], ThemeName as [�������� ����], "
   "NameDiscipline as [�������� ����������], DateSt as [����],"
   "StartSt as [����� ������], "
   " FinishSt as [����� �����], Average as [���������� ����� (���.)], "
   "SumPoint as [����� ������], Mark as [������]"
   " FROM Results INNER JOIN"
   " Student ON Results.NumberStudent = Student.NumberStudent INNER JOIN"
   " Discipline ON Results.NumberDiscipline = Discipline.NumberDiscipline"
   " INNER JOIN Theme ON Results.NumberTheme = Theme.NumberTheme AND "
   "Results.NumberDiscipline = Theme.NumberDiscipline AND"
   " Discipline.NumberDiscipline = Theme.NumberDiscipline");
   DataModule1->ADOQuery1->Open();
   DataModule1->ADOQuery2->Close();
   DataModule1->ADOQuery2->SQL->Clear();
   DataModule1->ADOQuery2->SQL->Add("Select NumberStudent as [����� ��������], "
   "fam as [�������], name as [���], otch as [��������],"
   "GroupSt as [������], NumberStudentTicket[����� ���������������]"
   "From Student");
   DataModule1->ADOQuery2->Open();
   Form6->DBGrid2->Options<<dgMultiSelect;
   DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Add("Select Formulation From Question Where "
   "NameDiscipline=" +QuotedStr(Form6->sComboBox8->Text)+ " and "+
   "ThemeName="+ QuotedStr(Form6->sComboBox9->Text)+ ";");
}
//---------------------------------------------------------------------------
void __fastcall TForm6::sCheckBox1Click(TObject *Sender)
{
   if (Form6->sCheckBox1->Checked==true)
   {
	 Form6->DateTimePicker1->Enabled=true;
	 ReopenQuery();
	 DataModule1->ADOQuery1->Filtered=true;
   }
   else
   {
	 Form6->DateTimePicker1->Date=Date();
	 Form6->DateTimePicker1->Enabled=false;
	 ReopenQuery();
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sCheckBox2Click(TObject *Sender)
{
   if (Form6->sCheckBox2->Checked==true)
   {
	 Form6->sComboBox1->Enabled=true;
   }
   else
   {
	 Form6->sComboBox1->Text="�������!";
	 Form6->sComboBox1->Enabled=false;
	 ReopenQuery();
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sCheckBox3Click(TObject *Sender)
{
  if (Form6->sCheckBox3->Checked==true)
   {
	 Form6->sComboBox2->Enabled=true;
   }
   else
   {
	 Form6->sComboBox2->Text="������!";
	 Form6->sComboBox2->Enabled=false;
	 ReopenQuery();
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sCheckBox4Click(TObject *Sender)
{
   if (Form6->sCheckBox4->Checked==true)
   {
	 Form6->sComboBox3->Enabled=true;
   }
   else
   {
	 Form6->sComboBox3->Text="����������!";
	 Form6->sComboBox3->Enabled=false;
	 ReopenQuery();
   }
}
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------

//---------------------------------------------------------------------------

void __fastcall TForm6::sComboBox1Change(TObject *Sender)
{
	ReopenQuery();
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sComboBox2Change(TObject *Sender)
{
	ReopenQuery();
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sComboBox3Change(TObject *Sender)
{
	ReopenQuery();
}
//---------------------------------------------------------------------------

void __fastcall TForm6::DateTimePicker1Change(TObject *Sender)
{
	ReopenQuery();
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sButton3Click(TObject *Sender)
{
  DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Add("Select NameDiscipline From Discipline;");
   DataModule1->ADOQuery3->Open();
   if (DataModule1->ADOQuery3->IsEmpty()) {
	DataModule1->ADOQuery3->Close();
  DataModule1->ADOQuery3->SQL->Clear();
  DataModule1->ADOQuery3->SQL->Text=("Insert Into Discipline (NumberDiscipline,"
  " NameDiscipline) Values (1, "
   + QuotedStr(Form6->sEdit1->Text) + ");");
  DataModule1->ADOQuery3->ExecSQL();
   }
   else
   {
  DataModule1->ADOQuery3->Close();
  DataModule1->ADOQuery3->SQL->Clear();
  DataModule1->ADOQuery3->SQL->Text=("Insert Into Discipline (NumberDiscipline,"
  " NameDiscipline) Values ((Select MAX(NumberDiscipline) From Discipline)+1, "
   + QuotedStr(Form6->sEdit1->Text) + ");");
  DataModule1->ADOQuery3->ExecSQL();
   }
  DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Add("Select NameDiscipline From Discipline;");
   DataModule1->ADOQuery3->Open();
   sComboBox7->Items->Clear();
   for (int i=0; i < DataModule1->ADOQuery3->RecordCount; i++)
   {
	  Form6->sComboBox7->Items->Add(DataModule1->ADOQuery3->FieldByName("NameDiscipline")->AsString);
	  DataModule1->ADOQuery3->Next();
   }
   Form6->sEdit1->Text="";
   ShowMessage("���������� ��������� �������!");
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sButton5Click(TObject *Sender)
{
  DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Add("Select ThemeName From Theme"
   " INNER JOIN Discipline ON Theme.NumberDiscipline = "
   "Discipline.NumberDiscipline Where NameDiscipline="+
   QuotedStr(Form6->sComboBox7->Text)+ ";");
   DataModule1->ADOQuery3->Open();
   if (DataModule1->ADOQuery3->IsEmpty()) {
   DataModule1->ADOQuery3->Close();
  DataModule1->ADOQuery3->SQL->Clear();
  DataModule1->ADOQuery3->SQL->Text=("Insert Into Theme (NumberDiscipline,"
  " NumberTheme, ThemeName) Values ((Select NumberDiscipline From Discipline"
  " where NameDiscipline="+ QuotedStr(Form6->sComboBox7->Text)+
  "), 1, "+
  QuotedStr(Form6->sEdit2->Text)+");");
  DataModule1->ADOQuery3->ExecSQL();
   }
   else
   {
  DataModule1->ADOQuery3->Close();
  DataModule1->ADOQuery3->SQL->Clear();
  DataModule1->ADOQuery3->SQL->Text=("Insert Into Theme (NumberDiscipline,"
  " NumberTheme, ThemeName) Values ((Select NumberDiscipline From Discipline"
  " where NameDiscipline="+ QuotedStr(Form6->sComboBox7->Text)+
  "), (Select MAX(NumberTheme) From Theme)+1, "+
  QuotedStr(Form6->sEdit2->Text)+");");
  DataModule1->ADOQuery3->ExecSQL();
   }
  DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Add("Select NameDiscipline From Discipline;");
   DataModule1->ADOQuery3->Open();
   sComboBox4->Items->Clear();
   for (int i=0; i < DataModule1->ADOQuery3->RecordCount; i++)
   {
	  Form6->sComboBox4->Items->Add(DataModule1->ADOQuery3->FieldByName("NameDiscipline")->AsString);
	  DataModule1->ADOQuery3->Next();
   }
   Form6->sEdit2->Text="";
  ShowMessage("���� ��������� �������!");
}
//---------------------------------------------------------------------------


void __fastcall TForm6::sComboBox8Change(TObject *Sender)
{
   Form6->sComboBox9->Enabled=true;
   DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Add("Select ThemeName From Theme"
   " INNER JOIN Discipline ON Theme.NumberDiscipline = "
   "Discipline.NumberDiscipline Where NameDiscipline="+
   QuotedStr(Form6->sComboBox8->Text)+ ";");
   DataModule1->ADOQuery3->Open();
   sComboBox9->Items->Clear();
   for (int i=0; i < DataModule1->ADOQuery3->RecordCount; i++)
   {
	  Form6->sComboBox9->Items->Add(DataModule1->ADOQuery3->FieldByName("ThemeName")->AsString);
	  DataModule1->ADOQuery3->Next();
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sComboBox4Change(TObject *Sender)
{
   Form6->sComboBox5->Enabled=true;
   DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Add("Select ThemeName From Theme"
   " INNER JOIN Discipline ON Theme.NumberDiscipline = "
   "Discipline.NumberDiscipline Where NameDiscipline="+
   QuotedStr(Form6->sComboBox4->Text)+ ";");
   DataModule1->ADOQuery3->Open();
   sComboBox5->Items->Clear();
   for (int i=0; i < DataModule1->ADOQuery3->RecordCount; i++)
   {
	  Form6->sComboBox5->Items->Add(DataModule1->ADOQuery3->FieldByName("ThemeName")->AsString);
	  DataModule1->ADOQuery3->Next();
   }
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

void __fastcall TForm6::sComboBox9Change(TObject *Sender)
{
  Form6->sComboBox6->Enabled=true;
   DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Add("SELECT  Formulation"
" FROM         Question INNER JOIN "
"Theme ON Question.NumberTheme = Theme.NumberTheme AND "
"Question.NumberDiscipline = Theme.NumberDiscipline INNER JOIN "
"Discipline ON Theme.NumberDiscipline = Discipline.NumberDiscipline "
"Where NameDiscipline="+ QuotedStr(Form6->sComboBox8->Text)+
" and ThemeName="+ QuotedStr(Form6->sComboBox9->Text)+";");
   DataModule1->ADOQuery3->Open();
   sComboBox6->Items->Clear();
   for (int i=0; i < DataModule1->ADOQuery3->RecordCount; i++)
   {
	  Form6->sComboBox6->Items->Add(DataModule1->ADOQuery3->FieldByName("Formulation")->AsString);
	  DataModule1->ADOQuery3->Next();
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sButton10Click(TObject *Sender)
{
   DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Add("SELECT  Formulation"
" FROM         Question INNER JOIN "
"Theme ON Question.NumberTheme = Theme.NumberTheme AND "
"Question.NumberDiscipline = Theme.NumberDiscipline INNER JOIN "
"Discipline ON Theme.NumberDiscipline = Discipline.NumberDiscipline "
"Where NameDiscipline="+ QuotedStr(Form6->sComboBox4->Text)+
" and ThemeName="+ QuotedStr(Form6->sComboBox5->Text)+";");
   DataModule1->ADOQuery3->Open();
   if (DataModule1->ADOQuery3->IsEmpty()) {
   DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Add("Insert Into Question (Formulation,"
   " NumberDiscipline, NumberQuestion, NumberTheme)"
   "Values ("+ QuotedStr(Form6->sEdit4->Text)+ ", ("
   "Select NumberDiscipline From Discipline Where NameDiscipline="+
   QuotedStr(Form6->sComboBox4->Text)+"), "
   "1, (Select NumberTheme From Theme Where ThemeName="
   + QuotedStr(Form6->sComboBox5->Text)+"));");
   DataModule1->ADOQuery3->ExecSQL();
   }
   else
   {
   DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Add("Insert Into Question (Formulation,"
   " NumberDiscipline, NumberQuestion, NumberTheme)"
   "Values ("+ QuotedStr(Form6->sEdit4->Text)+ ", ("
   "Select NumberDiscipline From Discipline Where NameDiscipline="+
   QuotedStr(Form6->sComboBox4->Text)+"), (Select Max(NumberQuestion) From "
   "Question)+1, (Select NumberTheme From Theme Where ThemeName="
   + QuotedStr(Form6->sComboBox5->Text)+"));");
   DataModule1->ADOQuery3->ExecSQL();
   }
   Form6->sEdit4->Text="";
   ShowMessage("������ �������� �������!");
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sButton1Click(TObject *Sender)
{
  if (MessageDlg("�� �������, ��� ������ ������� ������ ?", mtConfirmation,TMsgDlgButtons() << mbYes << mbNo, 0) == mrYes)
  {
	 DataModule1->ADOQuery2->Delete();
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sButton2Click(TObject *Sender)
{
  DataModule1->ADOQuery2->Close();
  DataModule1->ADOQuery2->SQL->Clear();
  DataModule1->ADOQuery2->SQL->Text="Delete From Student";
  DataModule1->ADOQuery2->ExecSQL();
}
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------


void __fastcall TForm6::sButton4Click(TObject *Sender)
{
   Form6->frxReport1->ShowReport();
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sButton6Click(TObject *Sender)
{
   Form6->frxReport2->ShowReport();
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sButton7Click(TObject *Sender)
{
   DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Text=("Insert Into Answers (NumberAnswer, "
   " NumberDiscipline, NumberQuestion, NumberTheme, VariousAnswer)"
   " Values ((Select Count(NumberAnswer) From Answers)+1, "
   "(Select NumberDiscipline From Discipline Where NameDiscipline="+
   QuotedStr(Form6->sComboBox8->Text)+ "), (Select NumberQuestion From "
   "Question Where Formulation="+ QuotedStr(Form6->sComboBox6->Text)+
   "), (Select NumberTheme From Theme Where ThemeName=" +
   QuotedStr(Form6->sComboBox9->Text)+"), "+ QuotedStr(Form6->sEdit3->Text)+
   ");");
   DataModule1->ADOQuery3->ExecSQL();
   if (Form6->sCheckBox5->Checked==true)
   {
   DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Text=("Update Question Set "
   "TrueNumberAnswer=(Select Max(NumberAnswer) From Answers) "
   "Where NumberQuestion=(Select NumberQuestion From "
   "Question Where Formulation="+ QuotedStr(Form6->sComboBox6->Text)+");");
   DataModule1->ADOQuery3->ExecSQL();
   }
   DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Text=("Update Question Set"
   " Point=(Select MaxPoint From Marks Where Mark='5')/"
   " (Select Count(NumberQuestion) FROM         Question INNER JOIN"
   " Theme ON Question.NumberTheme = Theme.NumberTheme AND "
   " Question.NumberDiscipline = Theme.NumberDiscipline INNER JOIN "
   "Discipline ON Theme.NumberDiscipline = Discipline.NumberDiscipline "
   " Where Question.NumberDiscipline=(Select NumberDiscipline From Discipline Where "
   "NameDiscipline="+ QuotedStr(Form6->sComboBox8->Text)+ ") and "
   "Question.NumberTheme=(Select NumberTheme From Theme Where ThemeName=" +
   QuotedStr(Form6->sComboBox9->Text)+") Group By NameDiscipline, ThemeName);");
   DataModule1->ADOQuery3->ExecSQL();
   Form6->sEdit3->Text="";
   ShowMessage("����� �������� �������!");
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sButton8Click(TObject *Sender)
{
   DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Add("Select * From Marks");
   DataModule1->ADOQuery3->Open();
   if (DataModule1->ADOQuery3->IsEmpty()) {
	  ShowMessage("����������� ������ �� �������!");
   } else
   {
  DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Text=("exec ������������_������ "
   "@num="+QuotedStr(IntToStr(StrToInt(Form6->sEdit5->Text)+1)));
   DataModule1->ADOQuery3->ExecSQL();
   DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Text=("Update Question Set"
   " Point="+QuotedStr((Form6->sEdit5->Text))+"/5");
   DataModule1->ADOQuery3->ExecSQL();
   DataModule1->ADOQuery4->Close();
   DataModule1->ADOQuery4->SQL->Clear();
   DataModule1->ADOQuery4->SQL->Add("Select * From Marks");
   DataModule1->ADOQuery4->Open();
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sTabSheet5Show(TObject *Sender)
{
   DataModule1->ADOQuery4->Close();
   DataModule1->ADOQuery4->SQL->Clear();
   DataModule1->ADOQuery4->SQL->Add("Select * From Marks");
   DataModule1->ADOQuery4->Open();
}
//---------------------------------------------------------------------------


void __fastcall TForm6::sTabSheet1Show(TObject *Sender)
{
   DataModule1->ADOQuery1->Close();
   DataModule1->ADOQuery1->SQL->Clear();
   DataModule1->ADOQuery1->SQL->Add("SELECT NumberResult as [����� ����������],"
   "fam as [�������], GroupSt as [������], ThemeName as [�������� ����], "
   "NameDiscipline as [�������� ����������], DateSt as [����],"
   "StartSt as [����� ������], "
   " FinishSt as [����� �����], Average as [���������� ����� (���.)], "
   "SumPoint as [����� ������], Mark as [������]"
   " FROM Results INNER JOIN"
   " Student ON Results.NumberStudent = Student.NumberStudent INNER JOIN"
   " Discipline ON Results.NumberDiscipline = Discipline.NumberDiscipline"
   " INNER JOIN Theme ON Results.NumberTheme = Theme.NumberTheme AND "
   "Results.NumberDiscipline = Theme.NumberDiscipline AND"
   " Discipline.NumberDiscipline = Theme.NumberDiscipline");
   DataModule1->ADOQuery1->Open();
}
//---------------------------------------------------------------------------



void __fastcall TForm6::FormCreate(TObject *Sender)
{
  Form6->GridPanel1->Align=alClient;
  Form6->GridPanel2->Align=alClient;
  Form6->GridPanel3->Align=alClient;
  Form6->GridPanel4->Align=alClient;
  Form6->GridPanel5->Align=alClient;
}
//---------------------------------------------------------------------------

void __fastcall TForm6::N1Click(TObject *Sender)
{
   sPageControl1->ActivePageIndex=0;
}
//---------------------------------------------------------------------------

void __fastcall TForm6::N2Click(TObject *Sender)
{
	sPageControl1->ActivePageIndex=1;
}
//---------------------------------------------------------------------------

void __fastcall TForm6::N3Click(TObject *Sender)
{
	sPageControl1->ActivePageIndex=2;
}
//---------------------------------------------------------------------------

void __fastcall TForm6::N4Click(TObject *Sender)
{
   sPageControl1->ActivePageIndex=3;
}
//---------------------------------------------------------------------------

void __fastcall TForm6::N5Click(TObject *Sender)
{
   sPageControl1->ActivePageIndex=4;
}
//---------------------------------------------------------------------------

void __fastcall TForm6::N6Click(TObject *Sender)
{
   sPageControl1->ActivePageIndex=5;
}
//---------------------------------------------------------------------------

void __fastcall TForm6::N7Click(TObject *Sender)
{
  Form6->Hide();
  Form6->Close();
  Form1->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sEdit1Click(TObject *Sender)
{
   Form6->sEdit1->Text="";
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sEdit2Click(TObject *Sender)
{
   Form6->sEdit2->Text="";
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sEdit4Click(TObject *Sender)
{
   Form6->sEdit4->Text="";
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sEdit3Click(TObject *Sender)
{
   Form6->sEdit3->Text="";
}
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------

void __fastcall TForm6::sEdit5Click(TObject *Sender)
{
   Form6->sEdit5->Text="";
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sComboBox5Change(TObject *Sender)
{
    Form6->sEdit4->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sComboBox6Change(TObject *Sender)
{
   Form6->sEdit3->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sComboBox7Change(TObject *Sender)
{
  Form6->sEdit2->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sButton9Click(TObject *Sender)
{
  DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Text=("exec ������������_������1 "
   "@num="+QuotedStr(IntToStr(StrToInt(Form6->sEdit6->Text)+1)));
   DataModule1->ADOQuery3->ExecSQL();
   DataModule1->ADOQuery3->Close();
   DataModule1->ADOQuery3->SQL->Clear();
   DataModule1->ADOQuery3->SQL->Text=("Update Question Set"
   " Point="+QuotedStr((Form6->sEdit6->Text))+"/5");
   DataModule1->ADOQuery3->ExecSQL();
   DataModule1->ADOQuery4->Close();
   DataModule1->ADOQuery4->SQL->Clear();
   DataModule1->ADOQuery4->SQL->Add("Select * From Marks");
   DataModule1->ADOQuery4->Open();
}
//---------------------------------------------------------------------------

void __fastcall TForm6::FormClose(TObject *Sender, TCloseAction &Action)
{
  Form6->Hide();
  Form6->Close();
  Form1->Enabled=true;
}
//---------------------------------------------------------------------------

