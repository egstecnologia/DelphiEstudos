unit View.Pessoa;

interface
Uses
  SysUtils;
type
  TPessoa = class
  private
    FSobrenome : String;
    FNome : String;
    FUltimoNome: String;
    procedure SetUltimoNome(const Value: String);
  public
    function Nome ( aValue : String ) : TPessoa; overload;
    function Nome : String; overload;
    function Sobrenome ( aValue : String ) : TPessoa overload;
    function Sobrenome : String; overload;

    property UltimoNome : String read FUltimoNome write SetUltimoNome;

  end;

implementation

{ TPessoa }

function TPessoa.Nome(aValue: String): TPessoa;
begin
  Result := Self;
  if Trim(aValue) = '' then
    raise Exception.Create('Nome n�o pode ser Vazio');
  FNome  := aValue;
end;

function TPessoa.Nome: String;
begin
  Result := FNome;
end;

function TPessoa.Sobrenome(aValue: String): TPessoa;
begin
  Result := Self;
  FSobrenome := aValue;
end;

procedure TPessoa.SetUltimoNome(const Value: String);
begin
  FUltimoNome := Value;
end;

function TPessoa.Sobrenome: String;
begin
  Result := FSobrenome;
end;

end.
