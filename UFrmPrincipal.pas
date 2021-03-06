unit UFrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.StdCtrls, FMX.Controls.Presentation, System.Rtti,
  System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.Objects,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent;

type
  TFrmPokedex = class(TForm)
    lvPokemons: TListView;
    ToolBar1: TToolBar;
    btnLoad: TSpeedButton;
    lbLoad: TLabel;
    lbTool: TLabel;
    procedure btnLoadClick(Sender: TObject);
    procedure EndProgress(Sender: TObject);
    procedure AddPokemon(id: Integer; Nome, Imagem, Especie, Detalhes: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPokedex: TFrmPokedex;

implementation

{$R *.fmx}

Uses UDmDados, Loading;

procedure TFrmPokedex.AddPokemon(id: Integer;
  Nome, Imagem, Especie, Detalhes: String);
var
  ms: TMemoryStream;
  httpCli: TNetHTTPClient;
  resp: IHTTPResponse;
  url: String;
  Img: TImage;
begin
  with lvPokemons.Items.Add do
  begin
    TListItemText(Objects.FindDrawable('Text1')).Text := Nome;
    TListItemText(Objects.FindDrawable('Text3')).Text := Especie;
    TListItemText(Objects.FindDrawable('Text4')).Text := Detalhes;
    Img := TImage.Create(nil);
    httpCli := TNetHTTPClient.Create(nil);
    try
      httpCli.UserAgent := 'Delphi/4.0 (compatible; Delphi; HttpClient)';
      ms := TMemoryStream.Create();
      try
        url := Imagem;
        resp := httpCli.Get(url, ms);
        if resp.StatusCode <> 200 then
        else
        begin
          ms.Position := 0;
          Img.Bitmap.LoadFromStream(ms);
          TListItemImage(Objects.FindDrawable('Image2')).Bitmap := Img.Bitmap;
        end;
      finally
        ms.Free;
      end;
    finally
      httpCli.Free;
    end;
  end;
end;

procedure TFrmPokedex.EndProgress(Sender: TObject);
begin
  TThread.Synchronize(TThread.Current,
  procedure
  begin
    lbLoad.Visible := False;
  TLoading.Hide;
  end);
end;

procedure TFrmPokedex.btnLoadClick(Sender: TObject);
var
  Thread: TThread;
begin
  Thread := TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize(TThread.Current,
        procedure
        begin
          lvPokemons.Items.Clear;
          lbLoad.Visible := True;
          lbLoad.Text := 'Loading...';
          TLoading.Show(Self,'Loading...');
        end);
      Dmdados.RESTRequest1.Execute;
      lvPokemons.BeginUpdate;
      TThread.Synchronize(TThread.Current,
        procedure
        begin
          while not Dmdados.TPokemons.eof do
          begin
            AddPokemon(Dmdados.TPokemons.FieldByName('number').AsInteger,
              Dmdados.TPokemons.FieldByName('name').AsString,
              Dmdados.TPokemons.FieldByName('sprite').AsString,
              Dmdados.TPokemons.FieldByName('species').AsString,
              Dmdados.TPokemons.FieldByName('description').AsString);
            Dmdados.TPokemons.Next;
          end;
        end);
      lvPokemons.EndUpdate;
    end);
  Thread.OnTerminate := EndProgress;
  Thread.Start;
end;

end.
