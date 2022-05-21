unit UDmDados;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter;

type
  TDmDados = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    TPokemons: TFDMemTable;
    TPokemonsnumber: TWideStringField;
    TPokemonsname: TWideStringField;
    TPokemonsspecies: TWideStringField;
    TPokemonstypes: TWideStringField;
    TPokemonsabilities: TWideStringField;
    TPokemonseggGroups: TWideStringField;
    TPokemonsgender: TWideStringField;
    TPokemonsheight: TWideStringField;
    TPokemonsweight: TWideStringField;
    TPokemonsfamily: TWideStringField;
    TPokemonsstarter: TWideStringField;
    TPokemonslegendary: TWideStringField;
    TPokemonsmythical: TWideStringField;
    TPokemonsultraBeast: TWideStringField;
    TPokemonsmega: TWideStringField;
    TPokemonsgen: TWideStringField;
    TPokemonssprite: TWideStringField;
    TPokemonsdescription: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDados: TDmDados;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
