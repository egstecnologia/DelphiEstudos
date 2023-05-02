unit UDesafio.Validacao;

interface

uses
  UDesafio.Validador.Interfaces, System.Classes, System.Generics.Collections;
  type
   TValidation = class (TInterfacedObject, iValidation)
   private
   FListRules : TList<iValidationRules>;
   FNotNull : iValidationRules;
   public
      constructor Create;
      destructor Destroy; override;
      class function New : ivalidation;
      function NotNull : iValidationRules;

   end;

implementation

uses
  UDesafio.Validador.NotNull;

{ TValidation }

constructor TValidation.Create;
begin
  FListRules := TList<iValidationRules>.Create;
end;

destructor TValidation.Destroy;
begin
  FListRules.Free;

  Inherited;
end;

class function TValidation.New: ivalidation;
begin
  Result := Self.Create;
end;

function TValidation.NotNull: iValidationRules;
begin
  FListRules.Add(TValidationRulesNotNull.New(Self));
  Result := FListRules.Last;
end;

end.
