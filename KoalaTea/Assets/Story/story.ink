VAR beenrooibos = 0
VAR beenaurora = 0
VAR beenmatcha = 0

VAR geRooibos = 0
VAR mumRooibos = 0
VAR adviceRooibos = 0
VAR THRooibos = 0

VAR geMatcha = 0
VAR mumMatcha = 0
VAR adviceMatcha = 0
VAR THMatcha = 0

VAR geAurora = 0
VAR mumAurora = 0
VAR adviceAurora= 0
VAR THAurora = 0

VAR speaker = 0

VAR metBruce = 0
VAR metSusan = 0
VAR metRoo = 0

VAR talkedBruce = 0
VAR talkedSusan = 0
VAR talkedRoo = 0

VAR playSound = 0
VAR soundIndex = 0

VAR theEnd = 0
-
~speaker = 0
    You wipe down the counter for the fifteenth time today. You're having a hard time believing that in only a few days the grand opening is coming! Finally your tea shop will be open! You've been waiting for as long as you can remember for this moment.
*   [NEXT]

-   Your mother bought this tea shop when she was your age and it was the greatest tea shop in town. People from miles and miles around would come to try her famous Golden Eucalyptus Leaf Tea and she loved it. One day, she just closed shop with almost no notice. She didn't tell anyone, even her own mother. You always knew that one day you wanted to reopen it.
*   [NEXT]

-   Surprisingly, the shop wasn't that expensive. No one seemed to want this enchanting place. Sure, it's a little rough around the edges, but at the end of the day, it feels more like home to you than any other place you've ever lived.

*   [NEXT]
~playSound = 1
~soundIndex = 0
~speaker = 1
-   "Mum! What are you doing here?" She walks in, taking in the shop. It's probably been years since she's actually been inside. She wasn't exactly thrilled that you used your hard earned money to buy the shop back.

*   [NEXT]
~speaker = 0
-   "You think I would miss my baby's grand opening?"
*   [NEXT]
-~speaker = 1
"The opening isn't even for a few days! There's still so much to do before I officially open..." The last couple of years, Mum's memory has been deteriorating a bit. 
*   [NEXT]
-~speaker = 0
"Oh that's right. Are you absolutely sure that this is what you want to do? Don't worry about disappointing anyone I can make sure-"
*   [NEXT]

-  ~speaker = 1 
"Mum, stop! Of course I do. It's my dream,"
*   [NEXT]
-
~speaker = 0
"You're far too young to be living your dream. You need to have more experiences first. You've hardly lived! You're hardly 20 and you've already settled down. It's not right for a young person like you,"
*   [NEXT]
-   
~speaker = 0
You take her hand to stop her frantic speaking. "I am sure mother. I'm excited. I'm doing this for both of us. Why can't you be happy for me?"
*   [NEXT]

-
~speaker = 1
You both clean the shop in silence for a moment. "Do you have any advice for me? I mean, this is your shop after all..."
*   [NEXT]
-   ~speaker = 0
"Oh, honey it's been years since this was my shop. I hardly remember owning the shop,"
*   [NEXT]
~speaker = 1
-   "Well, can you finally tell me the secret to your Golden Eucalyptus Tea? I thought I should serve it too,"
*   [NEXT]
~speaker = 0
-   She looks at you seriously for a moment and then smiles. "You need a Golden Eucalyptus Leaf. I haven't seen one in decades. They're exceedingly rare," 
*   [NEXT]
~speaker = 1
-   "That's okay...." 
*   [NEXT]
~speaker = 0
-   "I think I may know where you can find one. I have friends who own their own tea shop and if anyone will know where a Golden Eucalyptus Leaf is, they will,"
*   [NEXT]
~speaker = 1
-   "Where are these friends?!"

*   [NEXT]
~speaker = 0
-   "Well, there are three shops you could visit. Rooibos Road in Kalgoorlie, Matcha Made in Heaven in Adelaide, and Aurora Blue Tea House in Sydney,"
*   [NEXT]
~speaker = 1
-   "Those are all in completely different parts of the country!" You map out the cities on a napkin and their distance from tiny Cairns. 
*   [NEXT]
~speaker = 0
-   "Well you better get a move on!" She hands you your backpack.
*   [NEXT]
-         
*   [Go to Rooibos Road]
    ->rooibos
*   [Go to Matcha Made in Heaven]
    ->matcha
*   [Go to Aurora Blue Tea House]
    ->aurora


