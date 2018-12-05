unit UCalculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Math.Vectors, FMX.Controls3D,
  FMX.Layers3D, FMX.Layouts, FMX.Edit;

type
  TForm1 = class(TForm)
    btn0: TButton;
    Button1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btnPonto: TButton;
    btnIgual: TButton;
    btnSoma: TButton;
    btnSubtrai: TButton;
    btnMultiplica: TButton;
    btnDivide: TButton;
    btnPorcento: TButton;
    cxBotoes: TLayout;
    cxVisor: TLayout;
    lbOperador: TLabel;
    lbNum1: TLabel;
    lbNum2: TLabel;
    btnLimpar: TButton;
    btnApaga: TButton;
    procedure btnSubtraiClick(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure btnMultiplicaClick(Sender: TObject);
    procedure btnDivideClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnApagaClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btnPontoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn0Click(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbNum1.Text := lbNum1.Text + '0';
  end
  else
  begin
    lbNum2.Text := lbNum2.Text + '0';
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbNum1.Text := lbNum1.Text + '2';
  end
  else
  begin
    lbNum2.Text := lbNum2.Text + '2';
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbNum1.Text := lbNum1.Text + '3';
  end
  else
  begin
    lbNum2.Text := lbNum2.Text + '3';
  end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbNum1.Text := lbNum1.Text + '4';
  end
  else
  begin
    lbNum2.Text := lbNum2.Text + '4';
  end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbNum1.Text := lbNum1.Text + '5';
  end
  else
  begin
    lbNum2.Text := lbNum2.Text + '5';
  end;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbNum1.Text := lbNum1.Text + '6';
  end
  else
  begin
    lbNum2.Text := lbNum2.Text + '6';
  end;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbNum1.Text := lbNum1.Text + '7';
  end
  else
  begin
    lbNum2.Text := lbNum2.Text + '7';
  end;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbNum1.Text := lbNum1.Text + '8';
  end
  else
  begin
    lbNum2.Text := lbNum2.Text + '8';
  end;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbNum1.Text := lbNum1.Text + '9';
  end
  else
  begin
    lbNum2.Text := lbNum2.Text + '9';
  end;
end;

procedure TForm1.btnApagaClick(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbNum1.Text := copy(lbNum1.Text,0,length(lbNum1.Text)-1);
  end
  else
  begin
    lbNum2.Text := copy(lbNum2.Text,0,length(lbNum2.Text)-1);
  end;
end;

procedure TForm1.btnDivideClick(Sender: TObject);
begin
  lbOperador.Text := '/';
  btnSoma.Enabled := true;
  btnSubtrai.Enabled := true;
  btnMultiplica.Enabled := true;
  btnDivide.Enabled := false;
end;

procedure TForm1.btnIgualClick(Sender: TObject);
var
  n1, n2, n3 : double;
  x : Char;
begin
  n1 := StrToFloat(lbNum1.Text);
  n2 := StrToFloat(lbNum2.Text);


  // soma
  if lbOperador.Text = '+' then
  begin
    ShowMessage(FloatToStr(n1 + n2));
  end;

  // subtracao
  if lbOperador.Text = '-' then
  begin
    ShowMessage(FloatToStr(n1 - n2));
  end;

  // multiplicacao
  if lbOperador.Text = '*' then
  begin
    ShowMessage(FloatToStr(n1 * n2));
  end;

  // divisao
  if lbOperador.Text = '/' then
  begin
    ShowMessage(FloatToStr(n1 / n2));
  end;

  {
  x := lbOperador.Text[1];
  case x of
    '+' : begin
      ShowMessage(FloatToStr(n1 + n2));
    end;
    '-' : begin
      ShowMessage(FloatToStr(n1 - n2));
    end;
    '*' : begin
      ShowMessage(FloatToStr(n1 * n2));
    end;
    '/' : begin
      ShowMessage(FloatToStr(n1 / n2));
    end;
  }

end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
  lbNum1.Text := '';
  lbNum2.Text := '';
  lbOperador.Text := '.';
  btnSoma.Enabled := true;
  btnSubtrai.Enabled := true;
  btnMultiplica.Enabled := true;
  btnDivide.Enabled := true;
end;

procedure TForm1.btnMultiplicaClick(Sender: TObject);
begin
  lbOperador.Text := '*';
  btnSoma.Enabled := true;
  btnSubtrai.Enabled := true;
  btnMultiplica.Enabled := false;
  btnDivide.Enabled := true;
end;

procedure TForm1.btnPontoClick(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbNum1.Text := lbNum1.Text + ',';
  end
  else
  begin
    lbNum2.Text := lbNum2.Text + ',';
  end;
end;

procedure TForm1.btnSubtraiClick(Sender: TObject);
begin
  lbOperador.Text := '-';
  btnSoma.Enabled := true;
  btnSubtrai.Enabled := false;
  btnMultiplica.Enabled := true;
  btnDivide.Enabled := true;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbNum1.Text := lbNum1.Text + '1';
  end
  else
  begin
    lbNum2.Text := lbNum2.Text + '1';
  end;
end;

procedure TForm1.btnSomaClick(Sender: TObject);
begin
  lbOperador.Text := '+';
  btnSoma.Enabled := false;
  btnSubtrai.Enabled := true;
  btnMultiplica.Enabled := true;
  btnDivide.Enabled := true;
end;

end.
