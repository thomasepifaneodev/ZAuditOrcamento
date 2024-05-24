object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Zeus Automa'#231#227'o Comercial'
  ClientHeight = 681
  ClientWidth = 1064
  Color = clBtnText
  Constraints.MinHeight = 682
  Constraints.MinWidth = 1068
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object pnlImg: TPanel
    Left = 0
    Top = 0
    Width = 1064
    Height = 681
    Align = alClient
    BevelOuter = bvNone
    Color = clMedGray
    ParentBackground = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 1060
    ExplicitHeight = 680
    object pnlBottom: TPanel
      Left = 0
      Top = 623
      Width = 1064
      Height = 58
      Align = alBottom
      BevelOuter = bvNone
      Color = clMedGray
      ParentBackground = False
      TabOrder = 0
      StyleName = 'Windows'
      ExplicitTop = 622
      ExplicitWidth = 1060
      object pnlButtonBuscar: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 5
        Width = 150
        Height = 48
        Margins.Left = 10
        Margins.Top = 5
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alLeft
        BevelOuter = bvNone
        Color = clMedGray
        ParentBackground = False
        TabOrder = 0
        StyleName = 'Windows'
        object btnBuscar: TSpeedButton
          Left = 0
          Top = 0
          Width = 150
          Height = 48
          Align = alClient
          Caption = 'Buscar'
          ImageIndex = 1
          Images = imgList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Layout = blGlyphRight
          Margin = 28
          ParentFont = False
          Spacing = 10
          OnClick = btnBuscarClick
          ExplicitLeft = 162
          ExplicitTop = 28
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object pnlButtonExport: TPanel
        AlignWithMargins = True
        Left = 180
        Top = 5
        Width = 150
        Height = 48
        Margins.Left = 10
        Margins.Top = 5
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alLeft
        BevelOuter = bvNone
        Color = clMedGray
        ParentBackground = False
        TabOrder = 1
        StyleName = 'Windows'
        object btnExport: TSpeedButton
          Left = 0
          Top = 0
          Width = 150
          Height = 48
          Align = alClient
          Caption = 'Gerar CSV'
          ImageIndex = 0
          Images = imgList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Layout = blGlyphRight
          ParentFont = False
          Spacing = 7
          OnClick = btnExportClick
          ExplicitLeft = 162
          ExplicitTop = 28
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object pnlButtonExit: TPanel
        AlignWithMargins = True
        Left = 904
        Top = 5
        Width = 150
        Height = 48
        Margins.Left = 10
        Margins.Top = 5
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alRight
        BevelOuter = bvNone
        Color = clMedGray
        ParentBackground = False
        TabOrder = 2
        StyleName = 'Windows'
        ExplicitLeft = 900
        object btnSair: TSpeedButton
          Left = 0
          Top = 0
          Width = 150
          Height = 48
          Align = alClient
          Caption = 'Sair'
          ImageIndex = 2
          Images = imgList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Layout = blGlyphRight
          Margin = 38
          ParentFont = False
          Spacing = 15
          OnClick = btnSairClick
          ExplicitLeft = 162
          ExplicitTop = 28
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 1064
      Height = 97
      Align = alTop
      BevelOuter = bvNone
      Color = clMedGray
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 1060
      object pnlDatas: TPanel
        Left = 743
        Top = 0
        Width = 321
        Height = 97
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 739
        object edtDataInicial: TLabeledEdit
          Left = 50
          Top = 49
          Width = 116
          Height = 30
          TabStop = False
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clScrollBar
          EditLabel.Width = 66
          EditLabel.Height = 17
          EditLabel.Caption = 'Data Inicial'
          EditLabel.Font.Charset = ANSI_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -13
          EditLabel.Font.Name = 'Segoe UI Semibold'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 8
          NumbersOnly = True
          ParentFont = False
          TabOrder = 0
          Text = ''
          TextHint = 'Data Inicial'
          OnEnter = edtDataInicialEnter
          OnExit = edtDataInicialExit
          OnKeyPress = edtDataInicialKeyPress
        end
        object edtDataFinal: TLabeledEdit
          Left = 192
          Top = 49
          Width = 118
          Height = 30
          TabStop = False
          AutoSelect = False
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clScrollBar
          EditLabel.Width = 60
          EditLabel.Height = 17
          EditLabel.Caption = 'Data Final'
          EditLabel.Font.Charset = ANSI_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -13
          EditLabel.Font.Name = 'Segoe UI Semibold'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 1
          Text = ''
          TextHint = 'Data Final'
          OnEnter = edtDataFinalEnter
          OnExit = edtDataFinalExit
          OnKeyPress = edtDataFinalKeyPress
        end
      end
      object pnlBusca: TPanel
        Left = 0
        Top = 0
        Width = 585
        Height = 97
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object edtSource: TMaskEdit
          Left = 10
          Top = 49
          Width = 550
          Height = 33
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = ''
          TextHint = 'Buscar pelo c'#243'digo do or'#231'amento'
          OnChange = edtSourceChange
          OnKeyPress = edtSourceKeyPress
        end
      end
      object pnlRegistros: TPanel
        Left = 585
        Top = 0
        Width = 158
        Height = 97
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitWidth = 154
        object lblQuantidadeReg: TLabel
          Left = 4
          Top = 58
          Width = 148
          Height = 21
          Align = alCustom
          Caption = 'Total de Registros: 0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
      end
    end
    object pnlCenter: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 107
      Width = 1044
      Height = 506
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      BevelOuter = bvNone
      Color = clGray
      ParentBackground = False
      TabOrder = 2
      StyleName = 'Windows'
      ExplicitWidth = 1040
      ExplicitHeight = 505
      object dbGridPrincipal: TDBGrid
        Left = 0
        Top = 0
        Width = 1044
        Height = 506
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        TabStop = False
        Align = alClient
        Color = clMedGray
        DataSource = dataSource
        DrawingStyle = gdsGradient
        FixedColor = clMedGray
        GradientEndColor = clBlack
        GradientStartColor = clMedGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clHighlightText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        StyleName = 'Windows'
        Columns = <
          item
            Expanded = False
            FieldName = 'codorcamento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clInfoText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Title.Caption = 'C'#243'digo Or'#231'amento'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clHighlightText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI Semibold'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codproduto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clInfoText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Title.Caption = 'C'#243'digo Produto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clHighlightText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI Semibold'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Font.Charset = ANSI_CHARSET
            Font.Color = clInfoText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Title.Caption = 'Descri'#231#227'o Item'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clHighlightText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI Semibold'
            Title.Font.Style = [fsBold]
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtde'
            Font.Charset = ANSI_CHARSET
            Font.Color = clInfoText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Title.Caption = 'Quantidade'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clHighlightText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI Semibold'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorunitario'
            Font.Charset = ANSI_CHARSET
            Font.Color = clInfoText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Title.Caption = 'Valor Unit'#225'rio'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clHighlightText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI Semibold'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valortotal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clInfoText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Title.Caption = 'Valor Total'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clHighlightText
            Title.Font.Height = -13
            Title.Font.Name = 'Segoe UI Semibold'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end>
      end
    end
  end
  object dataSource: TDataSource
    DataSet = dmDados.fdQueryOrcamento
    Left = 1000
    Top = 522
  end
  object imgList: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Height = 24
    Width = 24
    Left = 933
    Top = 522
    Bitmap = {
      494C010103000800040018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      0000000000000000000000000000000000000000000000000000000000000000
      0076000000FC000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FC000000760000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000004000000A3000000EF000000450000000000000000000000000000
      000000000000000000000000001E0000005100000084000000B7000000EA0000
      00BE000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00B8000000640000003000000030000000300000003000000030000000300000
      0030000000300000003000000030000000300000003000000030000000300000
      0064000000B80000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0003000000A6000000FF000000FF00000082000000000000001A0000004D0000
      0080000000B3000000E8000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00B8000000400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0040000000B80000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      009D000000FF000000FF000000D100000011000000BB000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000C2000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00B8000000400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0040000000B80000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000008C0000
      00FF000000FF000000D90000001800000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00B8000000400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0040000000B80000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000070000003700000050000000590000
      00410000000E000000000000000000000000000000000000008A000000FF0000
      00FF000000DC0000001A0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF00000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000002B0000
      00CC000000760000004800000048000000480000004800000048000000480000
      0048000000480000004800000048000000480000004800000048000000480000
      0076000000CC0000002B00000000000000000000000000000000000000000000
      0000000000000000002B000000A7000000F2000000FF000000FF000000FF0000
      00FF000000FD000000BB0000004B0000000000000080000000FF000000FF0000
      00E10000001F000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF00000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000005E000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000005E000000000000000000000000000000000000
      00030000008C000000FC000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000D0000000FF000000FF000000E50000
      002400000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF00000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000009F000000FF0000
      00FF000000DD000000710000004B0000005F000000C0000000BA000000690000
      00550000009A000000EA000000FF000000FF000000D400000057000000740000
      00FF000000FF000000FF0000009F000000000000000000000000000000050000
      00B6000000FF000000FF000000FC000000AB0000005A000000360000002F0000
      005000000098000000F4000000FF000000FF000000FF000000EA0000002A0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF00000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A0000000FF0000
      00CC0000000A000000020000004400000059000000B90000008A000000400000
      00660000001300000048000000FF000000FF0000007900000002000000010000
      00E2000000FF000000FF000000A0000000000000000000000000000000990000
      00FF000000FF000000D10000002B000000000000000000000000000000000000
      00000000000000000018000000B2000000FF000000FF000000CC000000050000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF00000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A0000000FF0000
      004700000000000000C7000000FF000000FF000000FF000000FF000000FF0000
      00FF0000005500000003000000F5000000FF0000002700000050000000090000
      008D000000FF000000FF000000A0000000000000000000000042000000FF0000
      00FF000000CB0000000C00000000000000000000000000000000000000000000
      0000000000000000000000000002000000A2000000FF000000FF0000007A0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF00000000000000000000000000000000000000C5000000C4000000000000
      00C3000000CB0000001600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A0000000FF0000
      001600000026000000FF000000FF000000FF000000FF000000FF000000BF0000
      00320000000000000055000000FF000000D50000000000000096000000450000
      0037000000FF000000FF000000A00000000000000000000000C7000000FF0000
      00F40000001D0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000008000000D8000000FF000000EC0000
      000C00000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      00CC000000FF000000D300000016000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A0000000FF0000
      002D00000012000000F9000000FF000000FF000000FF000000C0000000000000
      00210000009F000000FE000000FF0000008300000000000000D70000008A0000
      0000000000DF000000FF000000A00000000000000020000000FF000000FF0000
      008A000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000057000000FF000000FF0000
      005600000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0015000000D2000000FF000000D7000000180000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A0000000FF0000
      007A0000000000000087000000F4000000FE000000FA00000085000000000000
      00DB000000FF000000F2000000FF000000310000001F000000FF000000D70000
      00000000008A000000FF000000A00000000000000064000000FF000000FF0000
      0033000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000A000000F5000000FF0000
      009800000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0000000000000000000000C3000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000CB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A0000000FF0000
      00F700000047000000000000000B0000000E00000092000000E50000000C0000
      000E0000001400000052000000DF0000000000000068000000FF000000FF0000
      002400000033000000FF000000A00000000000000081000000FF000000FE0000
      0007000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000D2000000FF0000
      00B700000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0000000000000000000000C5000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000CB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000070000000FF0000
      00FF000000FF000000C300000096000000A5000000E0000000FF000000F60000
      00B30000009D000000D3000000DE000000A0000000D9000000FF000000FF0000
      00C1000000A0000000FC00000070000000000000008E000000FF000000F70000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000C3000000FF0000
      00C300000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0015000000D2000000FF000000D7000000190000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000040000004D0000
      00D50000008E0000006700000067000000670000006700000067000000670000
      0067000000670000006700000067000000670000006700000067000000670000
      008D000000D50000004D000000040000000000000078000000FF000000FF0000
      0010000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000DC000000FF0000
      00AB00000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      00CC000000FF000000D300000016000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00B8000000400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0040000000B800000000000000000000000000000050000000FF000000FF0000
      0050000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001E000000FE000000FF0000
      008300000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF00000000000000000000000000000000000000C3000000C2000000000000
      00C4000000CB0000001600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00B8000000400000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000001C0000003800000038000000380000
      006A000000B80000000000000000000000000000000B000000F6000000FF0000
      00B7000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000084000000FF000000FF0000
      003500000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF00000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00B8000000400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000D8000000FF000000FF000000FF0000
      00FF0000008E0000000000000000000000000000000000000099000000FF0000
      00FF000000530000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000002B000000F5000000FF000000CB0000
      000100000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF00000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00B8000000400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000E0000000FF000000FF000000FF0000
      00BF00000006000000000000000000000000000000000000001A000000F20000
      00FF000000F40000004200000000000000000000000000000000000000000000
      0000000000000000000000000025000000DE000000FF000000FE000000400000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF00000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00B8000000400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000E0000000FF000000FF000000D50000
      00100000000000000000000000000000000000000000000000000000004D0000
      00FD000000FF000000FA00000086000000100000000000000000000000000000
      0000000000060000006B000000EE000000FF000000FF0000007F000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00BE00000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00B8000000400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000E0000000FF000000E60000001E0000
      0000000000000000000000000000000000000000000000000000000000000000
      005C000000F8000000FF000000FF000000F8000000BB00000094000000900000
      00AF000000F0000000FF000000FF000000FF0000008800000001000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000D5000000880000003C0000
      000100000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00B8000000400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000E0000000F300000031000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000036000000C9000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000DF000000530000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0076000000F0000000F0000000F0000000F0000000F0000000F0000000F00000
      00F0000000F0000000F0000000F0000000F70000004900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000480000009A000000D6000000F1000000F60000
      00DC000000AB0000005B00000007000000000000000000000000000000000000
      000000000000000000000000000000000000000000C2000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000C4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
