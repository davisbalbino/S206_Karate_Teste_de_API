Feature: Testando API Cards
Scenario: Testando retorno da API deck
    Given url "https://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1"
    When method get
    Then status 200
    And match response.success == true

Scenario: Testando compra de 2 cartas
    Given url "https://deckofcardsapi.com/api/deck/new/draw/?count=2"
    When method get
    Then status 200
    And match response.remaining == 50

Scenario: Testando embaralhar
    Given url "https://deckofcardsapi.com/api/deck/new/shuffle/"
    When method get
    Then status 200
    And match response.shuffled == true

Scenario: Testanto criar um deck parcial com as cartas A de espadas, e A de copas 
    Given url "https://deckofcardsapi.com/api/deck/new/shuffle/?cards=AS,AH"
    When method get
    Then status 200
    And match response.remaining == 2

Scenario: Testando um deck parcial com duas cartas e comprando 2 (caso de falha)
    Given url "https://deckofcardsapi.com/api/deck/new/shuffle/?cards=AS,AH/draw/?count=2"
    When method get
    Then status 200
    And match response.remaining == 0

#Uma hora o cenário dará certo, mas como são 52 cardas, a chace de dar certo é 1/52. Esse teste mostra que é aleatório a compra de cartas.
Scenario: Testando um deck com 52 cartas e comprando um A de espada 
    Given url "https://deckofcardsapi.com/api/deck/new/draw/?count=1"
    When method get
    Then status 200
    And match response.cards[0].code == "AS"

