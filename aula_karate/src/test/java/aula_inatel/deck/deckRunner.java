package aula_inatel.deck;

import com.intuit.karate.junit5.Karate;


public class deckRunner {
    @Karate.Test
    Karate testDeck() {
        return Karate.run("deck").relativeTo(getClass());
    }    

}
