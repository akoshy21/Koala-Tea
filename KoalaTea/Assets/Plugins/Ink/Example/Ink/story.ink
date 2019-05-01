VAR beenrooibos = false
VAR beenaurora = false
VAR beenmatcha = false
VAR geRooibos = false
VAR momRooibos = false
VAR adviceRooibos = false
VAR THRooibos = false

-   I wipe down the counter for the fifteenth time today. It's so hard to believe that in only a few days the grand opening is coming! Finally my tea shop will be open! I've been waiting for as long as I can remember for this moment.
*   [NEXT]

-   My mother bought this tea shop when she was my age and it was the greatest tea shop in town. People from miles and miles around would come to try her famous Gold Leaf Tea and she loved it. One day, she just closed shop with almost no noticed. She didn't tell anyone, even her own mother. Of course, I was born after all of this happened, but ever since I first saw a picture of what this tea shop used to be when I was five years old, I knew I wanted to reopen it no matter how I would do it.
*   [NEXT]

-   I raised enough money to buy the shop a lot faster than I thought. After years of bussing tables, manning cash registers, and serving grumpy old men, I finally did it. Surprisingly, the shop wasn't that expensive. No one seemed to want this enchanting place. Sure, it's a little rough around the edges, but at the end of the day, it feels more like home to me than any other place I've ever lived.
*   [NEXT]

-   (*shop keeper's bell rings at door*)

-   "Mom! What are you doing here?" I ask her. She walks in, taking in the shop. It's probably been years since she's actually been inside. She wasn't exactly thrilled that I used my hard earned money to buy the shop back. 

-   "You think I would miss my baby's grand opening?" she said, smiling gently.

-   "The opening isn't even for a few days! There's still so much to do before I officially open..." I remind her. The last couple of years, mom's health has been deteriorating a bit. She walks slower and forgets more and more things, but she's doing better than her mother did at her age. 
*   [NEXT]

-   "Oh that's right," she remembers, picking at a piece of dust near the old cash register. "Are you absolutely sure that this is what you want to do? Don't worry about the money. I can get you your money back and you'll be out of this in no time-" she rushes out. 

-   "Mom, stop! Of course I do. It's my dream," I tell her for the fifth time this week. My mom has been asking me this same question almost every day ever since I put down my first deposit.

-   "You're far too young to be living your dream. You need to have more experiences first. You've hardly lived! You're hardly 20 and you've already settled down. It's not right for a young person like you," she tells me, scolding me like I'm 10 years old.

-   I take her hand to stop her frantic speaking. "I am sure mother. I'm excited. I'm doing this for both of us. Why can't you be happy for me?" I ask her. 
*   [NEXT]

-   She looks at me sadly for a moment and then looks away, starting to dust random corners of the shop that I've already dusted a million times. We clean in silence for a moment. "Do you have any advice for me? I mean, this is your shop after all..." I ask her, trying to lighten the mood.

-   "Oh, honey it's been years since this was my shop. I hardly remember owning the shop," she admits. 

-   "Well, can you finally tell me the secret to your Golden Eucalyptus Tea? I thought I should serve it too," I tell her proudly.

-   She looks at me seriously for a moment and then smiles. "You need a Golden Eucalyptus Leaf. I haven't seen one in decades. They're exceedingly rare," she tells me. I can feel myself frown, but I try to hide it. I want this place to be perfect, just like her place was.

-   "That's okay," I tell her sadly, lying to her and myself. 
*   [NEXT]

-   "I think I may know where you can find one. I have friends who own their own tea shop and if anyone will know where a Golden Eucalyptus Leaf is, they will," she tells me with a wide smile on her face.

-   "Where are these friends?" I ask excitedly.


-   "Well, there are three shops you could visit. Rooibos Road in Kalgoorie, Matcha Made in Heaven in Adelaide, and Aurora Blue Tea House in Sydney,"

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
-   Rooibos Road has a seedy bar-like atmosphere with other people mulling around and sipping drinks out of bottles. Many heads turn when I walk through the door and head to an empty table. I'm definitely not the main clientele. I start to wonder if my mother sent me to the wrong place.

-  I open the menu on the table and confirm that it is in fact a tea house, specializing in black teas. The menu says they're known for the famous Chai tea, but it doesn't seem like anyone is even drinking tea!
*   [NEXT]

-   "Can I help you, kid?" a tasmanian devil askes me, holding a tray of empty bottles. I had never met a tasmanian devil in person before. They have reputation of being dangerous and generally keep away from people.

-   My mom wouldn't send me somewhere dangerous... right?
    *   [Explain why you're there]
    
    "Hi there," I nervously say. "My mom sent me to come talk to you. Her name     is Kathleen... I'm actually opening my own tea sho-"
     "You're Kathleen's kid? I shoulda know, you look just like her!" he interrupts, sitting down at my table. "The name's Bruce. Your mother worked with my granddad for years at her teahouse! I used to go into that tea house all the time when I was a kid. Can I get you anything? A tea?"
     ** [Order black tea]
     "Can I get an English Breakfast please?"
     "Huh, English Breakfast? Not the most interesting choice. Would have thought Kathleen's kid woulda been more adventurous. Hold on kid I'll grab it," he says, disappointed in my ordering choice. 
     He returns quickly with two bottles in his hand. He hands one to me and takes a sip out of the other one. I take a sip from the bottle, dubious about tea being served in a glass bottle, but find myself surprisingly pleased with the tea.
     ->rooibosQuestions
     
     ** [Order chai tea]
     "Can I try the famous chai tea?" 
     His face lights up. "Of course!" He boasts, scurrying away to grab the drink. 
     He returns quickly with two bottles in his hand. He hands one to me and takes a sip out of the other one. I take a sip from the bottle, dubious about tea being served in a glass bottle, but find myself surprisingly pleased with the tea.
     ->rooibosQuestions
     
     ** [No Thanks]
     "No thanks," I tell him, ready to get down to business.
     "Nothing? No tea? Jeez kid why'd you come to a tea house then?" he askes, sounding a bit bitter.
     ->rooibosQuestions
     
    *   [Order tea]
        "Hi! Um... Can I get a chai tea please?" I ask, too nervous to tell him about my mother.
        "That it?" he askes bruskly. 
            **   [Yes]
            **   [Actually...]

-   ->END

=== matcha ===
~beenmatcha = true

->END

=== aurora ===
~beenaurora = true

->END

=== rooibosQuestions ===
*	{ not geRooibos} 
[Ask about Golden Eucalyptus]
~geRooibos = true
-> rooibosQuestions

*	{ not THRooibos} 
[Ask about Tea House]
~THRooibos = true
-> rooibosQuestions

*	{ not adviceRooibos} 
[Ask for Advice]
~adviceRooibos = true
-> rooibosQuestions

*	{ not momRooibos} 
[Ask about Mother]
~momRooibos = true
-> rooibosQuestions

*  {momRooibos}{adviceRooibos}{THRooibos}{geRooibos}
[Leave Rooibos Road]
-> map

->END

=== map ===
*   {not beenrooibos}
[Go to Rooibos Road]
->rooibos

*   {not beenmatcha}
[Go to Matcha Made in Heaven]
->matcha

*   {not beenaurora}
[Go to Aurora Blue Tea House]
->aurora


*   {beenrooibos}{beenmatcha}{beenaurora}
[Go Back Home]
->home

->END

=== home ===

->END

