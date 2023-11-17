object DataModuleSphereHub: TDataModuleSphereHub
  Height = 456
  Width = 729
  PixelsPerInch = 144
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=spherehub'
      'DriverID=MySQL'
      'Password=1234'
      'Server=localhost'
      'Port=3360'
      'User_Name=root')
    Left = 144
    Top = 104
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 288
    Top = 104
  end
end
