USE [master]
GO
/****** Object:  Database [КурсовойПроект]    Script Date: 06/02/2014 02:11:02 ******/
CREATE DATABASE [КурсовойПроект] ON  PRIMARY 
( NAME = N'КурсовойПроект', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\КурсовойПроектС.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'КурсовойПроект_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\КурсовойПроектС_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [КурсовойПроект] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [КурсовойПроект].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [КурсовойПроект] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [КурсовойПроект] SET ANSI_NULLS OFF
GO
ALTER DATABASE [КурсовойПроект] SET ANSI_PADDING OFF
GO
ALTER DATABASE [КурсовойПроект] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [КурсовойПроект] SET ARITHABORT OFF
GO
ALTER DATABASE [КурсовойПроект] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [КурсовойПроект] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [КурсовойПроект] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [КурсовойПроект] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [КурсовойПроект] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [КурсовойПроект] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [КурсовойПроект] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [КурсовойПроект] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [КурсовойПроект] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [КурсовойПроект] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [КурсовойПроект] SET  DISABLE_BROKER
GO
ALTER DATABASE [КурсовойПроект] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [КурсовойПроект] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [КурсовойПроект] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [КурсовойПроект] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [КурсовойПроект] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [КурсовойПроект] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [КурсовойПроект] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [КурсовойПроект] SET  READ_WRITE
GO
ALTER DATABASE [КурсовойПроект] SET RECOVERY FULL
GO
ALTER DATABASE [КурсовойПроект] SET  MULTI_USER
GO
ALTER DATABASE [КурсовойПроект] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [КурсовойПроект] SET DB_CHAINING OFF
GO
USE [КурсовойПроект]
GO
/****** Object:  User [Преподаватель]    Script Date: 06/02/2014 02:11:02 ******/
CREATE USER [Преподаватель] FOR LOGIN [Преподаватель] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Админ]    Script Date: 06/02/2014 02:11:02 ******/
CREATE USER [Админ] FOR LOGIN [Администратор] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Role [Администратор]    Script Date: 06/02/2014 02:11:02 ******/
CREATE ROLE [Администратор] AUTHORIZATION [dbo]
GO
/****** Object:  Role [Учитель]    Script Date: 06/02/2014 02:11:02 ******/
CREATE ROLE [Учитель] AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[NumberStudent] [int] NOT NULL,
	[GroupSt] [nvarchar](20) NULL,
	[fam] [nvarchar](20) NULL,
	[name] [nvarchar](20) NULL,
	[otch] [nvarchar](20) NULL,
	[NumberStudentTicket] [nvarchar](20) NULL,
 CONSTRAINT [XPKСтуденты] PRIMARY KEY CLUSTERED 
(
	[NumberStudent] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[TransProvStudent]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TransProvStudent] 
@fam nvarchar(20), 
@NumberStudentTicket nvarchar(20),
@char nvarchar(1) OUTPUT as
if exists (Select * from Student Where Student.fam=@fam and Student.NumberStudentTicket=@NumberStudentTicket)
set @char='y'
else
set @char='n';
GO
/****** Object:  Table [dbo].[Results]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[NumberStudent] [int] NOT NULL,
	[NumberDiscipline] [int] NOT NULL,
	[NumberTheme] [int] NOT NULL,
	[DateSt] [date] NULL,
	[StartSt] [time](0) NULL,
	[FinishSt] [time](0) NULL,
	[Average] [int] NULL,
	[SumPoint] [int] NULL,
	[Mark] [int] NULL,
	[NumberResult] [int] NOT NULL,
 CONSTRAINT [XPKРезультаты] PRIMARY KEY CLUSTERED 
(
	[NumberResult] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theme]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theme](
	[NumberDiscipline] [int] NOT NULL,
	[NumberTheme] [int] NOT NULL,
	[ThemeName] [nvarchar](50) NULL,
 CONSTRAINT [XPKТемы] PRIMARY KEY CLUSTERED 
(
	[NumberTheme] ASC,
	[NumberDiscipline] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Formulation] [nvarchar](200) NULL,
	[Point] [int] NULL,
	[NumberQuestion] [int] NOT NULL,
	[NumberTheme] [int] NOT NULL,
	[NumberDiscipline] [int] NOT NULL,
	[TrueNumberAnswer] [int] NULL,
 CONSTRAINT [XPKВопросы] PRIMARY KEY CLUSTERED 
(
	[NumberQuestion] ASC,
	[NumberTheme] ASC,
	[NumberDiscipline] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[VariousAnswer] [nvarchar](200) NULL,
	[NumberQuestion] [int] NOT NULL,
	[NumberAnswer] [int] NOT NULL,
	[NumberTheme] [int] NOT NULL,
	[NumberDiscipline] [int] NOT NULL,
 CONSTRAINT [XPKОтветы] PRIMARY KEY CLUSTERED 
(
	[NumberAnswer] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnResults]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnResults](
	[NumberQuestion] [int] NOT NULL,
	[NumberTheme] [int] NOT NULL,
	[NumberDiscipline] [int] NOT NULL,
	[NumberAnswer] [int] NOT NULL,
	[NumberStudent] [int] NOT NULL,
	[NumberOfUnResults] [int] NOT NULL,
	[DateSt] [date] NULL,
 CONSTRAINT [XPKПромежуточные_результаты] PRIMARY KEY CLUSTERED 
(
	[NumberOfUnResults] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Trigger [tU_Student]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tU_Student] ON [dbo].[Student] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Student */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insNumberStudent integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* Student  UnResults on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000220be", PARENT_OWNER="", PARENT_TABLE="Student"
    CHILD_OWNER="", CHILD_TABLE="UnResults"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="NumberStudent" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(NumberStudent)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,UnResults
      WHERE
        /*  %JoinFKPK(UnResults,deleted," = "," AND") */
        UnResults.NumberStudent = deleted.NumberStudent
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Student because UnResults exists.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* Student  Results on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Student"
    CHILD_OWNER="", CHILD_TABLE="Results"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="NumberStudent" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(NumberStudent)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Results
      WHERE
        /*  %JoinFKPK(Results,deleted," = "," AND") */
        Results.NumberStudent = deleted.NumberStudent
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Student because Results exists.'
      GOTO error
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
error:
    raiserror @errno @errmsg
    rollback transaction
