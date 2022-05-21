object DmDados: TDmDados
  OldCreateOrder = False
  Height = 554
  Width = 346
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://pokeapi.glitch.me'
    Params = <>
    Left = 24
    Top = 24
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Resource = 'v1/pokemon/6'
    Response = RESTResponse1
    Left = 96
    Top = 24
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 176
    Top = 24
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = TPokemons
    FieldDefs = <>
    Response = RESTResponse1
    Left = 264
    Top = 24
  end
  object TPokemons: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'number'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'name'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'species'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'types'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'abilities'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'eggGroups'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'gender'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'height'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'weight'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'family'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'starter'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'legendary'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'mythical'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ultraBeast'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'mega'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'gen'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'sprite'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'description'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 24
    Top = 88
    object TPokemonsnumber: TWideStringField
      FieldName = 'number'
      Size = 255
    end
    object TPokemonsname: TWideStringField
      FieldName = 'name'
      Size = 255
    end
    object TPokemonsspecies: TWideStringField
      FieldName = 'species'
      Size = 255
    end
    object TPokemonstypes: TWideStringField
      FieldName = 'types'
      Size = 255
    end
    object TPokemonsabilities: TWideStringField
      FieldName = 'abilities'
      Size = 255
    end
    object TPokemonseggGroups: TWideStringField
      FieldName = 'eggGroups'
      Size = 255
    end
    object TPokemonsgender: TWideStringField
      FieldName = 'gender'
      Size = 255
    end
    object TPokemonsheight: TWideStringField
      FieldName = 'height'
      Size = 255
    end
    object TPokemonsweight: TWideStringField
      FieldName = 'weight'
      Size = 255
    end
    object TPokemonsfamily: TWideStringField
      FieldName = 'family'
      Size = 255
    end
    object TPokemonsstarter: TWideStringField
      FieldName = 'starter'
      Size = 255
    end
    object TPokemonslegendary: TWideStringField
      FieldName = 'legendary'
      Size = 255
    end
    object TPokemonsmythical: TWideStringField
      FieldName = 'mythical'
      Size = 255
    end
    object TPokemonsultraBeast: TWideStringField
      FieldName = 'ultraBeast'
      Size = 255
    end
    object TPokemonsmega: TWideStringField
      FieldName = 'mega'
      Size = 255
    end
    object TPokemonsgen: TWideStringField
      FieldName = 'gen'
      Size = 255
    end
    object TPokemonssprite: TWideStringField
      FieldName = 'sprite'
      Size = 255
    end
    object TPokemonsdescription: TWideStringField
      FieldName = 'description'
      Size = 255
    end
  end
end
