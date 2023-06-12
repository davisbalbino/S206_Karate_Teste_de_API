Feature: Testando API Pokemon

Background: Executa antes de cada teste
    * def url_base = 'https://pokeapi.co/api/v2/'

Scenario: Testando retorno peple/1/
    Given url "https://pokeapi.co/api/v2/pokemon/ditto"
    When method get
    Then status 200

Scenario: Testando retorno peple/1/ com informacões invalidas
    Given url "https://pokeapi.co/api/v2/pokemon/chocolate"
    When method get
    Then status 404

Scenario: Teste retorno pikachu e verificando JSON
    Given url url_base
    And path 'pokemon/ditto'
    When method get
    Then status 200
    And match response.name == 'ditto'

Scenario: Teste retorno Pokemon Rede entrando em um dos elementos do array de idiomas e testando retorno JSON
    Given url url_base
    And path 'version/1'
    When method get
    Then status 200
    And def idioma = $.names[5].language.url
    And print idioma
    And url idioma
    When method get
    Then status 200
    Then match response.name == 'es'
    And match response.id == 7

Scenario: Teste retorno Pokemon chandelure 
    Given url url_base
    And path 'pokemon/chandelure'
    When method get
    Then status 200
    
Scenario: Teste retorno Pokemon chandelure 
    Given url url_base
    And path 'pokemon/chandelure'
    When method get
    Then status 200
    And def habilidade = $.abilities[1].ability.url
    And print habilidade
    And url habilidade
    When method get
    Then status 200
    Then match response.name == 'flame-body'
    
    

