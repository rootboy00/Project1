object Form1: TForm1
  Left = 216
  Top = 131
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Calculator'
  ClientHeight = 177
  ClientWidth = 226
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BgImg: TImage
    Tag = 1100
    Left = 0
    Top = 0
    Width = 226
    Height = 177
    AutoSize = True
    OnMouseDown = BgImgMouseDown
  end
  object Label1: TLabel
    Left = 15
    Top = 33
    Width = 196
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Transparent = True
  end
  object Img0: TImage
    Left = 15
    Top = 141
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object Img1: TImage
    Tag = 1
    Left = 15
    Top = 116
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object img4: TImage
    Tag = 4
    Left = 15
    Top = 91
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object img5: TImage
    Tag = 5
    Left = 55
    Top = 91
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object IMg2: TImage
    Tag = 2
    Left = 55
    Top = 116
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object img3: TImage
    Tag = 3
    Left = 95
    Top = 116
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object img6: TImage
    Tag = 6
    Left = 95
    Top = 91
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object img7: TImage
    Tag = 7
    Left = 15
    Top = 66
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object img8: TImage
    Tag = 8
    Left = 55
    Top = 66
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object img9: TImage
    Tag = 9
    Left = 95
    Top = 66
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object ImgPlus: TImage
    Tag = 12
    Left = 135
    Top = 91
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object ImgMin: TImage
    Tag = 13
    Left = 175
    Top = 91
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object ImgMult: TImage
    Tag = 10
    Left = 135
    Top = 116
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object ImgDiv: TImage
    Tag = 11
    Left = 175
    Top = 116
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object ImgEqual: TImage
    Tag = 14
    Left = 135
    Top = 141
    Width = 70
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object ImgClose: TImage
    Tag = 1100
    Left = 195
    Top = 10
    Width = 16
    Height = 16
    Cursor = crHandPoint
    Hint = 'Exit'
    ParentShowHint = False
    Picture.Data = {
      07544269746D617036030000424D360300000000000036000000280000001000
      000010000000010018000000000000030000C40E0000C40E0000000000000000
      000000FF0000FF0000FF0000FF0000FF0093837169523A634B32634B3269523A
      93837100FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF009886737256
      3975583A7256396B5035634B32634B32634B32634B3293837100FF0000FF0000
      FF0000FF0000FF00957A5E936F4A98724C97724C936F4A8C694681614173573A
      634B32634B32634B327A655000FF0000FF0000FF00B69D83AA8055AF875DAF87
      5EAE865CAC8358A67D539D774F906D487F5F3F684F34634B32634B3293837100
      FF0000FF00B28B64B89570BA9773B99672B89470B6926CB48F68B18961A98055
      98734C836241684F34634B32634B3200FF00CAB095BF9E7DC2A384C2A3840000
      00D6C1ACBD9C7ABD9B79BB9976B6916B000000D6C1AC7F5F3F634B32634B3293
      8371C0A181C8AC8FC9AE92C8AC90C5A88B000000D6C1ACC0A181C0A181000000
      D6C1ACA98055906D4873573A634B3269523AC7AA8DCFB69DCFB79ECDB49AC9AE
      92C4A687000000D6C1AC000000D6C1ACBB9976B189619D774F816141634B3263
      4B32CDB399D4BEA8D4BFA9D2BBA3CDB399C5A88BC0A181000000D6C1ACC0A181
      BD9B79B48F68A67D538C69466B5035634B32D2BBA3D8C5B1D9C6B2D6C1ACD1BA
      A2CAAF93000000D6C1AC000000D6C1ACBD9C7AB6926CAC8358936F4A72563969
      523ADFCFBEDBC9B6DDCBB9DAC8B5D6C1AC000000D6C1ACC5A88BC4A687000000
      D6C1ACB89470AE865C97724C75583A93837100FF00DBC9B6DFCFBEDECDBC0000
      00D6C1ACD1BAA2CDB399C9AE92C5A88B000000B99672AF875E98724C72563900
      FF0000FF00E3D5C6DFCFBEE0D1C1DECDBCDAC8B5D6C1ACD2BBA3CDB49AC8AC90
      C2A384BA9773AF875D936F4A98867300FF0000FF0000FF00DFCEBDDFCFBEDFCF
      BEDDCBB9D9C6B2D4BFA9CFB79EC9AE92C2A384B89570AA8055957A5E00FF0000
      FF0000FF0000FF0000FF00E3D5C6DBC9B6DBC9B6D8C5B1D4BEA8CFB69DC8AC8F
      BF9E7DB28B64B69D8300FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
      00DFCFBED2BBA3CDB399C7AA8DC0A181CAB09500FF0000FF0000FF0000FF0000
      FF00}
    ShowHint = True
    Transparent = True
    OnClick = ImgCloseClick
  end
  object ImgMinimize: TImage
    Tag = 1100
    Left = 170
    Top = 10
    Width = 16
    Height = 16
    Cursor = crHandPoint
    Hint = 'Minimize'
    ParentShowHint = False
    Picture.Data = {
      07544269746D617036030000424D360300000000000036000000280000001000
      000010000000010018000000000000030000C40E0000C40E0000000000000000
      000000FF0000FF0000FF0000FF0000FF0093837169523A634B32634B3269523A
      93837100FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF009886737256
      3975583A7256396B5035634B32634B32634B32634B3293837100FF0000FF0000
      FF0000FF0000FF00957A5E936F4A98724C97724C936F4A8C694681614173573A
      634B32634B32634B327A655000FF0000FF0000FF00B69D83AA8055AF875DAF87
      5EAE865CAC8358A67D539D774F906D487F5F3F684F34634B32634B3293837100
      FF0000FF00B28B64B89570BA9773B99672B89470B6926CB48F68B18961A98055
      98734C836241684F34634B32634B3200FF00CAB095BF9E7DC2A384C2A384C0A1
      81BF9E7DBD9C7ABD9B79BB9976B6916BAD845A98734C7F5F3F634B32634B3293
      8371C0A181C8AC8FC9AE92C8AC90C5A88BC2A484C0A181C0A181C0A181BF9E7D
      B6916BA98055906D4873573A634B3269523AC7AA8DCFB69DCFB79ECDB49AD4BE
      A8D4BEA8D4BEA8D4BEA8D4BEA8D4BEA8D4BEA8B189619D774F816141634B3263
      4B32CDB399D4BEA8D4BFA9D2BBA3634B32634B32634B32634B32634B32634B32
      D4BEA8B48F68A67D538C69466B5035634B32D2BBA3D8C5B1D9C6B2D6C1ACD1BA
      A2CAAF93C2A484C0A181C0A181C0A181BD9C7AB6926CAC8358936F4A72563969
      523ADFCFBEDBC9B6DDCBB9DAC8B5D6C1ACD0B8A0CAAF93C5A88BC4A687C2A484
      BF9E7DB89470AE865C97724C75583A93837100FF00DBC9B6DFCFBEDECDBCDBC8
      B5D6C1ACD1BAA2CDB399C9AE92C5A88BC0A181B99672AF875E98724C72563900
      FF0000FF00E3D5C6DFCFBEE0D1C1DECDBCDAC8B5D6C1ACD2BBA3CDB49AC8AC90
      C2A384BA9773AF875D936F4A98867300FF0000FF0000FF00DFCEBDDFCFBEDFCF
      BEDDCBB9D9C6B2D4BFA9CFB79EC9AE92C2A384B89570AA8055957A5E00FF0000
      FF0000FF0000FF0000FF00E3D5C6DBC9B6DBC9B6D8C5B1D4BEA8CFB69DC8AC8F
      BF9E7DB28B64B69D8300FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
      00DFCFBED2BBA3CDB399C7AA8DC0A181CAB09500FF0000FF0000FF0000FF0000
      FF00}
    ShowHint = True
    Transparent = True
    OnClick = ImgMinimizeClick
  end
  object PointImg: TImage
    Tag = 15
    Left = 55
    Top = 141
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object CImg: TImage
    Tag = 32
    Left = 135
    Top = 66
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
  object AcImg: TImage
    Tag = 33
    Left = 175
    Top = 66
    Width = 30
    Height = 20
    Cursor = crHandPoint
    Transparent = True
    OnMouseDown = Img0MouseDown
    OnMouseMove = Img0MouseMove
    OnMouseUp = Img0MouseUp
  end
end
