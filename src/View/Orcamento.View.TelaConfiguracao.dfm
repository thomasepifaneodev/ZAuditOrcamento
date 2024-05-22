object frmConfig: TfrmConfig
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o'
  ClientHeight = 380
  ClientWidth = 299
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clInactiveCaptionText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  StyleName = 'Windows'
  TextHeight = 15
  object lblIp: TLabeledEdit
    Left = 50
    Top = 72
    Width = 200
    Height = 28
    BevelInner = bvNone
    BevelOuter = bvNone
    EditLabel.Width = 17
    EditLabel.Height = 25
    EditLabel.Caption = 'IP'
    EditLabel.Font.Charset = ANSI_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -19
    EditLabel.Font.Name = 'Segoe UI Semibold'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveCaptionText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = ''
  end
  object lblPorta: TLabeledEdit
    Left = 50
    Top = 152
    Width = 200
    Height = 28
    BevelInner = bvNone
    BevelOuter = bvNone
    EditLabel.Width = 59
    EditLabel.Height = 25
    EditLabel.Caption = 'PORTA'
    EditLabel.Font.Charset = ANSI_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -19
    EditLabel.Font.Name = 'Segoe UI Semibold'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveCaptionText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxLength = 8
    NumbersOnly = True
    ParentFont = False
    TabOrder = 1
    Text = ''
  end
  object lblBase: TLabeledEdit
    Left = 50
    Top = 232
    Width = 200
    Height = 28
    BevelInner = bvNone
    BevelOuter = bvNone
    EditLabel.Width = 143
    EditLabel.Height = 25
    EditLabel.Caption = 'BASE DE DADOS'
    EditLabel.Font.Charset = ANSI_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -19
    EditLabel.Font.Name = 'Segoe UI Semibold'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveCaptionText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = ''
  end
  object btnSalvarConfig: TButton
    Left = 100
    Top = 304
    Width = 100
    Height = 35
    Caption = 'Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnSalvarConfigClick
  end
end