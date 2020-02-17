object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072' '#1080#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1080
  ClientHeight = 552
  ClientWidth = 672
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
    Width = 672
    Height = 552
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1050#1086#1084#1087#1100#1102#1090#1077#1088#1099
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 664
        Height = 253
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
        Top = 253
        Width = 664
        Height = 271
        Align = alBottom
        TabOrder = 1
        object PageControl2: TPageControl
          Left = 1
          Top = 1
          Width = 662
          Height = 269
          ActivePage = TabSheet3
          Align = alClient
          TabOrder = 0
          object TabSheet3: TTabSheet
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            object Label1: TLabel
              Left = 143
              Top = 26
              Width = 56
              Height = 13
              Caption = 'MAC-'#1072#1076#1088#1077#1089
            end
            object Label2: TLabel
              Left = 143
              Top = 61
              Width = 102
              Height = 13
              Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081' '#1085#1086#1084#1077#1088
            end
            object Label3: TLabel
              Left = 143
              Top = 96
              Width = 73
              Height = 13
              Caption = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077
            end
            object Edit1: TEdit
              Left = 16
              Top = 20
              Width = 121
              Height = 21
              TabOrder = 0
            end
            object Edit3: TEdit
              Left = 16
              Top = 95
              Width = 121
              Height = 21
              TabOrder = 1
            end
            object Edit2: TEdit
              Left = 16
              Top = 58
              Width = 121
              Height = 21
              TabOrder = 2
            end
            object Button1: TButton
              Left = 16
              Top = 133
              Width = 75
              Height = 25
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              TabOrder = 3
              OnClick = Button1Click
            end
          end
          object TabSheet4: TTabSheet
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100
            ImageIndex = 1
            object Label4: TLabel
              Left = 143
              Top = 56
              Width = 56
              Height = 13
              Caption = 'MAC-'#1072#1076#1088#1077#1089
            end
            object Label5: TLabel
              Left = 143
              Top = 96
              Width = 102
              Height = 13
              Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081' '#1085#1086#1084#1077#1088
            end
            object Label6: TLabel
              Left = 143
              Top = 136
              Width = 73
              Height = 13
              Caption = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077
            end
            object Label7: TLabel
              Left = 167
              Top = 24
              Width = 11
              Height = 13
              Caption = 'ID'
            end
            object Edit4: TEdit
              Left = 16
              Top = 56
              Width = 121
              Height = 21
              TabOrder = 0
            end
            object Edit5: TEdit
              Left = 16
              Top = 96
              Width = 121
              Height = 21
              TabOrder = 1
            end
            object Edit6: TEdit
              Left = 16
              Top = 136
              Width = 121
              Height = 21
              TabOrder = 2
            end
            object Button2: TButton
              Left = 16
              Top = 176
              Width = 75
              Height = 25
              Caption = #1048#1079#1084#1077#1085#1080#1090#1100
              TabOrder = 3
              OnClick = Button2Click
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 16
              Top = 20
              Width = 145
              Height = 21
              KeyField = 'id'
              ListField = 'id'
              ListSource = DataSourceComp
              TabOrder = 4
              OnClick = DBLookupComboBox1Click
            end
          end
          object TabSheet5: TTabSheet
            Caption = #1059#1076#1072#1083#1080#1090#1100
            ImageIndex = 2
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 19
              Top = 24
              Width = 145
              Height = 21
              KeyField = 'id'
              ListField = 'id'
              ListSource = DataSourceComp
              TabOrder = 0
            end
            object Button3: TButton
              Left = 19
              Top = 64
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
        Width = 664
        Height = 524
        Align = alClient
        DataSource = DataSourceLogs
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=1234;Persist Security Info=True;User' +
      ' ID=root;Extended Properties="Driver=MySQL ODBC 8.0 ANSI Driver;' +
      'SERVER=localhost;UID=root;PWD=1234;DATABASE=inventory;PORT=3307;' +
      'COLUMN_SIZE_S32=1";Initial Catalog=inventory'
    LoginPrompt = False
    Left = 440
    Top = 392
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 520
    Top = 392
  end
  object DataSourceComp: TDataSource
    DataSet = ADOTableComp
    Left = 504
    Top = 96
  end
  object ADOTableComp: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'computers'
    Left = 504
    Top = 144
  end
  object DataSourceLogs: TDataSource
    DataSet = ADOTableLogs
    Left = 384
    Top = 96
  end
  object ADOTableLogs: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'logs'
    Left = 384
    Top = 144
  end
end
