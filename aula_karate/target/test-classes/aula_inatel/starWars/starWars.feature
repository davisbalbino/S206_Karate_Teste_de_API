Feature: Testando API StarWars

Scenario: Testando retorno peple/1/
    Given url "https://swapi.dev/api/people/1/"
    When method get
    Then status 200

Scenario: Testando retorno peple/1/ com informacões invalidas
    Given url "https://swapi.dev/api/people/1/1234"
    When method get
    Then status 404


