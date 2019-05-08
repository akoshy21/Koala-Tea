VAR beenrooibos = 0
VAR beenaurora = 0
VAR beenmatcha = 0
VAR geRooibos = 0
VAR momRooibos = 0
VAR adviceRooibos = 0
VAR THRooibos = 0

VAR speaker = 1

VAR metBruce = 0
VAR metSusan = 0

VAR playSound = 0

VAR soundIndex = 0

-   I wipe down the counter for the fifteenth time today. It's so hard to believe that in only a few days the grand opening is coming! Finally my tea shop will be open! I've been waiting for as long as I can remember for this moment.
*   [NEXT]

-   My mother bought this tea shop when she was my age and it was the greatest tea shop in town. People from miles and miles around would come to try her famous Gold Leaf Tea and she loved it. One day, she just closed shop with almost no noticed. She didn't tell anyone, even her own mother. Of course, I was born after all of this happened, but ever since I first saw a picture of what this tea shop used to be when I was five years old, I knew I wanted to reopen it no matter how I would do it.
*   [NEXT]

-   I raised enough money to buy the shop a lot faster than I thought. After years of bussing tables, manning cash registers, and serving grumpy old men, I finally did it. Surprisingly, the shop wasn't that expensive. No one seemed to want this enchanting place. Sure, it's a little rough around the edges, but at the end of the day, it feels more like home to me than any other place I've ever lived.
*   [NEXT] 
~playSound = 1
~soundIndex = 0
-   "Mom! What are you doing here?" She walks in, taking in the shop. It's probably been years since she's actually been inside. She wasn't exactly thrilled that I used my hard earned money to buy the shop back. 
*   [NEXT]
~ speaker = 0
-   "You think I would miss my baby's grand opening?"
*   [NEXT]
~ speaker = 1
-   "The opening isn't even for a few days! There's still so much to do before I officially open..." The last couple of years, mom's health has been deteriorating a bit. She walks slower and forgets more and more things, but she's doing better than her mother did at her age. 
*   [NEXT]
~ speaker = 0
-   "Oh that's right. Are you absolutely sure that this is what you want to do? Don't worry about the money. I can get you your money back and you'll be out of this in no time-"
*   [NEXT]
~ speaker = 1
-   "Mom, stop! Of course I do. It's my dream," It's the fifth time I've told her this week. My mom has been asking me this same question almost every day ever since I put down my first deposit.
*   [NEXT]
~ speaker = 0
-   "You're far too young to be living your dream. You need to have more experiences first. You've hardly lived! You're hardly 20 and you've already settled down. It's not right for a young person like you,"
*   [NEXT]
~ speaker = 1
-   I take her hand to stop her frantic speaking. "I am sure mother. I'm excited. I'm doing this for both of us. Why can't you be happy for me?"
*   [NEXT]
~ speaker = 1
-   She looks at me sadly for a moment and then looks away, starting to dust random corners of the shop that I've already dusted a million times. We clean in silence for a moment. "Do you have any advice for me? I mean, this is your shop after all..."
*   [NEXT]
~ speaker = 0
-   "Oh, honey it's been years since this was my shop. I hardly remember owning the shop,"
*   [NEXT]
~ speaker = 1
-   "Well, can you finally tell me the secret to your Golden Eucalyptus Tea? I thought I should serve it too,"
*   [NEXT]
~ speaker = 0
-   She looks at me seriously for a moment and then smiles. "You need a Golden Eucalyptus Leaf. I haven't seen one in decades. They're exceedingly rare," I can feel myself frown, but I try to hide it. I want this place to be perfect, just like her place was.
*   [NEXT]
~ speaker = 1
-   "That's okay...." 
*   [NEXT]
~ speaker = 0
-   "I think I may know where you can find one. I have friends who own their own tea shop and if anyone will know where a Golden Eucalyptus Leaf is, they will,"
*   [NEXT]
~ speaker = 1
-   "Where are these friends?!"
*   [NEXT]
~ speaker = 0
-   "Well, there are three shops you could visit. Rooibos Road in Kalgoorie, Matcha Made in Heaven in Adelaide, and Aurora Blue Tea House in Sydney,"
*   [NEXT]
~ speaker = 1
-   "Those are all in completely different parts of the country!" I map out the cities on a napkin and their distance from tiny Cairns. 
*   [NEXT]
~ speaker = 0
-   "Well you better get a move on!" She hands me my backpack.
*   [Go to Rooibos Road]
    ->rooibos
