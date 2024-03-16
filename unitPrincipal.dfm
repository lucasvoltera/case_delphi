object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 280
    Top = 144
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Sistema2: TMenuItem
        Caption = 'Sair'
        ShortCut = 120
        OnClick = Sistema2Click
      end
    end
    object Clientes1: TMenuItem
      Caption = 'Cidades'
      object Clientes2: TMenuItem
        Caption = 'Cadastro'
        OnClick = Clientes2Click
      end
      object Clientes3: TMenuItem
        Caption = 'Consulta'
        OnClick = Clientes3Click
      end
    end
    object Relatorios1: TMenuItem
      Caption = 'Clientes'
      object Cadastro1: TMenuItem
        Caption = 'Cadastro'
        OnClick = Cadastro1Click
      end
      object Cadastro2: TMenuItem
        Caption = 'Consulta'
        OnClick = Cadastro2Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
    end
  end
end
