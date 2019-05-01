// - Koala walks into the door
// *   ...What are you doing here?
//     I am here to make some tea my dude
//     * *     Why?
//             Because tea is so delicious
//             * * *   That makes sense. <>
//             * * *   You're wrong for that
//                     You did not just say that. <>
//     * *     That's fun. <>
// *   ...Hello Koala <>
// - That was all
// - -> END


//- I looked at Monsieur Fogg 
//*   ... and I could contain myself no longer.
//    'What is the purpose of our journey, Monsieur?'
//    'A wager,' he replied.
//    * *     'A wager!'[] I returned.
//            He nodded. 
//            * * *   'But surely that is foolishness!'
//            * * *  'A most serious matter then!'
//            - - -   He nodded again.
//            * * *   'But can we win?'
//                    'That is what we will endeavour to find out,' he answered.
//            * * *   'A modest wager, I trust?'
//                    'Twenty thousand pounds,' he replied, quite flatly.
//            * * *   I asked nothing further of him then[.], and after a final, polite cough, he offered nothing more to me. <>
//    * *     'Ah[.'],' I replied, uncertain what I thought.
//    - -     After that, <>
//*   ... but I said nothing[] and <>
//- we passed the day in silence.
//- -> END

VAR beenrooibos = false
VAR beenaurora = false
VAR beenmatcha = false

-   I wipe down the counter for the fifteenth time today. It's so hard to believe that in only a few days the grand opening is coming! Finally my tea shop will be open! I've been waiting for as long as I can remember for this moment.

-   My mother bought this tea shop when she was my age and it was the greatest tea shop in town. People from miles and miles around would come to try her famous Gold Leaf Tea and she loved it. One day, she just closed shop with almost no noticed. She didn't tell anyone, even her own mother. Of course, I was born after all of this happened, but ever since I first saw a picture of what this tea shop used to be when I was five years old, I knew I wanted to reopen it no matter how I would do it.

-   I raised enough money to buy the shop a lot faster than I thought. After years of bussing tables, manning cash registers, and serving grumpy old men, I finally did it. Surprisingly, the shop wasn't that expensive. No one seemed to want this enchanting place. Sure, it's a little rough around the edges, but at the end of the day, it feels more like home to me than any other place I've ever lived.

-   (*shop keeper's bell rings at door*)

-   "Mom! What are you doing here?" I ask her. She walks in, taking in the shop. It's probably been years since she's actually been inside. She wasn't exactly thrilled that I used my hard earned money to buy the shop back. 

-   "You think I would miss my baby's grand opening?" she said, smiling gently.

-   "The opening isn't even for a few days! There's still so much to do before I officially open..." I remind her. The last couple of years, mom's health has been deteriorating a bit. She walks slower and forgets more and more things, but she's doing better than her mother did at her age. 

-   "Oh that's right," she remembers, picking at a piece of dust near the old cash register. "Are you absolutely sure that this is what you want to do? Don't worry about the money. I can get you your money back and you'll be out of this in no time-" she rushes out. 

-   "Mom, stop! Of course I do. It's my dream," I tell her for the fifth time this week. My mom has been asking me this same question almost every day ever since I put down my first deposit.

-   "You're far too young to be living your dream. You need to have more experiences first. You've hardly lived! You're hardly 20 and you've already settled down. It's not right for a young person like you," she tells me, scolding me like I'm 10 years old.

-   I take her hand to stop her frantic speaking. "I am sure mother. I'm excited. I'm doing this for both of us. Why can't you be happy for me?" I ask her. 

-   She looks at me sadly for a moment and then looks away, starting to dust random corners of the shop that I've already dusted a million times. We clean in silence for a moment. "Do you have any advice for me? I mean, this is your shop after all..." I ask her, trying to lighten the mood.

-   "Oh, honey it's been years since this was my shop. I hardly remember owning the shop," she admits. 

-   "Well, can you finally tell me the secret to your Golden Eucalyptus Tea? I thought I should serve it too," I tell her proudly.

-   She looks at me seriously for a moment and then smiles. "You need a Golden Eucalyptus Leaf. I haven't seen one in decades. They're exceedingly rare," she tells me. I can feel myself frown, but I try to hide it. I want this place to be perfect, just like her place was.

-   "That's okay," I tell her sadly, lying to her and myself. 

-   "I think I may know where you can find one. I have friends who own their own tea shop and if anyone will know where a Golden Eucalyptus Leaf is, they will," she tells me with a wide smile on her face.

-   "Where are these friends?" I ask excitedly.


-   "Well, there are three shops you could visit. Rooibos Road in Perth, Matcha Made in Heaven in Adelaide, and Aurora Blue Tea House in Sydney,"

-   "Those are all in completely different parts of the country!" I exclaim, mapping out the cities in my head and their distance from tiny Cairns. 

-   "Well you better get a move on!" she tells me, handing me my backpack.
*   [Go to Rooibos Road]
    ->rooibos
*   [Go to Matcha Made in Heaven]
    ->matcha
*   [Go to Aurora Blue Tea House]
    ->aurora

=== rooibos ===
~beenrooibos = true

-   ->END

=== matcha ===
~beenmatcha = true

->END

=== aurora ===
~beenaurora = true

->END