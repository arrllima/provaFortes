unit Logica3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    mVetor: TMemo;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    vVetorOrdenado : String;
    MeuArray: Array[1..100] of integer;
  public
    { Public declarations }
    function ExisteRepeticao(vVetor : array of Integer) : Boolean;
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}

// ordena o vetor
procedure TForm1.Button1Click(Sender: TObject);
Var
   i, j, x: integer;
begin

   mVetor.Clear;

   for i := Low(MeuArray) to High(MeuArray) do
   begin
    Randomize;
    MeuArray[i] := Random(High(MeuArray));
   end;

   for i := Low(MeuArray) to (High(MeuArray)-1) do
   begin
       for J := i+1 to High(MeuArray) do
       begin
            if MeuArray[i] > MeuArray[j] then
            begin
                 x           := MeuArray[i];
                 MeuArray[i] := MeuArray[j];
                 MeuArray[j] := x;
            end;
       end;
   end;


   vVetorOrdenado := '';
   for i := Low(MeuArray) to High(MeuArray) do
   begin
       vVetorOrdenado := vVetorOrdenado + IntToStr(MeuArray[i]);
       mVetor.Lines.Add(IntToStr(MeuArray[i]));
   end;


end;

// Verifica repeticao
procedure TForm1.Button2Click(Sender: TObject);
begin
   if ExisteRepeticao(MeuArray) then
      ShowMessage('Valores iguais no array')
   else
      ShowMessage('Não há valores repetidos no vetor');

end;

function TForm1.ExisteRepeticao(vVetor: array of Integer): Boolean;
var i, j, x : integer;
begin

   // Ordena o vetor.
   for i := Low(MeuArray) to (High(MeuArray)-1) do
     begin
         for j := i+1 to High(MeuArray) do
         begin
              if vVetor[i] > MeuArray[j] then
              begin
                   x         := vVetor[i];
                   vVetor[i] := vVetor[j];
                   vVetor[j] := x;
              end;
         end;
     end;

   // Verifica repeticao.
   For i:= 1 To High(vVetor) Do
   Begin
      For j := 1 To High(vVetor) Do
      Begin
         If(j <> i)Then
         Begin
            If (MeuArray[i] = vVetor[j]) Then
            Begin
               Result := True;
               Exit;
            End;
         End;
      End;
   End;

   Result := False;

end;

end.
