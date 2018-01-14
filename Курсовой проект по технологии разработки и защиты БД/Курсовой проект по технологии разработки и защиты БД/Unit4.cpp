//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit4.h"
#include "Unit17.h"
#include "Unit16.h"
#include "Unit15.h"
#include "Unit5.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma link "sGroupBox"
#pragma link "sLabel"
#pragma link "sPanel"
#pragma link "sButton"
#pragma link "sGroupBox"
#pragma link "sLabel"
#pragma link "sPanel"
#pragma link "sButton"
#pragma link "sGroupBox"
#pragma link "sLabel"
#pragma link "sPanel"
#pragma resource "*.dfm"


TForm4 *Form4;
//---------------------------------------------------------------------------
struct Question {
	int number;
	struct Question *next;
};

int i=0;
int countall=0;
int rand1=0;
int rand2;
TDateTime myTime;
//int *mas;
int ball;
String sim1;
//int *masbuff;
//int kol_vo_buff=0;
String timestart;
struct Question *elem; /* ����� ������� */
struct Question *start=NULL; /* ������ ������ */
struct Question *last=NULL;
struct Question *prev=NULL;
//------------------------------------------------------------------------------
void
Del_list (struct Question *start)
{
  while (start!=NULL)  //���� �� ������ �� �����
     {
		Question *temp=start->next; //��������� ���������� ��� �������� ������ ���������� ��������
		delete start; //����������� ����� ������������ ������
		start=temp; //������ ����� �� ���������
	 }
}
//------------------------------------------------------------------------------
void CreateSp (struct Question *i, /* ����� ������� */
			   struct Question **start, /* ������ ������ */
			   struct Question **last) /* ����� ������ */
{
  struct Question *old, *p;
  p = *start;
  if(!*last)
  { /* ������ ������� � ������ */
	i->next = NULL;
	*last = i;
	*start = i;
	return;
  }
   old = NULL;
  while(p)
  {
	if(p->number != i->number)
	{
	  old = p;
	  p = p->next;
	}
  }
  (*last)->next = i; /* ������� � ����� */
  i->next = NULL;
  *last = i;
  }

