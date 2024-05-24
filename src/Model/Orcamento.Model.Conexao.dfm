object dmDados: TdmDados
  Height = 393
  Width = 518
  object fdQueryOrcamento: TFDQuery
    Connection = fdConnection
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 10000000
    SQL.Strings = (
      '')
    Left = 299
    Top = 240
  end
  object fdPgLink: TFDPhysPgDriverLink
    VendorHome = 'C:\Users\Usuario\Documents\ZOrcamento\Exe'
    Left = 384
    Top = 240
  end
  object fdConnection: TFDConnection
    Params.Strings = (
      'Server='
      'Port='
      'LoginTimeout=1'
      'DriverID=PG')
    LoginPrompt = False
    Left = 100
    Top = 240
  end
  object fdCreateFunction: TFDCommand
    Connection = fdConnection
    CommandText.Strings = (
      'CREATE OR REPLACE FUNCTION public.orcamentosexcluidos('
      '    datainicial DATE,'
      '    datafinal DATE'
      ') '
      'RETURNS TABLE ('
      '    codorcamento INTEGER,'
      '    codproduto INTEGER,'
      '    nome VARCHAR(2000),'
      '    qtde NUMERIC(10,2),'
      '    valorunitario MONEY,'
      '    valortotal MONEY'
      ') AS $$'
      'BEGIN'
      '    RETURN QUERY '
      '    WITH codproduto_data AS ('
      '        SELECT '
      '            antigo::INTEGER AS codproduto, '
      '            valorchave'
      '        FROM vauditoria_campos'
      '        WHERE data BETWEEN datainicial AND datafinal'
      '        AND campo = '#39'codproduto'#39
      '        AND operacao = '#39'DELETE'#39
      '        AND tabela = '#39'orcamentosprod'#39
      '    ),'
      '    nome_data AS ('
      '        SELECT '
      '            REPLACE(antigo, '#39'\"'#39', '#39#39') AS nome, '
      '            valorchave'
      '        FROM vauditoria_campos'
      '        WHERE data BETWEEN datainicial AND datafinal'
      '        AND campo = '#39'nome'#39
      '        AND operacao = '#39'DELETE'#39
      '        AND tabela = '#39'orcamentosprod'#39
      '    ),'
      '    qtde_data AS ('
      '        SELECT '
      '            REPLACE(antigo, '#39'\"'#39', '#39#39')::NUMERIC AS qtde, '
      '            valorchave'
      '        FROM vauditoria_campos'
      '        WHERE data BETWEEN datainicial AND datafinal'
      '        AND campo = '#39'qtde'#39
      '        AND operacao = '#39'DELETE'#39
      '        AND tabela = '#39'orcamentosprod'#39
      '    ),'
      '    valorunitario_data AS ('
      '        SELECT '
      
        '            REPLACE(antigo, '#39'\"'#39', '#39#39')::NUMERIC AS valorunitario,' +
        ' '
      '            valorchave'
      '        FROM vauditoria_campos'
      '        WHERE data BETWEEN datainicial AND datafinal'
      '        AND campo = '#39'valorunitario'#39
      '        AND operacao = '#39'DELETE'#39
      '        AND tabela = '#39'orcamentosprod'#39
      '    ),'
      '    valortotal_data AS ('
      '        SELECT '
      '            REPLACE(antigo, '#39'\"'#39', '#39#39')::NUMERIC AS valortotal, '
      '            valorchave'
      '        FROM vauditoria_campos'
      '        WHERE data BETWEEN datainicial AND datafinal  '
      '        AND campo = '#39'valortotal'#39
      '        AND operacao = '#39'DELETE'#39
      '        AND tabela = '#39'orcamentosprod'#39
      '    ),'
      '    codorcamento_data AS ('
      '        SELECT '
      '            REPLACE(antigo, '#39'\"'#39', '#39#39')::INTEGER AS codorcamento, '
      '            valorchave'
      '        FROM vauditoria_campos'
      '        WHERE data BETWEEN datainicial AND datafinal  '
      '        AND campo = '#39'codorcamento'#39
      '        AND operacao = '#39'DELETE'#39
      '        AND tabela = '#39'orcamentosprod'#39
      '    )'
      '    SELECT '
      '        codorcamento_data.codorcamento, '
      '        codproduto_data.codproduto, '
      '        REPLACE(nome_data.nome, '#39'"'#39', '#39#39')::VARCHAR(2000), '
      '        ROUND(qtde_data.qtde, 2) AS qtde, '
      
        '        ROUND(valorunitario_data.valorunitario, 2)::MONEY AS val' +
        'orunitario, '
      
        '        ROUND(valortotal_data.valortotal, 2)::MONEY AS valortota' +
        'l '
      '    FROM codproduto_data'
      
        '    LEFT JOIN nome_data ON codproduto_data.valorchave = nome_dat' +
        'a.valorchave'
      
        '    LEFT JOIN qtde_data ON codproduto_data.valorchave = qtde_dat' +
        'a.valorchave'
      
        '    LEFT JOIN valorunitario_data ON codproduto_data.valorchave =' +
        ' valorunitario_data.valorchave'
      
        '    LEFT JOIN valortotal_data ON codproduto_data.valorchave = va' +
        'lortotal_data.valorchave'
      
        '    LEFT JOIN codorcamento_data ON codproduto_data.valorchave = ' +
        'codorcamento_data.valorchave'
      '    ORDER BY codorcamento_data.codorcamento;'
      'END;'
      '$$ LANGUAGE plpgsql VOLATILE COST 100 ROWS 1000;'
      ''
      'ALTER FUNCTION public.orcamentosexcluidos(date, date)'
      '    OWNER TO postgres;')
    Left = 192
    Top = 240
  end
end
