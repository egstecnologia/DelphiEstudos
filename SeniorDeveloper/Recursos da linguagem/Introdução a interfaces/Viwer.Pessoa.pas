unit Viwer.Pessoa;

interface
type
  TPessoa = class
    private
      FNome : String;
    public
      function ValidarNome : Boolean;
      function Nome ( aValue : String ) : TPessoa;
  end;

implementation

{ TPessoa }

function TPessoa.Nome(aValue: String): TPessoa;
begin
  Result := Self;
  FNome := aValue;
end;

function TPessoa.ValidarNome: Boolean;
begin
  Result := (FNome <> '');
end;

end.