//------------------------------------------------------------------------------
void display(struct Question *start)
{
  while(start) {
	ShowMessage(IntToStr(start->number));
	start = start->next;
  }
}
//------------------------------------------------------------------------------
int randomnum(
	 struct Question *start, /* ������ ������ */
	 int count)
{
   int *mas;
   int rand1;
   mas=(int*)malloc(count * sizeof(int));
   for (int z=0; z!= count; z++)
   {
	   mas[z]=start->number;
	   start = start->next;
   }
   Randomize();
   rand1=mas[random(count)];
   //ShowMessage(IntToStr(rand1));
   return rand1;
   delete []mas;
}
//--------------------------------------------------------------------------
void deletesp(
struct Question *p, /* ���������� ������� */
	 struct Question *i, /* ��������� ������� */
	 struct Question **start, /* ������ ������ */
	 struct Question **last) /* ����� ������ */
{
  if(p) p->next = i->next;
  else *start = i->next;
  if(i==*last && p) *last = p;
}
//---------------------------------------------------------------------------
__fastcall TForm4::TForm4(TComponent* Owner)
	: TForm(Owner)
{
   srand (time (NULL));
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
void __fastcall TForm4::sButton1Click(TObject *Sender)
{
   struct Question *prev=NULL;
   sim1="Y";
   DataModule1->ADOQuery1->Close();
   DataModule1->ADOQuery1->SQL->Clear();
   DataModule1->ADOQuery1->SQL->Text=("exec ����������_�������������_����������� "
   "@NumberAnswer="+ QuotedStr(Form4->sRadioGroup1->Items->Strings[Form4->sRadioGroup1->ItemIndex])+
   " , @NumberDiscipline="+ QuotedStr(Form2->sComboBox1->Text)+
   ", @NumberQuestion="+ rand1 +" , @NumberStudent= "
   + QuotedStr(Form1->sEdit2->Text)+
   " , @NumberTheme="+ QuotedStr(Form2->sComboBox2->Text)+" ,@pr= "+ QuotedStr(sim1)+";");
   DataModule1->ADOQuery1->ExecSQL();
   /*DataModule1->ADOStoredProc4->Parameters->ParamByName("@NumberAnswer")->Value=
   (Form4->sRadioGroup1->Items->Strings[Form4->sRadioGroup1->ItemIndex]);
   DataModule1->ADOStoredProc4->Parameters->ParamByName("@NumberDiscipline")->Value=
   (Form2->sComboBox1->Text);
   DataModule1->ADOStoredProc4->Parameters->ParamByName("@NumberQuestion")->Value=
   (rand1);
   DataModule1->ADOStoredProc4->Parameters->ParamByName("@NumberStudent")->Value=
   (Form1->sEdit2->Text);
   DataModule1->ADOStoredProc4->Parameters->ParamByName("@NumberTheme")->Value=
   (Form2->sComboBox2->Text);
   DataModule1->ADOStoredProc4->ExecProc();*/
   DataModule1->ADOStoredProc3->Parameters->ParamByName("@VariousAnswer")->Value=
   (Form4->sRadioGroup1->Items->Strings[Form4->sRadioGroup1->ItemIndex]);
   DataModule1->ADOStoredProc3->Parameters->ParamByName("@NumberQuestion")->Value=rand1;
   DataModule1->ADOStoredProc3->ExecProc();
   if (DataModule1->ADOStoredProc3->Parameters->ParamValues["@Symbol"]=="Y")
   {
	   ball=ball+DataModule1->ADOStoredProc3->Parameters->ParamByName("@ball")->Value;
	   //ShowMessage(IntToStr(ball));
   }
   if (countall!=0)
   {
   i++;
   Form4->sLabel5->Caption="������ � "+IntToStr(i)+".";
   //Randomize();
   //rand1=mas[random(countall)];
   //ShowMessage(IntToStr(rand1));
   rand1=randomnum(start,countall);
   for (int r=0;r!=countall;r++)
	{
		/*if(mas[r]==rand1)
		{
			for(int j=r;j<countall-1;j++)
			{
				mas[j]=mas[j+1];
			}
			countall--;
		}*/
		/*kol_vo_buff=0;
		masbuff=(int*)malloc((countall-1)*(sizeof(int)));
		for (int k=0; k < countall; k++)
		{
		   if (mas[k]!=rand1)
		   {
			  kol_vo_buff++;
			  masbuff[kol_vo_buff]==mas[k];
		   }
		} */
		struct Question *p;
		p=start;
		while(p)
		{
		   if(rand1 == p->number)
		   deletesp(prev, p, &start, &last);
		   prev=p;
		   p = p->next;
		}
	}
	//display(start);
	countall--;
	//delete []mas;
	//mas=masbuff;
	//delete []masbuff;
	 //for (int r=0;r!=countall;r++)
	//{
	   //ShowMessage(IntToStr(mas[r]));
	//}
   Form4->sRadioGroup1->Items->Clear();
   DataModule1->ADOQuery1->Close();
   DataModule1->ADOQuery1->SQL->Clear();
   DataModule1->ADOQuery1->SQL->Text=("exec SelectAnswers @number="+QuotedStr(IntToStr(rand1))+";");
   DataModule1->ADOQuery1->Open();
   Form4->sLabel3->Caption=DataModule1->ADOQuery1->FieldByName("Formulation")->AsString;
   for (int j=0; j < DataModule1->ADOQuery1->RecordCount; j++)
   {
	  Form4->sRadioGroup1->Items->Add(DataModule1->ADOQuery1->FieldByName("VariousAnswer")->AsString);
	  DataModule1->ADOQuery1->Next();
   }
  }
  else
  {
	 i=0;
	 Del_list(start);
	 start=NULL; /* ������ ������ */
	 last=NULL;
	 prev=NULL;
	 countall=0;
	 rand1=0;
	 Form4->Hide();
	 Form5 = new TForm5(this);
	 Form5->ShowModal();
  }
}

//---------------------------------------------------------------------------

void __fastcall TForm4::FormShow(TObject *Sender)
{

Form4->BorderStyle=bsNone;
Form4->WindowState=wsMaximized;

if (Form2->sComboBox1->Text=="���������������� �� Delphi") {
Graphics::TBitmap *ptBitmap;
   ptBitmap=new Graphics::TBitmap();
   TResourceStream* ptRes =
   new TResourceStream((int)HInstance, "Bitmap_1",L"RT_BITMAP");
   ptBitmap->LoadFromStream(ptRes);
   Image1->Picture->Assign((TPersistent*)ptBitmap);
   ////////////////////////////////////////////////////////////////
   Graphics::TBitmap *ptBitmap1;
   ptBitmap1=new Graphics::TBitmap();
   TResourceStream* ptRes1 =
   new TResourceStream((int)HInstance, "Bitmap_1",L"RT_BITMAP");
   ptBitmap1->LoadFromStream(ptRes1);

}
if (Form2->sComboBox1->Text=="������ Access") {
Graphics::TBitmap *ptBitmap;
   ptBitmap=new Graphics::TBitmap();
   TResourceStream* ptRes =
   new TResourceStream((int)HInstance, "Bitmap_2",L"RT_BITMAP");
   ptBitmap->LoadFromStream(ptRes);
   Image1->Picture->Assign((TPersistent*)ptBitmap);
   ////////////////////////////////////////////////////////////////
   Graphics::TBitmap *ptBitmap1;
   ptBitmap1=new Graphics::TBitmap();
   TResourceStream* ptRes1 =
   new TResourceStream((int)HInstance, "Bitmap_2",L"RT_BITMAP");
   ptBitmap1->LoadFromStream(ptRes1);

}
if (Form2->sComboBox1->Text=="������ �++") {
Graphics::TBitmap *ptBitmap;
   ptBitmap=new Graphics::TBitmap();
   TResourceStream* ptRes =
   new TResourceStream((int)HInstance, "Bitmap_3",L"RT_BITMAP");
   ptBitmap->LoadFromStream(ptRes);
   Image1->Picture->Assign((TPersistent*)ptBitmap);
   ////////////////////////////////////////////////////////////////
   Graphics::TBitmap *ptBitmap1;
   ptBitmap1=new Graphics::TBitmap();
   TResourceStream* ptRes1 =
   new TResourceStream((int)HInstance, "Bitmap_3",L"RT_BITMAP");
   ptBitmap1->LoadFromStream(ptRes1);

}
if (Form2->sComboBox1->Text=="���������� ���������� � ������ ��� ������") {
Graphics::TBitmap *ptBitmap;
   ptBitmap=new Graphics::TBitmap();
   TResourceStream* ptRes =
   new TResourceStream((int)HInstance, "Bitmap_4",L"RT_BITMAP");
   ptBitmap->LoadFromStream(ptRes);
   Image1->Picture->Assign((TPersistent*)ptBitmap);
   ////////////////////////////////////////////////////////////////
   Graphics::TBitmap *ptBitmap1;
   ptBitmap1=new Graphics::TBitmap();
   TResourceStream* ptRes1 =
   new TResourceStream((int)HInstance, "Bitmap_4",L"RT_BITMAP");
   ptBitmap1->LoadFromStream(ptRes1);

}

   timestart=FormatDateTime("hh:mm:ss", myTime.CurrentDateTime());
   i++;
   struct Question *prev=NULL;
   Form4->sLabel1->Caption="����������: "+Form2->sComboBox1->Text;
   Form4->sLabel2->Caption="����: "+Form2->sComboBox2->Text;
   Form4->sLabel5->Caption="������ � "+IntToStr(i)+".";
   Form4->sButton1->Caption="������� � ���������� �������.";
   DataModule1->ADOQuery1->Close();
   DataModule1->ADOQuery1->SQL->Clear();
   DataModule1->ADOQuery1->SQL->Text=("exec CountAndRand @themename="+
   QuotedStr(Form2->sComboBox2->Text)+", @Disciplinename="+
   QuotedStr(Form2->sComboBox1->Text)+";");
   DataModule1->ADOQuery1->Open();
   countall=DataModule1->ADOQuery1->FieldByName("Rand1")->AsInteger;
   rand2=countall;
   //ShowMessage(countall);
   DataModule1->ADOQuery1->Close();
   DataModule1->ADOQuery1->SQL->Clear();
   DataModule1->ADOQuery1->SQL->Text=("exec CountAndRand1 @themename="+
   QuotedStr(Form2->sComboBox2->Text)+", @Disciplinename="+
   QuotedStr(Form2->sComboBox1->Text)+";");
   DataModule1->ADOQuery1->Open();
   //mas=(int*)malloc(countall*sizeof(int));
   for (int j=0; j != countall; j++)
   {
		 elem= new Question;
		 elem->number=DataModule1->ADOQuery1->FieldByName("NumberQuestion")->AsInteger;
		 elem->next=NULL;
		 CreateSp(elem, &start, &last);
		//mas[j]= DataModule1->ADOQuery1->FieldByName("NumberQuestion")->AsInteger;
		DataModule1->ADOQuery1->Next();
		//ShowMessage(mas[j]);
   }
   //display(start);
   //Randomize();
   //rand1=mas[random(countall)];
   //ShowMessage(IntToStr(rand1));
   rand1=randomnum(start,countall);
   for (int r=0;r!=countall;r++)
	{
		/*if(mas[r]==rand1)
		{
			for(int j=r;j<countall-1;j++)
			{
				mas[j]=mas[j+1];
			}
			countall--;
		}
		kol_vo_buff=0;
		masbuff=(int*)malloc((countall-1)*(sizeof(int)));
		for (int k=0; k < countall; k++)
		{
		   if (mas[k]!=rand1)
		   {
			  kol_vo_buff++;
			  masbuff[kol_vo_buff]==mas[k];
		   }
		} */
		struct Question *p;
		p=start;
		while(p)
		{
		   if(rand1 == p->number)
		   deletesp(prev, p, &start, &last);
		   prev=p;
		   p = p->next;
		}
	}
	//display(start);
	countall--;
	//delete mas;
	//mas=masbuff;
	//delete masbuff;
	 //for (int r=0;r<countall;r++)
	//{
	   //ShowMessage(IntToStr(mas[r]));
	//}
   DataModule1->ADOQuery1->Close();
   DataModule1->ADOQuery1->SQL->Clear();
   DataModule1->ADOQuery1->SQL->Text=("exec SelectAnswers @number="+QuotedStr(IntToStr(rand1))+";");
   DataModule1->ADOQuery1->Open();
   Form4->sLabel3->Caption=DataModule1->ADOQuery1->FieldByName("Formulation")->AsString;
   for (int j=0; j < DataModule1->ADOQuery1->RecordCount; j++)
   {
	  Form4->sRadioGroup1->Items->Add(DataModule1->ADOQuery1->FieldByName("VariousAnswer")->AsString);
	  DataModule1->ADOQuery1->Next();
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm4::FormClose(TObject *Sender, TCloseAction &Action)
{
   start=NULL; /* ������ ������ */
   last=NULL;
   prev=NULL;
   Del_list(start);
}
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------

