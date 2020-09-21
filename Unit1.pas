unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, math, StdCtrls, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    BgImg: TImage;
    Img0: TImage;
    Img1: TImage;
    img4: TImage;
    img5: TImage;
    IMg2: TImage;
    img3: TImage;
    img6: TImage;
    img7: TImage;
    img8: TImage;
    img9: TImage;
    ImgPlus: TImage;
    ImgMin: TImage;
    ImgMult: TImage;
    ImgDiv: TImage;
    ImgEqual: TImage;
    ImgClose: TImage;
    ImgMinimize: TImage;
    PointImg: TImage;
    CImg: TImage;
    AcImg: TImage;
    procedure FormCreate(Sender: TObject);
    procedure BtnDivClick(Sender: TObject);
    Procedure Do_Operation;
    Procedure FindResult(Op:Byte);
    procedure Img0MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Img0MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Img0MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgMinimizeClick(Sender: TObject);
    procedure ImgCloseClick(Sender: TObject);
    procedure BgImgMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    //procedure img7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  numb1,numb2,result,mem1:Extended;
  Operation:byte; //1=addition, 2=subtr., 3=Multip., 4=div.
  comma,ok,Xy,Pressed:boolean;

implementation
{$R *.dfm}

Procedure TForm1.Do_Operation;
begin

     if operation=0 then begin
        numb1:=StrToFloat(Label1.Caption);
     end
     else begin
          numb2:=StrToFloat(label1.caption);
          FindResult(Operation);
     end;
     Ok:=True;
     Comma:=False;
end;

Procedure TForm1.FindResult(Op:byte);
begin
     try
     case Op of
          1: Result:=(numb1+numb2); //Fix
          2: Result:=(numb1-numb2);
          3: Result:=(numb1*numb2);
          4: Result:=(numb1/numb2);
     end;
         except
          On EZeroDivide do showmessage('Деление на ноль невозможно!');
          On EDivByZero do showmessage('Деление на ноль невозможно!');
          end;
     numb1:=result;
     label1.Caption:=FloatToStr(result);
     Operation:=0;
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:byte;
    Rgn:Thandle;
begin
     Rgn:=CreateRoundRectRgn(0,0,BgImg.width,BgImg.Height,20,20);
     SetWindowRgn(handle,Rgn,true);
     DeleteObject(Rgn);
     Label1.Caption:='0';
     numb1:=0;
     numb2:=0;
     Mem1:=0;
     comma:=false;
     Xy:=False;
     Operation:=0;
     Result:=0;
     Pressed:=False;
     for i:=0 to ComponentCount-1 do
         if (Components[i] is TImage) then
            if (TImage(Components[i]).Tag<1000) then
               TImage(Components[i]).Picture.Bitmap.LoadFromResourceID
               (hInstance,(TImage(Components[i]).Tag+1)*10);
end;

procedure TForm1.BtnDivClick(Sender: TObject);
begin
     if Ok then exit;
     Do_Operation;
     Operation:=4;
end;

procedure TForm1.Img0MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     if Button<>MBLeft then exit;
     TImage(sender).Picture.Bitmap.LoadFromResourceID(hInstance,(Timage(sender).Tag+1)*10+1);
     Pressed:=True;
end;

procedure TForm1.Img0MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i,m:extended;
begin
     if (Button<>MBLeft) or not Pressed then exit;
     TImage(sender).Picture.Bitmap.LoadFromResourceID(hInstance,(Timage(sender).Tag+1)*10);
     case TImage(sender).Tag of
     0..9: begin // numbers 0..9
           if (Label1.Caption='0') then Label1.Caption:='';
           if (Ok and not Comma) then begin
              Label1.Caption:='';
              Ok:=False;
           end;
           if Length(Label1.Caption)>=15 then exit;
           Label1.Caption:=Label1.Caption+IntToStr(TImage(sender).Tag)
           end;
     10..13: begin  // opeartions +-*/
             if Ok then exit;
             Do_Operation;
             Operation:=TImage(sender).tag-9;
             end;
     14:
        do_operation;
     15: begin // comma (point)
         if (Pos(',',Label1.Caption)>0) and (Operation=0)  then exit;
         if not ok then
            Label1.Caption:=Label1.Caption+','
         else
             Label1.Caption:='0,';
         comma:=True;
         end;
     28: begin // +/-
         if Label1.Caption='0' then exit;
         If Copy(label1.Caption,Length(Label1.Caption),1)='E' then
            Label1.Caption:=Label1.Caption+'-'
         else if Copy(label1.Caption,Length(Label1.Caption),1)='-' then
              Copy(label1.Caption,1,Length(Label1.Caption)-1)
         else if copy(Label1.Caption,1,1)='-' then
              Label1.Caption:=copy(Label1.Caption,2,Length(label1.Caption))
         else
             Label1.Caption:='-'+Label1.Caption;
         If Operation=0 then numb1:=StrToFloat(Label1.Caption);
         end;
     32: begin //C
         if operation=0 then numb1:=0
         else numb2:=0;
         label1.Caption:= '';
         end;
     33: begin //AC
         numb1:=0;
         numb2:=0;
         Result:=0;
         Comma:=False;
         Ok:=False;
         Operation:=0;
         Label1.Caption:='0';
         end;
     end; 
end;


procedure TForm1.Img0MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     If Not (ssLeft in shift) then exit;
     if (x<=0) or (x>=(sender as TImage).width) or
        (y<=0) or (y>=(sender as TImage).Height) then
     begin
        TImage(sender).Picture.Bitmap.LoadFromResourceID
        (hInstance,(Timage(sender).Tag+1)*10);
        Pressed:=False;
     end
     else begin
         TImage(sender).Picture.Bitmap.LoadFromResourceID
         (hInstance,(Timage(sender).Tag+1)*10+1);
     end;
end;

procedure TForm1.ImgMinimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure TForm1.ImgCloseClick(Sender: TObject);
begin
     Application.Terminate;
end;

procedure TForm1.BgImgMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     ReleaseCapture;
     Form1.Perform(Wm_SysCommand,$F012,0);
end;

end.
