object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072' '#1080#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1080
  ClientHeight = 533
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 797
    Height = 533
    ActivePage = TabSheet6
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1050#1086#1084#1087#1100#1102#1090#1077#1088#1099
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 789
        Height = 274
        Align = alClient
        DataSource = DataSourceComp
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 0
        Top = 274
        Width = 789
        Height = 231
        Align = alBottom
        TabOrder = 1
        object PageControl2: TPageControl
          Left = 1
          Top = 1
          Width = 787
          Height = 229
          ActivePage = TabSheet4
          Align = alClient
          TabOrder = 0
          object TabSheet3: TTabSheet
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            object Label1: TLabel
              Left = 11
              Top = 3
              Width = 60
              Height = 13
              Caption = 'MAC-'#1072#1076#1088#1077#1089':'
            end
            object Label2: TLabel
              Left = 147
              Top = 3
              Width = 106
              Height = 13
              Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081' '#1085#1086#1084#1077#1088':'
            end
            object Label3: TLabel
              Left = 147
              Top = 49
              Width = 77
              Height = 13
              Caption = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077':'
            end
            object Label8: TLabel
              Left = 11
              Top = 49
              Width = 48
              Height = 13
              Caption = 'IP-'#1072#1076#1088#1077#1089':'
            end
            object Edit1: TEdit
              Left = 11
              Top = 22
              Width = 121
              Height = 21
              TabOrder = 0
            end
            object Edit3: TEdit
              Left = 147
              Top = 68
              Width = 121
              Height = 21
              TabOrder = 1
            end
            object Edit2: TEdit
              Left = 147
              Top = 22
              Width = 121
              Height = 21
              TabOrder = 2
            end
            object Button1: TButton
              Left = 11
              Top = 104
              Width = 75
              Height = 25
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              TabOrder = 3
              OnClick = Button1Click
            end
            object Edit7: TEdit
              Left = 11
              Top = 68
              Width = 121
              Height = 21
              TabOrder = 4
            end
            object Button4: TButton
              Left = 92
              Top = 104
              Width = 75
              Height = 25
              Caption = #1054#1095#1080#1089#1090#1080#1090#1100
              TabOrder = 5
              OnClick = Button4Click
            end
          end
          object TabSheet4: TTabSheet
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100
            ImageIndex = 1
            object Label4: TLabel
              Left = 11
              Top = 49
              Width = 60
              Height = 13
              Caption = 'MAC-'#1072#1076#1088#1077#1089':'
            end
            object Label5: TLabel
              Left = 146
              Top = 49
              Width = 106
              Height = 13
              Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081' '#1085#1086#1084#1077#1088':'
            end
            object Label6: TLabel
              Left = 146
              Top = 95
              Width = 77
              Height = 13
              Caption = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077':'
            end
            object Label7: TLabel
              Left = 11
              Top = 3
              Width = 52
              Height = 13
              Caption = 'ID '#1079#1072#1087#1080#1089#1080':'
            end
            object Label9: TLabel
              Left = 11
              Top = 95
              Width = 48
              Height = 13
              Caption = 'IP-'#1072#1076#1088#1077#1089':'
            end
            object Edit4: TEdit
              Left = 11
              Top = 68
              Width = 121
              Height = 21
              TabOrder = 0
            end
            object Edit5: TEdit
              Left = 146
              Top = 68
              Width = 121
              Height = 21
              TabOrder = 1
            end
            object Edit6: TEdit
              Left = 146
              Top = 114
              Width = 121
              Height = 21
              TabOrder = 2
            end
            object Button2: TButton
              Left = 11
              Top = 149
              Width = 75
              Height = 25
              Caption = #1048#1079#1084#1077#1085#1080#1090#1100
              TabOrder = 3
              OnClick = Button2Click
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 11
              Top = 22
              Width = 121
              Height = 21
              KeyField = 'id'
              ListField = 'id'
              ListSource = DataSourceComp
              TabOrder = 4
              OnClick = DBLookupComboBox1Click
            end
            object Edit8: TEdit
              Left = 11
              Top = 114
              Width = 121
              Height = 21
              TabOrder = 5
            end
            object Button5: TButton
              Left = 92
              Top = 149
              Width = 75
              Height = 25
              Caption = #1054#1095#1080#1089#1090#1080#1090#1100
              TabOrder = 6
              OnClick = Button5Click
            end
          end
          object TabSheet5: TTabSheet
            Caption = #1059#1076#1072#1083#1080#1090#1100
            ImageIndex = 2
            object Label10: TLabel
              Left = 11
              Top = 3
              Width = 52
              Height = 13
              Caption = 'ID '#1079#1072#1087#1080#1089#1080':'
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 11
              Top = 22
              Width = 145
              Height = 21
              KeyField = 'id'
              ListField = 'id'
              ListSource = DataSourceComp
              TabOrder = 0
            end
            object Button3: TButton
              Left = 11
              Top = 56
              Width = 75
              Height = 25
              Caption = #1059#1076#1072#1083#1080#1090#1100
              TabOrder = 1
              OnClick = Button3Click
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1051#1086#1075#1080
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 789
        Height = 240
        Align = alClient
        DataSource = DataSourceLogs
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel2: TPanel
        Left = 0
        Top = 240
        Width = 789
        Height = 265
        Align = alBottom
        TabOrder = 1
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1042' '#1089#1077#1090#1080
      ImageIndex = 2
      object Label11: TLabel
        Left = 288
        Top = 304
        Width = 37
        Height = 13
        Caption = 'Label11'
      end
      object Button6: TButton
        Left = 56
        Top = 295
        Width = 75
        Height = 25
        Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100
        TabOrder = 0
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 137
        Top = 295
        Width = 75
        Height = 25
        Caption = #1054#1089#1090#1072#1085#1086#1074#1080#1090#1100
        TabOrder = 1
        OnClick = Button7Click
      end
      object Memo1: TMemo
        Left = 16
        Top = 16
        Width = 473
        Height = 257
        Lines.Strings = (
          '')
        ScrollBars = ssVertical
        TabOrder = 2
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=1234;Persist Security Info=True;User' +
      ' ID=root;Extended Properties="Driver=MySQL ODBC 8.0 ANSI Driver;' +
      'SERVER=localhost;UID=root;PWD=1234;DATABASE=inventory;PORT=3306;' +
      'COLUMN_SIZE_S32=1";Initial Catalog=inventory'
    LoginPrompt = False
    Left = 552
    Top = 72
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 552
    Top = 128
  end
  object DataSourceComp: TDataSource
    DataSet = ADOTableComp
    Left = 728
    Top = 72
  end
  object ADOTableComp: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'computers'
    Left = 728
    Top = 128
  end
  object DataSourceLogs: TDataSource
    DataSet = ADOTableLogs
    Left = 648
    Top = 72
  end
  object ADOTableLogs: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'logs'
    Left = 648
    Top = 128
  end
end