*   [Go to Matcha Made in Heaven]
    ->matcha
*   [Go to Aurora Blue Tea House]
    ->aurora

=== rooibos ===
~beenrooibos = 1
-   Rooibos Road has a seedy bar-like atmosphere with other people mulling around and sipping drinks out of bottles. Many heads turn when I walk through the door and head to an empty table. I'm definitely not the main clientele. I start to wonder if my mother sent me to the wrong place.
*   [NEXT]
-  I open the menu on the table and confirm that it is in fact a tea house, specializing in black teas. The menu says they're known for the famous Chai tea, but it doesn't seem like anyone is even drinking tea!
*   [NEXT]
~speaker = 2
-   "Can I help you, kid?" a tasmanian devil askes me, holding a tray of empty bottles. I had never met a tasmanian devil in person before. They have reputation of being dangerous and generally keep away from people.
*   [NEXT]
~speaker = 0
-   My mom wouldn't send me somewhere dangerous... right?
    *   [Explain why you're there]
    
    "Hi there," I nervously say. "My mom sent me to come talk to you. Her name     is Kathleen... I'm actually opening my own tea sho-"
        ~speaker = 2
    **   [NEXT]
        ~metBruce = 1
         "You're Kathleen's kid? I shoulda know, you look just like her!" he interrupts, sitting down at my table. "The name's Bruce. Your mother worked with my granddad for years at her teahouse! I used to go into that tea house all the time when I was a kid. Can I get you anything? A tea?"
     *** [Order black tea]
     "Can I get an English Breakfast please?"
     ****   [NEXT]
    "Huh, English Breakfast? Not the most interesting choice. Would have thought Kathleen's kid woulda been more adventurous. Hold on kid I'll grab it," he says, disappointed in my ordering choice. 
     *****   [NEXT]
     He returns quickly with two bottles in his hand. He hands one to me and takes a sip out of the other one. I take a sip from the bottle, dubious about tea being served in a glass bottle, but find myself surprisingly pleased with the tea.
     ->rooibosQuestions
     
     *** [Order chai tea]
     "Can I try the famous chai tea?" 
      ****   [NEXT]
     His face lights up. "Of course!" He boasts, scurrying away to grab the drink.
      *****   [NEXT]
     He returns quickly with two bottles in his hand. He hands one to me and takes a sip out of the other one. I take a sip from the bottle, dubious about tea being served in a glass bottle, but find myself surprisingly pleased with the tea.
     ->rooibosQuestions
     
     *** [No Thanks]
     "No thanks," I tell him, ready to get down to business.
     ****[NEXT]
     "Nothing? No tea? Jeez kid why'd you come to a tea house then?" he askes, sounding a bit bitter.
     ->rooibosQuestions
     
    *   [Order tea]
        "Hi! Um... Can I get a chai tea please?" I ask, too nervous to tell him about my mother.
        **   [NEXT]
        "That it?" he askes curtly. 
            ***   [Yes]
            "Um... Yes. That's it. Thank you."
            ****[NEXT]
            He turns to grab my drink without another word. He returns quickly and drops my drink at the table, quickly about to leave again.
            *****[Tell about Mom]
            "My mom actually sent me to come talk to you. Her name is Kathleen... I'm actually opening my own tea sho-"
            ******[NEXT]
            ~metBruce = 1
             "You're Kathleen's kid? I shoulda know, you look just like her!" he interrupts, sitting down at my table. "The name's Bruce. Your mother worked with my granddad for years at her teahouse! I used to go into that tea house all the time when I was a kid. What can I do for you?"
             ->rooibosQuestions
            *****[Chicken Out]
            I decide not to say anything to Tasmanian devil. Coming here was definitely a mistake. I drink my tea quickly and leave without looking back. 
            ->map
            
            ***   [Actually...]
            "Actually, my mom sent me to come talk to you. Her name is Kathleen... I'm actually opening my own tea sho-"
            ****[NEXT]
            "You're Kathleen's kid? I shoulda know, you look just like her!" he interrupts, sitting down at my table. "The name's Bruce. Your mother worked with my granddad for years at her teahouse! I used to go into that tea house all the time when I was a kid. What can I do for you?"
             ->rooibosQuestions

-   ->END




=== rooibosQuestions ===
*	{ not geRooibos} 
[Ask about Golden Eucalyptus]
~geRooibos = 1
    "You might remember that my mother was known for her Golden Eucalyptus tea, but I haven't been able to track down a Golden Eucalyptus Leaf! Would you by any chance know where I could find one?"
    **   [NEXT]
    "Nah can't say that I have mate. I do remember that tea though. I don't think I've ever had anything so delicious! Sorry kid, never seen a Golden Eucalyptus Leaf before."
-> rooibosQuestions

*	{ not THRooibos} 
[Ask about Tea House]
~THRooibos = 1
    "When did you open this place?"
    **   [NEXT]
    "A few years ago. I know it's not what people expect when they see me, but it's all I've ever wanted. My granddad left this place for me when he died. I hope I've made it what he would have wanted it to be."
    
-> rooibosQuestions

*	{ not adviceRooibos} 
[Ask for Advice]
~adviceRooibos = 1
"Do you have any advice for an up-and-comer like me? Sometimes I feel like I'm so out of my depth..."
**[NEXT]
"You think you were out of your depth? Do I look like your average tea house owner to you? Does this look like your average tea house? I've had to deal with my fair share of problems thrown my way, but all it takes is perserverance. When you set your mind on something, just go for it!"
***[NEXT]
He gets up from the table and quickly returns with a beat up tea canister. "You see this? This is the only thing I had when I opened up this place. And look at it now." He hands the canister to me. "Take it,"
****[NEXT]
"Oh I can't!"
*****[NEXT]
"Please. I don't need it anymore. Keep it as a reminder that you're just starting out, and with a little hard work, your dream's not so far away,"

-> rooibosQuestions

*	{ not momRooibos} 
[Ask about Mother]
~momRooibos = 1
"I know you said you knew my mother... what was she like? She doesn't talk about her old tea shop very often."
**[NEXT]
"It was amazing. She was amazing. My granddad loved working for her. He wasn't the most trusted guy in town, if you know what I mean, but she gave him a shot. I don't know where I'd be without him or your mom for that matter."
***[NEXT]
"I actually developed my famous chai tea right at her shop when I was just boy. She encouraged my interest in the business even though my parents weren't happy about it. Your mom was actually my first taste tester." he walks over to the bar and comes back with a bottle filled with tea leaves and hands it to me. "Now I'm not in the business of giving out secret recipes or anything, but from one tea shop owner to the next, and because you're Kathleen's kid, think of this as a sample."

-> rooibosQuestions

*  [Leave Rooibos Road]
"Thank you for everything!"
**[NEXT]
"Good luck kid. You're gonna kill it."
-> map

->END





=== matcha ===
~beenmatcha = 1
Matcha Made in Heaven is a brightly colored cafe with plush pillows and cakes lining the display case. No one is behind the counter, but a sugar glider wearing an apron gracefully moves around the room. She's older, but seems to be charming all of the customers.
*[NEXT]

I wave to the sugar glider to get her attention, and her eyes light up when she notices me. She winks at her current customer who seems to be enchanted by her, and quickly glides over to me. 
**[NEXT]
"How can I help you, sugar?"
***[NEXT]
I quickly glance at the menu and notice that the cafe seems to specialize in oolong and chamomile tea, as well as matcha cake. I know I'm here to get answers about the Golden Eucalyptus, but everything looks so good...
****[Order oolong tea]
"Can I try your best oolong tea?"
*****[NEXT]
****[Order a piece of matcha cake]
****[Explain why you're here]



->END






=== aurora ===
~beenaurora = 1

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