END
GO
/****** Object:  Trigger [tD_Student]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tD_Student] ON [dbo].[Student] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Student */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Student  UnResults on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001d6bf", PARENT_OWNER="", PARENT_TABLE="Student"
    CHILD_OWNER="", CHILD_TABLE="UnResults"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="NumberStudent" */
    IF EXISTS (
      SELECT * FROM deleted,UnResults
      WHERE
        /*  %JoinFKPK(UnResults,deleted," = "," AND") */
        UnResults.NumberStudent = deleted.NumberStudent
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Student because UnResults exists.'
      GOTO error
    END

    /* ERwin Builtin Trigger */
    /* Student  Results on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Student"
    CHILD_OWNER="", CHILD_TABLE="Results"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="NumberStudent" */
    IF EXISTS (
      SELECT * FROM deleted,Results
      WHERE
        /*  %JoinFKPK(Results,deleted," = "," AND") */
        Results.NumberStudent = deleted.NumberStudent
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Student because Results exists.'
      GOTO error
    END


    /* ERwin Builtin Trigger */
    RETURN
error:
    raiserror @errno @errmsg
    rollback transaction
END
GO
/****** Object:  Trigger [Delete2]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Delete2]
On [dbo].[UnResults] for Delete
as
delete from Student where Student.NumberStudent in (select NumberStudent from deleted)
GO
/****** Object:  Trigger [Delete1]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Delete1]
On [dbo].[Results] for Delete
as
delete from Student where Student.NumberStudent in (select NumberStudent from deleted)
GO
/****** Object:  StoredProcedure [dbo].[Получение_количества_баллов_за_вопрос]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Получение_количества_баллов_за_вопрос]
@NumberQuestion int,
@VariousAnswer nvarchar(200),
@Symbol nvarchar(1) OUTPUT,
@ball int OUTPUT
as
if exists (Select Question.Point     
FROM         Question
Where Question.TrueNumberAnswer=(Select Answers.NumberAnswer
FROM         Answers 
Where Answers.VariousAnswer=@VariousAnswer and Answers.NumberQuestion=@NumberQuestion))
begin
set @Symbol='Y'
set @ball= (Select Question.Point     
FROM         Question
Where Question.TrueNumberAnswer=(Select Answers.NumberAnswer
FROM         Answers 
Where Answers.VariousAnswer=@VariousAnswer and Answers.NumberQuestion=@NumberQuestion))
end
else
set @Symbol='N';
GO
/****** Object:  Trigger [tU_UnResults]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tU_UnResults] ON [dbo].[UnResults] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on UnResults */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insNumberOfUnResults integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* Student  UnResults on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00043cc8", PARENT_OWNER="", PARENT_TABLE="Student"
    CHILD_OWNER="", CHILD_TABLE="UnResults"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="NumberStudent" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(NumberStudent)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Student
        WHERE
          /* %JoinFKPK(inserted,Student) */
          inserted.NumberStudent = Student.NumberStudent
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update UnResults because Student does not exist.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* Answers  UnResults on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Answers"
    CHILD_OWNER="", CHILD_TABLE="UnResults"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="NumberAnswer" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(NumberAnswer)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Answers
        WHERE
          /* %JoinFKPK(inserted,Answers) */
          inserted.NumberAnswer = Answers.NumberAnswer
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update UnResults because Answers does not exist.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* Question  UnResults on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Question"
    CHILD_OWNER="", CHILD_TABLE="UnResults"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="NumberQuestion""NumberTheme""NumberDiscipline" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(NumberQuestion) OR
    UPDATE(NumberTheme) OR
    UPDATE(NumberDiscipline)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Question
        WHERE
          /* %JoinFKPK(inserted,Question) */
          inserted.NumberQuestion = Question.NumberQuestion and
          inserted.NumberTheme = Question.NumberTheme and
          inserted.NumberDiscipline = Question.NumberDiscipline
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update UnResults because Question does not exist.'
      GOTO error
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
error:
    raiserror @errno @errmsg
    rollback transaction
END
GO
/****** Object:  Trigger [tU_Answers]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tU_Answers] ON [dbo].[Answers] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Answers */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insNumberAnswer integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* Answers  UnResults on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0002c635", PARENT_OWNER="", PARENT_TABLE="Answers"
    CHILD_OWNER="", CHILD_TABLE="UnResults"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="NumberAnswer" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(NumberAnswer)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,UnResults
      WHERE
        /*  %JoinFKPK(UnResults,deleted," = "," AND") */
        UnResults.NumberAnswer = deleted.NumberAnswer
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Answers because UnResults exists.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* Question  Answers on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Question"
    CHILD_OWNER="", CHILD_TABLE="Answers"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="NumberQuestion""NumberTheme""NumberDiscipline" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(NumberQuestion) OR
    UPDATE(NumberTheme) OR
    UPDATE(NumberDiscipline)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Question
        WHERE
          /* %JoinFKPK(inserted,Question) */
          inserted.NumberQuestion = Question.NumberQuestion and
          inserted.NumberTheme = Question.NumberTheme and
          inserted.NumberDiscipline = Question.NumberDiscipline
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Answers because Question does not exist.'
      GOTO error
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
error:
    raiserror @errno @errmsg
    rollback transaction
END
GO
/****** Object:  Trigger [tD_Answers]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tD_Answers] ON [dbo].[Answers] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Answers */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Answers  UnResults on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00028e89", PARENT_OWNER="", PARENT_TABLE="Answers"
    CHILD_OWNER="", CHILD_TABLE="UnResults"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="NumberAnswer" */
    IF EXISTS (
      SELECT * FROM deleted,UnResults
      WHERE
        /*  %JoinFKPK(UnResults,deleted," = "," AND") */
        UnResults.NumberAnswer = deleted.NumberAnswer
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Answers because UnResults exists.'
      GOTO error
    END

    /* ERwin Builtin Trigger */
    /* Question  Answers on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Question"
    CHILD_OWNER="", CHILD_TABLE="Answers"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="NumberQuestion""NumberTheme""NumberDiscipline" */
    IF EXISTS (SELECT * FROM deleted,Question
      WHERE
        /* %JoinFKPK(deleted,Question," = "," AND") */
        deleted.NumberQuestion = Question.NumberQuestion AND
        deleted.NumberTheme = Question.NumberTheme AND
        deleted.NumberDiscipline = Question.NumberDiscipline AND
        NOT EXISTS (
          SELECT * FROM Answers
          WHERE
            /* %JoinFKPK(Answers,Question," = "," AND") */
            Answers.NumberQuestion = Question.NumberQuestion AND
            Answers.NumberTheme = Question.NumberTheme AND
            Answers.NumberDiscipline = Question.NumberDiscipline
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Answers because Question exists.'
      GOTO error
    END


    /* ERwin Builtin Trigger */
    RETURN
error:
    raiserror @errno @errmsg
    rollback transaction
END
GO
/****** Object:  StoredProcedure [dbo].[SelectAnswers]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectAnswers] 
@number int
as 
SELECT     Question.Formulation, Answers.VariousAnswer
FROM         Question INNER JOIN
                      Answers ON Question.NumberQuestion = Answers.NumberQuestion AND Question.NumberTheme = Answers.NumberTheme AND Question.NumberDiscipline = Answers.NumberDiscipline
Where Question.NumberQuestion=Answers.NumberQuestion and Question.NumberQuestion=@number;
GO
/****** Object:  StoredProcedure [dbo].[TransEnterStudent]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TransEnterStudent] @name nvarchar(20), @fam nvarchar(20), @otch nvarchar(20),
@GroupSt nvarchar(20), @NumberStudentTicket nvarchar(20), @pr char(1) as
--начало транзакции
BEGIN TRAN T1EnterStudent
Insert Into Student (Student.name, Student.fam, Student.otch, Student.GroupSt, 
Student.NumberStudent, Student.NumberStudentTicket)
Values (@name, @fam, @otch, @GroupSt, (Select Count(Student.NumberStudent) From Student)+1 , @NumberStudentTicket);
if @pr='Y'
-- фиксация изменений
COMMIT TRAN T1
Else
-- откат
ROLLBACK TRAN T1
GO
/****** Object:  Table [dbo].[Discipline]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discipline](
	[NumberDiscipline] [int] NOT NULL,
	[NameDiscipline] [nvarchar](50) NULL,
 CONSTRAINT [XPKДисциплины] PRIMARY KEY CLUSTERED 
(
	[NumberDiscipline] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Промежуточная_отчетность]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Промежуточная_отчетность]
@fam nvarchar(20),
@numberstudentticket nvarchar(20)  as
SELECT  fam, NumberStudentTicket, Formulation, UnResults.NumberAnswer, TrueNumberAnswer, ThemeName, NameDiscipline
FROM         Student INNER JOIN
                      UnResults ON Student.NumberStudent = UnResults.NumberStudent INNER JOIN
                      Answers ON UnResults.NumberAnswer = Answers.NumberAnswer INNER JOIN
                      Question ON UnResults.NumberQuestion = Question.NumberQuestion AND UnResults.NumberTheme = Question.NumberTheme AND UnResults.NumberDiscipline = Question.NumberDiscipline AND 
                      Answers.NumberQuestion = Question.NumberQuestion AND Answers.NumberTheme = Question.NumberTheme AND Answers.NumberDiscipline = Question.NumberDiscipline INNER JOIN
                      Discipline ON UnResults.NumberDiscipline = Discipline.NumberDiscipline INNER JOIN
                      Theme ON Question.NumberTheme = Theme.NumberTheme AND Question.NumberDiscipline = Theme.NumberDiscipline AND Discipline.NumberDiscipline = Theme.NumberDiscipline  
Where fam=@fam and NumberStudentTicket=@numberstudentticket;
GO
/****** Object:  StoredProcedure [dbo].[Добавление_промежуточных_результатов]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Добавление_промежуточных_результатов] 
@NumberQuestion int, 
@NumberTheme nvarchar(50),
@NumberDiscipline nvarchar(50),
@NumberAnswer nvarchar(200),
@NumberStudent nvarchar(30), 
@pr nvarchar(1) as
--начало транзакции
BEGIN TRAN T1EnterMark
Insert Into UnResults (DateSt, NumberAnswer, NumberDiscipline, NumberOfUnResults, 
NumberQuestion, NumberStudent, NumberTheme)
Values (GETDATE(), (SELECT Answers.NumberAnswer FROM  Answers Where Answers.VariousAnswer=@NumberAnswer and Answers.NumberQuestion=@NumberQuestion),
(Select Discipline.NumberDiscipline From Discipline Where Discipline.NameDiscipline=@NumberDiscipline), (Select Count(UnResults.NumberOfUnResults)+1 From UnResults), 
@NumberQuestion, (SELECT  Student.NumberStudent FROM Student Where Student.fam=@NumberStudent),
(Select Theme.NumberTheme From Theme Where Theme.ThemeName=@NumberTheme))
if @pr='Y'
-- фиксация изменений
COMMIT TRAN T1
Else
-- откат
ROLLBACK TRAN T1
GO
/****** Object:  Trigger [tU_Theme]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tU_Theme] ON [dbo].[Theme] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Theme */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insNumberDiscipline integer, 
           @insNumberTheme integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* Theme  Results on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0003b173", PARENT_OWNER="", PARENT_TABLE="Theme"
    CHILD_OWNER="", CHILD_TABLE="Results"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_5", FK_COLUMNS="NumberTheme""NumberDiscipline" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(NumberDiscipline) OR
    UPDATE(NumberTheme)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Results
      WHERE
        /*  %JoinFKPK(Results,deleted," = "," AND") */
        Results.NumberDiscipline = deleted.NumberDiscipline AND
        Results.NumberTheme = deleted.NumberTheme
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Theme because Results exists.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* Theme  Question on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Theme"
    CHILD_OWNER="", CHILD_TABLE="Question"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="NumberTheme""NumberDiscipline" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(NumberDiscipline) OR
    UPDATE(NumberTheme)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Question
      WHERE
        /*  %JoinFKPK(Question,deleted," = "," AND") */
        Question.NumberDiscipline = deleted.NumberDiscipline AND
        Question.NumberTheme = deleted.NumberTheme
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Theme because Question exists.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* Discipline  Theme on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Discipline"
    CHILD_OWNER="", CHILD_TABLE="Theme"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="NumberDiscipline" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(NumberDiscipline)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Discipline
        WHERE
          /* %JoinFKPK(inserted,Discipline) */
          inserted.NumberDiscipline = Discipline.NumberDiscipline
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Theme because Discipline does not exist.'
      GOTO error
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
error:
    raiserror @errno @errmsg
    rollback transaction
END
GO
/****** Object:  Trigger [tU_Results]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tU_Results] ON [dbo].[Results] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Results */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insNumberResult integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* Theme  Results on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0004127d", PARENT_OWNER="", PARENT_TABLE="Theme"
    CHILD_OWNER="", CHILD_TABLE="Results"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_5", FK_COLUMNS="NumberTheme""NumberDiscipline" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(NumberDiscipline) OR
    UPDATE(NumberTheme)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Theme
        WHERE
          /* %JoinFKPK(inserted,Theme) */
          inserted.NumberDiscipline = Theme.NumberDiscipline and
          inserted.NumberTheme = Theme.NumberTheme
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Results because Theme does not exist.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* Discipline  Results on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Discipline"
    CHILD_OWNER="", CHILD_TABLE="Results"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="NumberDiscipline" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(NumberDiscipline)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Discipline
        WHERE
          /* %JoinFKPK(inserted,Discipline) */
          inserted.NumberDiscipline = Discipline.NumberDiscipline
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Results because Discipline does not exist.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* Student  Results on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Student"
    CHILD_OWNER="", CHILD_TABLE="Results"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="NumberStudent" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(NumberStudent)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Student
        WHERE
          /* %JoinFKPK(inserted,Student) */
          inserted.NumberStudent = Student.NumberStudent
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Results because Student does not exist.'
      GOTO error
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
error:
    raiserror @errno @errmsg
    rollback transaction
END
GO
/****** Object:  Trigger [tU_Question]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tU_Question] ON [dbo].[Question] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Question */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insNumberQuestion integer, 
           @insNumberTheme integer, 
           @insNumberDiscipline integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* Question  UnResults on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00043eef", PARENT_OWNER="", PARENT_TABLE="Question"
    CHILD_OWNER="", CHILD_TABLE="UnResults"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="NumberQuestion""NumberTheme""NumberDiscipline" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(NumberQuestion) OR
    UPDATE(NumberTheme) OR
    UPDATE(NumberDiscipline)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,UnResults
      WHERE
        /*  %JoinFKPK(UnResults,deleted," = "," AND") */
        UnResults.NumberQuestion = deleted.NumberQuestion AND
        UnResults.NumberTheme = deleted.NumberTheme AND
        UnResults.NumberDiscipline = deleted.NumberDiscipline
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Question because UnResults exists.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* Question  Answers on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Question"
    CHILD_OWNER="", CHILD_TABLE="Answers"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="NumberQuestion""NumberTheme""NumberDiscipline" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(NumberQuestion) OR
    UPDATE(NumberTheme) OR
    UPDATE(NumberDiscipline)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Answers
      WHERE
        /*  %JoinFKPK(Answers,deleted," = "," AND") */
        Answers.NumberQuestion = deleted.NumberQuestion AND
        Answers.NumberTheme = deleted.NumberTheme AND
        Answers.NumberDiscipline = deleted.NumberDiscipline
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Question because Answers exists.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* Theme  Question on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Theme"
    CHILD_OWNER="", CHILD_TABLE="Question"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="NumberTheme""NumberDiscipline" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(NumberDiscipline) OR
    UPDATE(NumberTheme)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Theme
        WHERE
          /* %JoinFKPK(inserted,Theme) */
          inserted.NumberDiscipline = Theme.NumberDiscipline and
          inserted.NumberTheme = Theme.NumberTheme
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Question because Theme does not exist.'
      GOTO error
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
error:
    raiserror @errno @errmsg
    rollback transaction
END
GO
/****** Object:  Trigger [tU_Discipline]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tU_Discipline] ON [dbo].[Discipline] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Discipline */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insNumberDiscipline integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* Discipline  Results on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000219f4", PARENT_OWNER="", PARENT_TABLE="Discipline"
    CHILD_OWNER="", CHILD_TABLE="Results"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="NumberDiscipline" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(NumberDiscipline)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Results
      WHERE
        /*  %JoinFKPK(Results,deleted," = "," AND") */
        Results.NumberDiscipline = deleted.NumberDiscipline
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Discipline because Results exists.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* Discipline  Theme on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Discipline"
    CHILD_OWNER="", CHILD_TABLE="Theme"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="NumberDiscipline" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(NumberDiscipline)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Theme
      WHERE
        /*  %JoinFKPK(Theme,deleted," = "," AND") */
        Theme.NumberDiscipline = deleted.NumberDiscipline
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Discipline because Theme exists.'
      GOTO error
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
error:
    raiserror @errno @errmsg
    rollback transaction
END
GO
/****** Object:  Trigger [tD_Theme]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tD_Theme] ON [dbo].[Theme] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Theme */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Theme  Results on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00035948", PARENT_OWNER="", PARENT_TABLE="Theme"
    CHILD_OWNER="", CHILD_TABLE="Results"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_5", FK_COLUMNS="NumberTheme""NumberDiscipline" */
    IF EXISTS (
      SELECT * FROM deleted,Results
      WHERE
        /*  %JoinFKPK(Results,deleted," = "," AND") */
        Results.NumberDiscipline = deleted.NumberDiscipline AND
        Results.NumberTheme = deleted.NumberTheme
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Theme because Results exists.'
      GOTO error
    END

    /* ERwin Builtin Trigger */
    /* Theme  Question on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Theme"
    CHILD_OWNER="", CHILD_TABLE="Question"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="NumberTheme""NumberDiscipline" */
    IF EXISTS (
      SELECT * FROM deleted,Question
      WHERE
        /*  %JoinFKPK(Question,deleted," = "," AND") */
        Question.NumberDiscipline = deleted.NumberDiscipline AND
        Question.NumberTheme = deleted.NumberTheme
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Theme because Question exists.'
      GOTO error
    END

    /* ERwin Builtin Trigger */
    /* Discipline  Theme on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Discipline"
    CHILD_OWNER="", CHILD_TABLE="Theme"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="NumberDiscipline" */
    IF EXISTS (SELECT * FROM deleted,Discipline
      WHERE
        /* %JoinFKPK(deleted,Discipline," = "," AND") */
        deleted.NumberDiscipline = Discipline.NumberDiscipline AND
        NOT EXISTS (
          SELECT * FROM Theme
          WHERE
            /* %JoinFKPK(Theme,Discipline," = "," AND") */
            Theme.NumberDiscipline = Discipline.NumberDiscipline
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Theme because Discipline exists.'
      GOTO error
    END


    /* ERwin Builtin Trigger */
    RETURN
error:
    raiserror @errno @errmsg
    rollback transaction
END
GO
/****** Object:  Trigger [tD_Question]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tD_Question] ON [dbo].[Question] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Question */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Question  UnResults on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003c451", PARENT_OWNER="", PARENT_TABLE="Question"
    CHILD_OWNER="", CHILD_TABLE="UnResults"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="NumberQuestion""NumberTheme""NumberDiscipline" */
    IF EXISTS (
      SELECT * FROM deleted,UnResults
      WHERE
        /*  %JoinFKPK(UnResults,deleted," = "," AND") */
        UnResults.NumberQuestion = deleted.NumberQuestion AND
        UnResults.NumberTheme = deleted.NumberTheme AND
        UnResults.NumberDiscipline = deleted.NumberDiscipline
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Question because UnResults exists.'
      GOTO error
    END

    /* ERwin Builtin Trigger */
    /* Question  Answers on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Question"
    CHILD_OWNER="", CHILD_TABLE="Answers"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="NumberQuestion""NumberTheme""NumberDiscipline" */
    IF EXISTS (
      SELECT * FROM deleted,Answers
      WHERE
        /*  %JoinFKPK(Answers,deleted," = "," AND") */
        Answers.NumberQuestion = deleted.NumberQuestion AND
        Answers.NumberTheme = deleted.NumberTheme AND
        Answers.NumberDiscipline = deleted.NumberDiscipline
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Question because Answers exists.'
      GOTO error
    END

    /* ERwin Builtin Trigger */
    /* Theme  Question on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Theme"
    CHILD_OWNER="", CHILD_TABLE="Question"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="NumberTheme""NumberDiscipline" */
    IF EXISTS (SELECT * FROM deleted,Theme
      WHERE
        /* %JoinFKPK(deleted,Theme," = "," AND") */
        deleted.NumberDiscipline = Theme.NumberDiscipline AND
        deleted.NumberTheme = Theme.NumberTheme AND
        NOT EXISTS (
          SELECT * FROM Question
          WHERE
            /* %JoinFKPK(Question,Theme," = "," AND") */
            Question.NumberDiscipline = Theme.NumberDiscipline AND
            Question.NumberTheme = Theme.NumberTheme
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Question because Theme exists.'
      GOTO error
    END


    /* ERwin Builtin Trigger */
    RETURN
error:
    raiserror @errno @errmsg
    rollback transaction
END
GO
/****** Object:  Trigger [tD_Discipline]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tD_Discipline] ON [dbo].[Discipline] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Discipline */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Discipline  Results on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001e20a", PARENT_OWNER="", PARENT_TABLE="Discipline"
    CHILD_OWNER="", CHILD_TABLE="Results"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="NumberDiscipline" */
    IF EXISTS (
      SELECT * FROM deleted,Results
      WHERE
        /*  %JoinFKPK(Results,deleted," = "," AND") */
        Results.NumberDiscipline = deleted.NumberDiscipline
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Discipline because Results exists.'
      GOTO error
    END

    /* ERwin Builtin Trigger */
    /* Discipline  Theme on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Discipline"
    CHILD_OWNER="", CHILD_TABLE="Theme"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="NumberDiscipline" */
    IF EXISTS (
      SELECT * FROM deleted,Theme
      WHERE
        /*  %JoinFKPK(Theme,deleted," = "," AND") */
        Theme.NumberDiscipline = deleted.NumberDiscipline
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Discipline because Theme exists.'
      GOTO error
    END


    /* ERwin Builtin Trigger */
    RETURN
error:
    raiserror @errno @errmsg
    rollback transaction
END
GO
/****** Object:  StoredProcedure [dbo].[CountAndRand1]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CountAndRand1] 
@themename nvarchar(50),
@Disciplinename nvarchar(50)
as
SELECT     NumberQuestion 
FROM         Question INNER JOIN
                      Discipline ON Question.NumberDiscipline = Discipline.NumberDiscipline INNER JOIN
                      Theme ON Question.NumberTheme = Theme.NumberTheme AND Question.NumberDiscipline = Theme.NumberDiscipline AND Discipline.NumberDiscipline = Theme.NumberDiscipline 
Where Theme.ThemeName=@themename and Discipline.NameDiscipline=@Disciplinename;
GO
/****** Object:  StoredProcedure [dbo].[CountAndRand]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CountAndRand] 
@themename nvarchar(50),
@Disciplinename nvarchar(50)
as
SELECT    Count(*) as Rand1
FROM         Question INNER JOIN
                      Discipline ON Question.NumberDiscipline = Discipline.NumberDiscipline INNER JOIN
                      Theme ON Question.NumberTheme = Theme.NumberTheme AND Question.NumberDiscipline = Theme.NumberDiscipline AND Discipline.NumberDiscipline = Theme.NumberDiscipline 
Where Theme.ThemeName=@themename and Discipline.NameDiscipline=@Disciplinename
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[fam] [nvarchar](20) NULL,
	[name] [nvarchar](20) NULL,
	[otch] [nvarchar](20) NULL,
	[NumberTeacher] [int] NOT NULL,
	[login] [nvarchar](20) NULL,
	[password] [nvarchar](20) NULL,
 CONSTRAINT [XPKПреподаватели] PRIMARY KEY CLUSTERED 
(
	[NumberTeacher] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marks]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marks](
	[Mark] [int] NOT NULL,
	[MinPoint] [int] NULL,
	[MaxPoint] [int] NULL,
 CONSTRAINT [XPKОценки] PRIMARY KEY CLUSTERED 
(
	[Mark] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Добавление_результатов]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Добавление_результатов] 
@NumberTheme nvarchar(50),
@NumberDiscipline nvarchar(50),
@StudentFam nvarchar(30),
@StudentTicket nvarchar(30),
@startSt time(0), 
@FinishSt time(0),
@SumPoint int, 
@pr nvarchar(1) as
--начало транзакции
BEGIN TRAN T1EnterResult
Insert Into Results (NumberStudent, NumberDiscipline, NumberTheme, DateSt, StartSt, FinishSt, Average, SumPoint, Mark, NumberResult)
Values ((Select Student.NumberStudent From Student Where Student.fam= @StudentFam and Student.NumberStudentTicket=@StudentTicket),
(Select Discipline.NumberDiscipline From Discipline Where Discipline.NameDiscipline=@NumberDiscipline),
(Select Theme.NumberTheme From Theme Where Theme.ThemeName=@NumberTheme),
GETDATE(),@startSt,@finishSt, DATEDIFF(mi,@startSt, @finishSt), @SumPoint,
(Select Marks.Mark From Marks Where Marks.MinPoint<=@SumPoint and Marks.MaxPoint>=@SumPoint),
(Select Count(Results.NumberResult) From Results)+1)    
if @pr='Y'
-- фиксация изменений
COMMIT TRAN T1
Else
-- откат
ROLLBACK TRAN T1
GO
/****** Object:  StoredProcedure [dbo].[Формирование_оценки1]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Формирование_оценки1] 
@num int 
as
declare @a as int
set @a=1
While @a<=5
begin
Insert Into Marks (Mark, MaxPoint, MinPoint)
Values (@a, 0, 0);
set @a=@a+1
end
Update Marks Set
MaxPoint=ABS(@num)-(ABS((Mark-5))*(ABS(@num)/5)),
MinPoint=ABS(@num)-(ABS((Mark-5))*(ABS(@num)/5))-(ABS(@num)/5)-1
Update Marks Set
MinPoint=0
Where Mark=1
GO
/****** Object:  StoredProcedure [dbo].[Формирование_оценки]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Формирование_оценки] 
@num int 
as
Update Marks Set
MaxPoint=ABS(@num)-(ABS((Mark-5))*(ABS(@num)/5)),
MinPoint=ABS(@num)-(ABS((Mark-5))*(ABS(@num)/5))-(ABS(@num)/5)-1
Update Marks Set
MinPoint=0
Where Mark=1
GO
/****** Object:  StoredProcedure [dbo].[TransEnterTeacher]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TransEnterTeacher] @name nvarchar(20), @fam nvarchar(20), @otch nvarchar(20),
@login nvarchar(20), @password nvarchar(20), @pr char(1) as
--начало транзакции
BEGIN TRAN T1EnterTeacher
Insert Into Teacher (name, fam, otch, NumberTeacher, Teacher.login, Teacher.password)
Values (@name, @fam, @otch, (Select Count(Teacher.NumberTeacher) From Teacher)+1 , @login, @password);
if @pr='Y'
-- фиксация изменений
COMMIT TRAN T1
Else
-- откат
ROLLBACK TRAN T1
GO
/****** Object:  StoredProcedure [dbo].[Выборка_оценки]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Выборка_оценки] 
@ball int 
as
Select Marks.Mark From Marks Where Marks.MinPoint<=@ball and Marks.MaxPoint>=@ball;
GO
/****** Object:  StoredProcedure [dbo].[TransProvTeacher]    Script Date: 06/02/2014 02:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TransProvTeacher]
@login nvarchar(20), 
@password nvarchar(20),
@char nvarchar(1) OUTPUT as
if exists (Select * from Teacher Where Teacher.login=@login and Teacher.password=@password)
set @char='y'
else
set @char='n';
GO
/****** Object:  ForeignKey [R_6]    Script Date: 06/02/2014 02:11:03 ******/
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [R_6] FOREIGN KEY([NumberQuestion], [NumberTheme], [NumberDiscipline])
REFERENCES [dbo].[Question] ([NumberQuestion], [NumberTheme], [NumberDiscipline])
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [R_6]
GO
/****** Object:  ForeignKey [R_1]    Script Date: 06/02/2014 02:11:03 ******/
ALTER TABLE [dbo].[Theme]  WITH CHECK ADD  CONSTRAINT [R_1] FOREIGN KEY([NumberDiscipline])
REFERENCES [dbo].[Discipline] ([NumberDiscipline])
GO
ALTER TABLE [dbo].[Theme] CHECK CONSTRAINT [R_1]
GO
/****** Object:  ForeignKey [R_7]    Script Date: 06/02/2014 02:11:03 ******/
ALTER TABLE [dbo].[UnResults]  WITH CHECK ADD  CONSTRAINT [R_7] FOREIGN KEY([NumberQuestion], [NumberTheme], [NumberDiscipline])
REFERENCES [dbo].[Question] ([NumberQuestion], [NumberTheme], [NumberDiscipline])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UnResults] CHECK CONSTRAINT [R_7]
GO
/****** Object:  ForeignKey [R_8]    Script Date: 06/02/2014 02:11:03 ******/
ALTER TABLE [dbo].[UnResults]  WITH CHECK ADD  CONSTRAINT [R_8] FOREIGN KEY([NumberAnswer])
REFERENCES [dbo].[Answers] ([NumberAnswer])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UnResults] CHECK CONSTRAINT [R_8]
GO
/****** Object:  ForeignKey [R_9]    Script Date: 06/02/2014 02:11:03 ******/
ALTER TABLE [dbo].[UnResults]  WITH CHECK ADD  CONSTRAINT [R_9] FOREIGN KEY([NumberStudent])
REFERENCES [dbo].[Student] ([NumberStudent])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UnResults] CHECK CONSTRAINT [R_9]
GO
/****** Object:  ForeignKey [FK_Results_Discipline]    Script Date: 06/02/2014 02:11:03 ******/
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Discipline] FOREIGN KEY([NumberDiscipline])
REFERENCES [dbo].[Discipline] ([NumberDiscipline])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Discipline]
GO
/****** Object:  ForeignKey [R_3]    Script Date: 06/02/2014 02:11:03 ******/
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [R_3] FOREIGN KEY([NumberStudent])
REFERENCES [dbo].[Student] ([NumberStudent])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [R_3]
GO
/****** Object:  ForeignKey [R_2]    Script Date: 06/02/2014 02:11:03 ******/
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [R_2] FOREIGN KEY([NumberTheme], [NumberDiscipline])
REFERENCES [dbo].[Theme] ([NumberTheme], [NumberDiscipline])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [R_2]
GO