=== rooibos ===
~beenrooibos = 1
~speaker = 1
Rooibos Road has a seedy bar-like atmosphere with other people mulling around and sipping drinks out of bottles. You're definitely not the target clientele. You start to wonder if your mother sent me to the wrong place.
*   [NEXT]
You open the menu on the table and confirm that it is in fact a tea house, specializing in black teas. The menu says they're known for the famous Chai.
**   [NEXT]
~speaker = 0
"Can I help you, kid?" a tasmanian devil asks me.
***   [NEXT]
You had never met a tasmanian devil in person before. They have a reputation of being dangerous and generally keep away from people. My mum wouldn't send me somewhere dangerous... right?
****   [NEXT]
*****   [Explain why you're there]
    ~speaker = 2
    "Hi there," you nervously say. "My mum sent me to come talk to you. Her name     is Kathleen... I'm actually opening my own tea sho-"
******   [NEXT]
        ~speaker = 0
        ~metBruce = 1
         "You're Kathleen's kid? I shoulda known, you look just like her!" he interrupts, sitting down at your table. "The name's Bruce. Your mother worked with my granddad for years at her tea house! I used to go into that tea house all the time when I was a kid. Can I get you anything? A tea?"
*******   [NEXT]
******** [Order black tea]
    ~speaker = 2
     "Can I get an English Breakfast please?"
*********   [NEXT]
    ~speaker = 0
    "Huh, English Breakfast? Not the most interesting choice. Would have thought Kathleen's kid woulda been more adventurous. Hold on kid, I'll grab it," 
**********   [NEXT]
    ~speaker = 2
     He returns quickly with two bottles in his hand. He hands one to you and takes a sip out of the other one. You take a sip from the bottle and find yourself surprisingly pleased with the tea.
***********   [NEXT]
     ->rooibosQuestions
     
******** [Order chai]
    ~speaker = 2
     "Can I try the famous chai?" 
*********   [NEXT]
    ~speaker = 0
     His face lights up. "Of course!" He boasts, scurrying away to grab the drink.
**********   [NEXT]
      ~speaker = 2
     He returns quickly with two bottles in his hand. He hands one to you and takes a sip out of the other one. You take a sip from the bottle and find yourself surprisingly pleased with the tea.
***********   [NEXT]
     ->rooibosQuestions
     
******** [No Thanks]
     ~speaker = 2
     "No thanks,"
*********[NEXT]
     ~speaker = 0
     "Nothing? No tea? Jeez kid why'd you come to a tea house then?"
**********[NEXT]
     ->rooibosQuestions

*****   [Order tea]
     ~speaker = 2
        "Hi! Um... Can I get a chai please?"
******   [NEXT]
     ~speaker = 0
        "That it?"
*******   [Yes]
            ~speaker = 0
            "Um... Yes. That's it. Thank you."
********[NEXT]
            ~speaker = 0
            He turns to grab your drink without another word. He returns quickly and drops your drink at the table, quickly about to leave again.
*********[Tell about mum]
            ~speaker = 2
            "My mum actually sent me to come talk to you. Her name is Kathleen... I'm actually opening my own tea sho-"
**********[NEXT]
            ~speaker = 0
            ~metBruce = 1
             "You're Kathleen's kid? I shoulda known, you look just like her!" he interrupts, sitting down at your table. "The name's Bruce. Your mother worked with my granddad for years at her tea house! I used to go into that tea house all the time when I was a kid. What can I do for you?"
***********[NEXT]
             ->rooibosQuestions
*********[Chicken Out]
            ~speaker = 2
            You decide not to say anything to Tasmanian devil. Coming here was definitely a mistake. You drink your tea quickly and leave without looking back. 
**********[NEXT]
            ->map
            
*******   [Actually...]
            ~speaker = 2
            "Actually, my mum sent me to come talk to you. Her name is Kathleen... I'm actually opening my own tea sho-"
********[NEXT]
            ~speaker = 0
            ~metBruce = 1
            "You're Kathleen's kid? I shoulda known, you look just like her!" he interrupts, sitting down at your table. "The name's Bruce. Your mother worked with my granddad for years at her tea house! I used to go into that tea house all the time when I was a kid. What can I do for you?"
*********[NEXT]
             ->rooibosQuestions

-   ->END




=== rooibosQuestions ===
*	{ not geRooibos} 
[Ask about Golden Eucalyptus]
~geRooibos = 1
~speaker = 2
    "You might remember that my mother was known for her Golden Eucalyptus tea, but I haven't been able to track down a Golden Eucalyptus Leaf! Would you by any chance know where I could find one?"
    **   [NEXT]
    ~speaker = 0
    "Nah can't say that I have, mate. I do remember that tea though. I don't think I've ever had anything so delicious! Sorry kid, never seen a Golden Eucalyptus Leaf before."
    ***   [NEXT]
-> rooibosQuestions

*	{ not THRooibos} 
[Ask about Tea House]
~talkedBruce = 1
~THRooibos = 1
~speaker = 2
    "When did you open this place?"
    **   [NEXT]
    ~speaker = 0
    "A few years ago. I know it's not what people expect when they see me, but it's all I've ever wanted. My granddad left this place for me when he died. I hope I've made it what he would have wanted it to be."
    ***   [NEXT]
-> rooibosQuestions

*	{ not adviceRooibos} 
[Ask for Advice]
~talkedBruce = 1
~adviceRooibos = 1
~speaker = 2
"Do you have any advice for an up-and-comer like me? Sometimes I feel like I'm so out of my depth..."
**[NEXT]
~speaker = 2
"You think you were out of your depth? Do I look like your average tea house owner to you? Does this look like your average tea house? I've had to deal with my fair share of problems thrown my way, but all it takes is perseverance. When you set your mind on something, just go for it!"
***[NEXT]
~speaker = 0
He gets up from the table and quickly returns with a beat up tea canister. "You see this? This is the only thing I had when I opened up this place. And look at it now." He hands the canister to you. "Take it,"
****[NEXT]
~speaker = 2
"Oh I can't!"
*****[NEXT]
~speaker = 0
"Please. I don't need it anymore. Keep it as a reminder that you're just starting out, and with a little hard work, your dream's not so far away,"
******   [NEXT]

-> rooibosQuestions

*	{ not mumRooibos} 
[Ask about Mother]
~talkedBruce = 1
~mumRooibos = 1
~speaker = 2
"I know you said you knew my mother... what was she like? She doesn't talk about her old tea shop very often."
**[NEXT]
~speaker = 2
"It was amazing. She was amazing. My granddad loved working for her. He wasn't the most trusted guy in town, if you know what I mean, but she gave him a shot. I don't know where I'd be without him or your mum for that matter."
***[NEXT]
"I actually developed my famous chai right at her shop when I was just a boy. She encouraged my interest in the business even though my parents weren't happy about it. Your mum was actually my first taste tester."
****[NEXT]
~speaker = 0
He walks over to the bar and comes back with a bottle filled with tea leaves and hands it to you. "Now I'm not in the business of giving out secret recipes or anything, but from one tea shop owner to the next, and because you're Kathleen's kid, think of this as a sample."
*****   [NEXT]
-> rooibosQuestions

*  [Leave Rooibos Road]
~speaker = 2
"Thank you for everything!"
**[NEXT]
~speaker = 0
"Good luck kid. You're gonna kill it."
***[NEXT]
-> map

->END





=== matcha ===
~beenmatcha = 1
~speaker = 0
Matcha Made in Heaven is a brightly colored cafe with plush pillows and cakes lining the display case. No one is behind the counter, but a sugar glider wearing an apron gracefully moves around the room. She's older, but seems to be charming all of the customers.
*[NEXT]
~speaker = 3
You wave to the sugar glider to get her attention, and her eyes light up when she notices you. She winks at her current customer who seems to be enchanted by her, and quickly glides over to you. 
**[NEXT]
~speaker = 0
"How can I help you, sugar?"
***[NEXT]
~speaker = 0
You quickly glance at the menu and notice that the cafe seems to specialize in oolong and chamomile tea, as well as so many matcha goodies. You know you're here to get answers about the Golden Eucalyptus, but everything looks so good...
****[NEXT]
*****[Order oolong tea]
~speaker = 3
"Can I try your best oolong tea?"
******[NEXT]
~speaker = 0
"Oh honey you can have whatever you want,"
*******[NEXT]
~speaker = 3
She zooms behind the counter and starts gracefully stirring together your oolong tea latte. She slides the tea to you across the counter and you notice that she created a little foam heart in the drink.
********[NEXT]
~speaker = 0
"Anything else I can get for you?"
*********[Explain why you're here]
~speaker = 3
"Actually, my mother sent me here. She used to own a popular tea shop. Her name is Kathleen? I don't know if you remember her, but she wanted me to come to your tea shop to ask you for help. I'm opening my own tea shop..."
**********[NEXT]
~speaker = 0
~metSusan = 1
"Oh Kathleen! I could never forget her... She was a dear friend of mine back in school. There hasn't been a day that's gone by that I haven't thought about her. I'm Susan by the way! What can I help you with darling?"
***********[NEXT]
->matchaquestions

*********[No]
~speaker = 0
"No I think I'm good."
**********[NEXT]
~speaker = 0
The sugar glider gives you a wink and quickly leaves again, serving her other patrons and charming them like she had been charming you. If you're gonna ask her about the Golden Eucalyptus, you should probably do it now...
***********[Get attention again]
~speaker = 0
You wave her down again and she zooms right on over like before.
************[NEXT]
~speaker = 3
"Actually, my mother sent me here. She used to own a popular tea shop. Her name is Kathleen? I don't know if you remember her, but she wanted me to come to your tea shop to ask you for help. I'm opening my own tea shop..."
*************[NEXT]
~speaker = 0
"Oh Kathleen! I could never forget her... She was a dear friend of mine back in school. I'm Susan by the way! There hasn't been a day that's gone by that I haven't thought about her. What can I help you with darling?"
**************[NEXT]
->matchaquestions
***********[Give up]
~speaker = 0
The sugar glider looks too busy to deal with you right now. You decide to just give up and leave. You don't want to be a bother to anyone.
************[Give up]
-> map


*****[Order a matcha latte]
~speaker = 3
"Can I try a matcha latte?"
******[NEXT]
~speaker = 3
"Oh honey you can have whatever you want," She zooms behind the counter and starts gracefully stirring together your matcha tea latte. She slides the tea to you across the counter and you notice that she created a little green heart on the top of the drink out of matcha.
*******[NEXT]
~speaker = 0
"Anything else I can get for you?"
********[Explain why you're here]
~speaker = 3
"Actually, my mother sent me here. She used to own a popular tea shop. Her name is Kathleen? I don't know if you remember her, but she wanted me to come to your tea shop to ask you for help. I'm opening my own tea shop..."
**********[NEXT]
~speaker = 0
~metSusan = 1
"Oh Kathleen! I could never forget her... She was a dear friend of mine back in school. There hasn't been a day that's gone by that I haven't thought about her. I'm Susan by the way! What can I help you with darling?"
***********[NEXT]
->matchaquestions
********[No]
~speaker = 0
"No I think I'm good."
**********[NEXT]
~speaker = 0
The sugar glider gives you a wink and quickly leaves again, serving her other patrons and charming them like she had been charming you. If you're gonna ask her about the Golden Eucalyptus, you should probably do it now...
***********[Get attention again]
~speaker = 0
You wave her down again and she zooms right on over like before.
************[NEXT]
~speaker = 3
"Actually, my mother sent me here. She used to own a popular tea shop. Her name is Kathleen? I don't know if you remember her, but she wanted me to come to your tea shop to ask you for help. I'm opening my own tea shop..."
*************[NEXT]
~speaker = 0
~metSusan = 1
"Oh Kathleen! I could never forget her... She was a dear friend of mine back in school. There hasn't been a day that's gone by that I haven't thought about her. I'm Susan by the way! What can I help you with darling?"
**************[NEXT]
->matchaquestions
***********[Give up]
~speaker = 0
The sugar glider looks too busy to deal with you right now. You decide to just give up and leave. You don't want to be a bother to anyone.
************[NEXT]
-> map


*****[Explain why you're here]
~speaker = 3
"Actually, my mother sent me here. She used to own a popular tea shop. Her name is Kathleen? I don't know if you remember her, but she wanted me to come to your tea shop to ask you for help. I'm opening my own tea shop..."
******[NEXT]
~speaker = 0
~metSusan = 1
"Oh Kathleen! I could never forget her... She was a dear friend of mine back in school. There hasn't been a day that's gone by that I haven't thought about her. I'm Susan by the way! What can I help you with darling?"
*******[NEXT]
->matchaquestions

->END

=== matchaquestions ===
*	{ not geMatcha} 
[Ask about Golden Eucalyptus]
~geMatcha = 1
~speaker = 3
~talkedSusan = 1
    "Well, my mother used to be known for her Golden Eucalyptus tea and I want my shop to be just like hers, but I can't seem to track down a Golden Eucalyptus leaf. Do you know where I can find one?"
    **   [NEXT]
    ~speaker = 0
    "I remember the tea well. It was her signature blend. Sadly, she never gave up the recipe to me. Sorry sweetie, I've never even seen a Golden Eucalyptus leaf!"
    ***   [NEXT]
-> matchaquestions

*	{ not THMatcha} 
[Ask about Tea House]
~THMatcha = 1
~speaker = 3
~talkedSusan = 1
    "This place is so cute! When did you open it?"
    **   [NEXT]
    ~speaker = 0
    "Oh, almost 20 years ago now! Where has the time gone... I opened up this shop around the time your mom opened up her shop. Of course, my shop wasn't nearly as popular as hers, but we stay busy!"
    ***   [NEXT]
-> matchaquestions

*	{ not adviceMatcha} 
[Ask for Advice]
~adviceMatcha = 1
~speaker = 3
~talkedSusan = 1
"How are you able to keep up with running this amazing tea house? I feel like it's been so hard and I'm so stressed, yet I haven't even opened up yet!"
**[NEXT]
~speaker = 3
"You've just gotta remember to take time for yourself sweetie. A happy body and mind make a happy workplace! Never put too much pressure on yourself and always make time for yourself!"
***[NEXT]
~speaker = 0
She leaves the table for a moment and comes back with a bag of something. "This is my signature scone mix. When I'm stressed out, I like to back. You should try it!"
****[NEXT]
~speaker = 3
"Thank you so much!"
*****[NEXT]
~speaker = 0
"Don't worry about it! Besides, I love sharing my recipes with people."
******   [NEXT]
-> matchaquestions

*	{ not mumMatcha} 
[Ask about Mother]
~mumMatcha = 1
~speaker = 3
~talkedSusan = 1
"You said you knew my mother in school? What was that like?"
**[NEXT]
~speaker = 3
"Your mother was my best friend! We were like partners in crime. The perfect duo! We bonded over our love of tea. We both promised each other to go back to our home towns and open up our own tea shops and keep each other updated about how it was going!"
***[NEXT]
~speaker = 0
"Of course, your mother got a bit busy when you were born, and I really threw myself into this place, but I always think about her. Hold on," she quickly gets up from the table and returns with a painting. "Your mother gave this to me for my birthday many years ago, but I think it would be perfect for your tea shop,"
****[NEXT]
~speaker = 3
"Oh I couldn't! My mum gave that to you... I couldn't take it!"
*****[NEXT]
~speaker = 0
"This old painting has been hanging in my office for years to remind me of Kathleen, but I don't need it any more. I think it would look great in your new shop!"
******   [NEXT]
-> matchaquestions

*  [Leave Matcha Made in Heaven]
~speaker = 3
"Thank you so much. For everything. It was great meeting you, Susan!"
**[NEXT]
~speaker = 0
"No problem at all! Come back any time"
***[NEXT]
-> map
->END




=== aurora ===
~beenaurora = 1
~speaker = 0
Aurora Blue Tea House is light and open tea house that exudes tranquility. Everyone in the room looks immensely relaxed and at peace. It's hard to pick out who the owner is, but you notice a kangaroo clearing dishes off tables and decide that she must be the owner.
*   [NEXT]
~speaker = 4
You sit down at a free table and take a look at the menu. There are all sorts of tasty treats and various teas, but you notice that the shop seems to specialize in fruity teas.
**  [NEXT]
~speaker = 0
"Can I get you anything, honey?"
*** [NEXT]
~speaker = 0
You notice that the Kangaroo, carrying a bunch of dishes as well as a small baby kangaroo in her pouch, has approached you with an ordering pad.
****    [NEXT]
        
*****   [Order peach tea]
~speaker = 4
"Hmmm can I try your peach tea?"
******  [NEXT]
~speaker = 0
"Yep!"
*******[NEXT]
~speaker = 4
She goes in a flash and returns before you even know it with your tea. She continues to juggle plates, cups, and her baby, while handing it to you.
********[NEXT]
~speaker = 0
"Let me know if you need anything else,"
*********[Stop her to explain why you came]
~speaker = 4
"I was hoping to talk to you for a second! My mother actually sent me here. Her name is Kathleen? She used to own a tea shop that was pretty popular... I'm opening my own tea shop and she told me that I could ask you for some help?"
**********[NEXT]
~speaker = 0
~metRoo = 1
"Kathleen? Oh I haven't heard her name in such a long time. How is she doing? I'm pretty busy, as you can see, but I suppose I could take a few minutes for an old friend! I'm Barbara, but everyone calls me Mamma Roo."
***********[NEXT]
->auroraquestions

*********[Let her walk away]
~speaker = 0
You let her leave you alone with your tea. She bounces around the tea house serving customers left and right, fulfilling their needs before they even know they have them. Occasionally her baby peeks out from her pouch, but hides again soon after.
**********[NEXT]
~speaker = 0
You realize that the kangaroo is super busy, but she doesn't look like she'll be any less busy any time soon. If you're gonna ask her about the Golden Eucalyptus, it seems like it's now or never...
***********[NEXT]
      
************[Get her attention]
~speaker = 0
You simply make eye contact with the kangaroo and she hops on over, waiting for your request.
*************[NEXT]
~speaker = 4
"I was hoping to talk to you for a second! My mother actually sent me here. Her name is Kathleen? She used to own a tea shop that was pretty popular... I'm opening my own tea shop and she told me that I could ask you for some help?"
**************[NEXT]
~speaker = 0
~metRoo = 1
"Kathleen? Oh I haven't heard her name in such a long time. How is she doing? I'm pretty busy, as you can see, but I suppose I could take a few minutes for an old friend! I'm Barbara, but everyone calls me Mamma Roo."
***************[NEXT]
->auroraquestions
************[Wait a while]
~speaker = 0
You decide to wait a little longer to see if the kangaroo gets any less busy, but she never does. Before you know it, the shop is closing and you have to leave.
*************[NEXT]
-> map


*****[Order an herbal tea]
~speaker = 0
"Can I try your house brew herbal tea?"
******[NEXT]
~speaker = 4
The kangaroo nods her head and is gone in a flash, returning before you even know it with your tea. She continues to juggle plates, cups, and her baby, while handing it to you.
*******[NEXT]
~speaker = 0
"Let me know if you need anything else,"
********[Stop her to explain why you came]
~speaker = 4
"I was hoping to talk to you for a second! My mother actually sent me here. Her name is Kathleen? She used to own a tea shop that was pretty popular... I'm opening my own tea shop and she told me that I could ask you for some help?"
**********[NEXT]
~speaker = 0
~metRoo = 1
"Kathleen? Oh I haven't heard her name in such a long time. How is she doing? I'm pretty busy, as you can see, but I suppose I could take a few minutes for an old friend! I'm Barbara, but everyone calls me Mamma Roo."
***********[NEXT]
->auroraquestions
********[Let her walk away]
~speaker = 0
You let her leave you alone with your tea. She bounces around the tea house serving customers left and right, fulfilling their needs before they even know they have them. Occasionally her baby peeks out from her pouch, but hides again soon after.
**********[NEXT]
~speaker = 0
You realize that the kangaroo is super busy, but she doesn't look like she'll be any less busy any time soon. If you're gonna ask her about the Golden Eucalyptus, it seems like it's now or never...
***********[NEXT]
    
************[Get her attention]
~speaker = 0
You simply make eye contact with the kangaroo and she hops on over, waiting for your request.
*************[NEXT]
~speaker = 4
"I was hoping to talk to you for a second! My mother actually sent me here. Her name is Kathleen? She used to own a tea shop that was pretty popular... I'm opening my own tea shop and she told me that I could ask you for some help?"
**************[NEXT]
~speaker = 0
~metRoo = 1
"Kathleen? Oh I haven't heard her name in such a long time. How is she doing? I'm pretty busy, as you can see, but I suppose I could take a few minutes for an old friend! I'm Barbara, but everyone calls me Mamma Roo."
***************[NEXT]
->auroraquestions
************[Wait a while]
~speaker = 0
You decide to wait a little longer to see if the kangaroo gets any less busy, but she never does. Before you know it, the shop is closing and you have to leave.
*************[NEXT]
-> map


*****[Explain why you're here]
~speaker = 4
"I was hoping to talk to you for a second! My mother actually sent me here. Her name is Kathleen? She used to own a tea shop that was pretty popular... I'm opening my own tea shop and she told me that I could ask you for some help?"
******[NEXT]
~speaker = 0
~metRoo = 1
"Kathleen? Oh I haven't heard her name in such a long time. How is she doing? I'm pretty busy, as you can see, but I suppose I could take a few minutes for an old friend! I'm Barbara, but everyone calls me Mamma Roo."
*******[NEXT]
->auroraquestions

->END


=== auroraquestions ===
*	{ not geAurora} 
[Ask about Golden Eucalyptus]
~geAurora = 1
~speaker = 4
~talkedRoo = 1
    "I don't know if you remember my mum's famous Golden Eucalyptus tea, but she can't seem to remember where to find a golden eucalyptus leaf, and I was hoping you might be able to help me find one?"
    **   [NEXT]
    ~speaker = 0
    "I do remember her famous tea, but I never knew how she made it. Always one of her best kept secrets I suppose!"
    ***   [NEXT]
-> auroraquestions

*	{ not THAurora} 
[Ask about Tea House]
~THAurora = 1
~speaker = 4
~talkedRoo = 1
    "This place is so serene and beautiful... when did you open up?"
    **   [NEXT]
    ~speaker = 0
    "Not too long ago, actually. I worked for you mum for so long, that when she decided to close down, I couldn't think of anything else I'd rather do! But then this little guy's older sister was born, and I had to wait a bit till I had more time," she gestures to her baby, hiding in her pouch. 
    ***   [NEXT]
-> auroraquestions

*	{ not adviceAurora} 
[Ask for Advice]
~adviceAurora = 1
~speaker = 4
~talkedRoo = 1
"I don't know how you do it, with kids and a tea house? You must be so swamped with work all the time! Do you ever just want to quit?"
**[NEXT]
~speaker = 4
"Well, I think everyone has moments where they just want to scream and give up, but you just have to remember to have a little patience. You'll find that most things are worth the extra work if you just take your time,"
***[NEXT]
~speaker = 0
She hops to the counter and pulls out an ornate box and hands it to you. "A lot of people have told me that I shouldn't waste my time decorating these cakes when people mainly come here for the tea, but I think it's worth the extra attention and time,"
****[NEXT]
~speaker = 4
You open the box and see beautifully decorated small cakes packaged. "Thank you so much! They almost look too delicious to eat!"
*****[NEXT]
~speaker = 5
"Oh believe me, they taste even better than they look!"
******   [NEXT]
-> auroraquestions

*	{ not mumAurora} 
[Ask about Mother]
~mumAurora = 1
~speaker = 4
~talkedRoo = 1
"How did you know my mother? She's been so forgetful lately, she has a hard time telling me old stories."
**[NEXT]
~speaker = 4
"I worked with your mother for years! We became very close. She had you around the same time I had my first baby! She taught me a lot about the business. I tried to keep up correspondence, but it's become difficult over the years... children and running a business do keep your hands very full,"
***[NEXT]
~speaker = 4
"When your mum decided to close down her shop, I was so upset! But it was actually her idea for me to open my own place," she points to a tea pot on her shelf. "Your mother gave that to me from her own shop to get me started. I could never bring myself to use it because it's just so beautiful!"
****[NEXT]
~speaker = 4
She hops up to grab the teapot and hands it to me, "Don't you want it? It looks so amazing in your shop..."
*****[NEXT]
~speaker = 0
"I think Kathleen's own child should have it. It can be like a family heirloom, and you can pass it down to your child," she says smiling.
******   [NEXT]
-> auroraquestions

*  [Leave Aurora Blue Tea House]
~speaker = 4
"It's been great meeting you Mamma Roo! Thank you for speaking to me."
**[NEXT]
~speaker = 0
"It was so nice meeting you. I have to give Kathleen a call!"
***   [NEXT]
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
~speaker = 0
(*5 Days Later*)
*[NEXT]
It's finally here. Your opening day is here! You've worked so hard for this day to come and everything is pretty much perfect.
**[NEXT]
"I'm sorry I couldn't find the Golden Eucalyptus Leaf, mum. It must be super rare!"
~speaker = 1
***[NEXT]
"Oh pish posh. Are you happy with what you were able to accomplish?"
~speaker = 0
****[NEXT]
"I am. I know it might not be absolutely perfect without your famous tea, but I think I'm okay with that."
~speaker = 1
*****[NEXT]
"Oh sweetheart... I have a confession to make. There is no such thing as a Golden Eucalyptus Leaf!"
~speaker = 0
******[NEXT]
"What?! How can there be no such thing?!"
~speaker = 1
*******[NEXT]
"Well, I was so worried about you opening this tea shop with all that pressure you were putting on yourself... I wanted you to take a break and maybe see more of the world! My tea just uses average Eucalyptus."
~speaker = 0
********[NEXT]
"You're saying, there never was a Golden Eucalyptus Leaf? You tricked me this whole time?"
~speaker = 1
*********[NEXT]
"Well, there's this," she says, pulling out a golden necklace from her apron with a tiny leaf charm. "My mother gave me this necklace when I left home and it's where I got the name for my tea. I think it's only appropriate that you hold onto it now."
~speaker = 0
**********[NEXT]
You hold the necklace in your hand and feel your eyes well up with tears. "This is perfect mum. Thank you,"
{
-talkedBruce && talkedSusan && talkedRoo: 
~speaker = 2
-else:
~speaker = 1
}
***********{talkedBruce}{talkedSusan}{talkedRoo}
[NEXT]
~playSound = 1
~soundIndex = 0
"Great place you've got, kid!"
~speaker = 3
*************{talkedBruce}{talkedSusan}{talkedRoo}
[NEXT]
"It's like stepping back in time!"
~speaker = 0
************** {talkedBruce}{talkedSusan}{talkedRoo}
[NEXT]
"What are you all doing here?! What a nice surprise!"
~speaker = 4
***************{talkedBruce}{talkedSusan}{talkedRoo}
[NEXT]
"Well, your last visit reminded us that it was about time to visit our dear friend Kathleen, and our new friend's new shop!"
~speaker = 1
****************{talkedBruce}{talkedSusan}{talkedRoo}
[NEXT]
"How 'bout some nice tea? What's your specialty?"
~speaker = 2
*****************{talkedBruce}{talkedSusan}{talkedRoo}
[Herbal Teas]
"Herbal Teas are my specialty. I recommend the Raspberry Hibiscus."
~speaker = 1
******************{talkedBruce}{talkedSusan}{talkedRoo}
[NEXT]
"That sounds great. We'd all love to try it!"
~speaker = 0
*******************{talkedBruce}{talkedSusan}{talkedRoo}
[NEXT]
You start making teas for your guests and look up at your shelves, filled with items from your new friends. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END
*****************{talkedBruce}{talkedSusan}{talkedRoo}
[Bubble Tea]
"Bubble Teas are my specialty. I recommend the Milk Tea with Boba!"
~speaker = 1
******************{talkedBruce}{talkedSusan}{talkedRoo}
[NEXT]
"That sounds great. We'd all love to try it!"
~speaker = 0
*******************{talkedBruce}{talkedSusan}{talkedRoo}
[NEXT]
You start making teas for your guests and look up at your shelves, filled with items from your new friends. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END
*****************{talkedBruce}{talkedSusan}{talkedRoo}
[Black Teas]
"Black Teas are my specialty. I recommend the Earl Gray."
~speaker = 1
******************{talkedBruce}{talkedSusan}{talkedRoo}
[NEXT]
"That sounds great. We'd all love to try it!"
~speaker = 0
*******************{talkedBruce}{talkedSusan}{talkedRoo}
[NEXT]
You start making teas for your guests and look up at your shelves, filled with items from your new friends. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END
*****************{talkedBruce}{talkedSusan}{talkedRoo}
[Everything!]
"I have everything! You can't go wrong with any of my teas. I didn't want to limit myself to one specialty."
~speaker = 1
******************{talkedBruce}{talkedSusan}{talkedRoo}
[NEXT]
"How about you try out my recipe for Golden Eucalyptus Tea," she hands you a piece of paper with the recipe and winks at you.
~speaker = 0
*******************{talkedBruce}{talkedSusan}{talkedRoo}
[NEXT]
You start making teas for your guests, using your mom's old recipe, and look up at your shelves, filled with items from your new friends. Although this place may not be exactly like your mum's, it's better than you ever could have expected.
->END



*********** {not talkedBruce} 
[NEXT]
"How 'bout some nice tea? What's your specialty?"
~speaker = 0
************{not talkedBruce} 
[Herbal Teas]
"Herbal Teas are my specialty. I recommend the Raspberry Hibiscus."
~speaker = 1
*************{not talkedBruce} 
[NEXT]
"That sounds great. I'd love to try it!"
~speaker = 0
**************{not talkedBruce} 
[NEXT]
You start making a tea for your mother and look around at the place you created. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END
************{not talkedBruce} 
[Black Teas]
"Black Teas are my specialty. I recommend the Earl Gray."
~speaker = 1
*************{not talkedBruce} 
[NEXT]
"That sounds great. I'd love to try it!"
~speaker = 0
**************{not talkedBruce} 
[NEXT]
You start making a tea for your mother and look around at the place you created. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END
************{not talkedBruce} 
[Bubble Teas]
"Bubble Teas are my specialty. I recommend the Milk Tea with Boba!"
~speaker = 1
*************{not talkedBruce} 
[NEXT]
"That sounds great. I'd love to try it!"
~speaker = 0
**************{not talkedBruce} 
[NEXT]
You start making a tea for your mother and look around at the place you created. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END
************{not talkedBruce} 
[Everything!]
"I have everything! You can't go wrong with any of my teas. I didn't want to limit myself to one specialty."
~speaker = 1
*************{not talkedBruce} 
[NEXT]
"How about you try out my recipe for Golden Eucalyptus Tea," she hands you a piece of paper with the recipe and winks at you.
~speaker = 0
**************{not talkedBruce} 
[NEXT]
You start making a tea for your mother, using her old recipe, and look around at the place you created. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END


*********** {not talkedSusan} 
[NEXT]
"How 'bout some nice tea? What's your specialty?"
~speaker = 0
************{not talkedSusan} 
[Herbal Teas]
"Herbal Teas are my specialty. I recommend the Raspberry Hibiscus."
~speaker = 1
*************{not talkedSusan} 
[NEXT]
"That sounds great. I'd love to try it!"
~speaker = 0
**************{not talkedSusan} 
[NEXT]
You start making a tea for your mother and look around at the place you created. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END
************{not talkedSusan} 
[Black Teas]
"Black Teas are my specialty. I recommend the Earl Gray."
~speaker = 1
*************{not talkedSusan} 
[NEXT]
"That sounds great. I'd love to try it!"
~speaker = 0
**************{not talkedSusan} 
[NEXT]
You start making a tea for your mother and look around at the place you created. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END
************{not talkedSusan} 
[Bubble Teas]
"Bubble Teas are my specialty. I recommend the Milk Tea with Boba!"
~speaker = 1
*************{not talkedSusan} 
[NEXT]
"That sounds great. I'd love to try it!"
~speaker = 0
**************{not talkedSusan} 
[NEXT]
You start making a tea for your mother and look around at the place you created. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END
************{not talkedSusan} 
[Everything!]
"I have everything! You can't go wrong with any of my teas. I didn't want to limit myself to one specialty."
~speaker = 1
*************{not talkedSusan} 
[NEXT]
"How about you try out my recipe for Golden Eucalyptus Tea," she hands you a piece of paper with the recipe and winks at you.
~speaker = 0
**************{not talkedSusan} 
[NEXT]
You start making a tea for your mother, using her old recipe, and look around at the place you created. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END


*********** {not talkedRoo} 
[NEXT]
"How 'bout some nice tea? What's your specialty?"
~speaker = 0
************{not talkedRoo} 
[Herbal Teas]
"Herbal Teas are my specialty. I recommend the Raspberry Hibiscus."
~speaker = 1
*************{not talkedRoo} 
[NEXT]
"That sounds great. I'd love to try it!"
~speaker = 0
**************{not talkedRoo} 
[NEXT]
You start making a tea for your mother and look around at the place you created. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END
************{not talkedRoo} 
[Black Teas]
"Black Teas are my specialty. I recommend the Earl Gray."
~speaker = 1
*************{not talkedRoo} 
[NEXT]
"That sounds great. I'd love to try it!"
~speaker = 0
**************{not talkedRoo} 
[NEXT]
You start making a tea for your mother and look around at the place you created. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END
************{not talkedRoo} 
[Bubble Teas]
"Bubble Teas are my specialty. I recommend the Milk Tea with Boba!"
~speaker = 1
*************{not talkedRoo} 
[NEXT]
"That sounds great. I'd love to try it!"
~speaker = 0
**************{not talkedRoo} 
[NEXT]
You start making a tea for your mother and look around at the place you created. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END
************{not talkedRoo} 
[Everything!]
"I have everything! You can't go wrong with any of my teas. I didn't want to limit myself to one specialty."
~speaker = 1
*************{not talkedRoo} 
[NEXT]
"How about you try out my recipe for Golden Eucalyptus Tea," she hands you a piece of paper with the recipe and winks at you.
~speaker = 0
**************{not talkedRoo} 
[NEXT]
You start making a tea for your mother, using her old recipe, and look around at the place you created. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END

