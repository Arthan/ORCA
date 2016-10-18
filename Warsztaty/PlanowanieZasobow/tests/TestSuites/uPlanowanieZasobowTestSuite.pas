unit uPlanowanieZasobowTestSuite;

interface

uses
  TestFramework;

type
  TPlanowanieZasobowTestSuite = class(TObject)
  public
    class function GetAllTests: ITestSuite;
  end;

implementation

uses
  UnitTestZasob;

class function TPlanowanieZasobowTestSuite.GetAllTests: ITestSuite;
begin
  Result := TTestSuite.Create('Planowanie zasob�w', [
    TZasobTestCase.Suite()
  ]);
end;

end.
