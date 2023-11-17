object DataModuleSphereHub: TDataModuleSphereHub
  Height = 380
  Width = 608
  PixelsPerInch = 120
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=spherehub'
      'DriverID=MySQL'
      'Password=1234'
      'Server=localhost'
      'Port=3360'
      'User_Name=root'
      'CharacterSet=utf8')
    Left = 120
    Top = 87
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 327
    Top = 87
  end
end
