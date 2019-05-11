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
VAR player = 1

-
~player = 1
    You wipe down the counter for the fifteenth time today. You're having a hard time believing that in only a few days the grand opening is coming! Finally your tea shop will be open! You've been waiting for as long as you can remember for this moment.
*   [NEXT]

-   Your mother bought this tea shop when she was your age and it was the greatest tea shop in town. People from miles and miles around would come to try her famous Golden Eucalyptus Leaf Tea and she loved it. One day, she just closed shop with almost no noticed. She didn't tell anyone, even her own mother. Of course, you were born after all of this happened, but ever since you first saw a picture of what this tea shop used to be when you were five years old, you knew you wanted to reopen it no matter how you would do it.
*   [NEXT]

-   You raised enough money to buy the shop a lot faster than you thought. After years of bussing tables, manning cash registers, and serving grumpy old men, you finally did it. Surprisingly, the shop wasn't that expensive. No one seemed to want this enchanting place. Sure, it's a little rough around the edges, but at the end of the day, it feels more like home to you than any other place you've ever lived.

*   [NEXT]
-   "Mum! What are you doing here?" She walks in, taking in the shop. It's probably been years since she's actually been inside. She wasn't exactly thrilled that you used your hard earned money to buy the shop back. 
*   [NEXT]
-
~player = 2
"You think I would miss my baby's grand opening?"
*   [NEXT]
-~player = 1
"The opening isn't even for a few days! There's still so much to do before I officially open..." The last couple of years, mum's health has been deteriorating a bit. She walks slower and forgets more and more things, but she's doing better than her mother did at her age. 
*   [NEXT]

-
~player = 2
"Oh that's right. Are you absolutely sure that this is what you want to do? Don't worry about the money. I can get you your money back and you'll be out of this in no time-"
*   [NEXT]

-  ~player = 1 
"Mum, stop! Of course I do. It's my dream," It's the fifth time you've told her this week. Your mum has been asking you this same question almost every day ever since you put down my first deposit.
*   [NEXT]
-
~player = 2
"You're far too young to be living your dream. You need to have more experiences first. You've hardly lived! You're hardly 20 and you've already settled down. It's not right for a young person like you,"
*   [NEXT]
-   
~player = 1
You take her hand to stop her frantic speaking. "I am sure mother. I'm excited. I'm doing this for both of us. Why can't you be happy for me?"
*   [NEXT]

-
~player = 1
She looks at you sadly for a mument and then looks away, starting to dust random corners of the shop that you've already dusted a million times. You clean in silence for a mument. "Do you have any advice for me? I mean, this is your shop after all..."
*   [NEXT]
-   ~player = 2
"Oh, honey it's been years since this was my shop. I hardly remember owning the shop,"
*   [NEXT]
~player = 1
-   "Well, can you finally tell me the secret to your Golden Eucalyptus Tea? I thought I should serve it too,"
*   [NEXT]
~player = 2
-   She looks at you seriously for a mument and then smiles. "You need a Golden Eucalyptus Leaf. I haven't seen one in decades. They're exceedingly rare," You can feel yourself frown, but  try to hide it. I want this place to be perfect, just like her place was.
*   [NEXT]
~player = 1
-   "That's okay...." 
*   [NEXT]
~player = 2
-   "I think I may know where you can find one. I have friends who own their own tea shop and if anyone will know where a Golden Eucalyptus Leaf is, they will,"
*   [NEXT]
~player = 1
-   "Where are these friends?!"

*   [NEXT]
~player = 2
-   "Well, there are three shops you could visit. Rooibos Road in Kalgoorie, Matcha Made in Heaven in Adelaide, and Aurora Blue Tea House in Sydney,"
*   [NEXT]
~player = 1
-   "Those are all in completely different parts of the country!" You map out the cities on a napkin and their distance from tiny Cairns. 
*   [NEXT]
~player = 2
-   "Well you better get a move on!" She hands you your backpack.
*   [Go to Rooibos Road]
    ->rooibos
*   [Go to Matcha Made in Heaven]
    ->matcha
*   [Go to Aurora Blue Tea House]
    ->aurora

=== rooibos ===
~beenrooibos = 1
~player = 1
-   Rooibos Road has a seedy bar-like atmosphere with other people mulling around and sipping drinks out of bottles. Heads turn when you walk through the door and head to an empty table. You're definitely not the target clientele. You start to wonder if your mother sent me to the wrong place.
*   [NEXT]
-  You open the menu on the table and confirm that it is in fact a tea house, specializing in black teas. The menu says they're known for the famous Chai, but it doesn't seem like anyone is even drinking tea!
*   [NEXT]

~player = 3
"Can I help you, kid?" a tasmanian devil askes me.
**   [NEXT]
-   You had never met a tasmanian devil in person before. They have reputation of being dangerous and generally keep away from people. My mum wouldn't send me somewhere dangerous... right?
    *   [Explain why you're there]
    ~player = 1
    "Hi there," you nervously say. "My mum sent me to come talk to you. Her name     is Kathleen... I'm actually opening my own tea sho-"
    **   [NEXT]
        ~player = 3
         "You're Kathleen's kid? I shoulda known, you look just like her!" he interrupts, sitting down at your table. "The name's Bruce. Your mother worked with my granddad for years at her tea house! I used to go into that tea house all the time when I was a kid. Can I get you anything? A tea?"
     *** [Order black tea]
    ~player = 1
     "Can I get an English Breakfast please?"
     ****   [NEXT]
    ~player = 3
    "Huh, English Breakfast? Not the most interesting choice. Would have thought Kathleen's kid woulda been more adventurous. Hold on kid, I'll grab it," 
     *****   [NEXT]
    ~player = 1
     He returns quickly with two bottles in his hand. He hands one to you and takes a sip out of the other one. You take a sip from the bottle, dubious about tea being served in a glass bottle, but find yourself surprisingly pleased with the tea.
     ->rooibosQuestions
     
     *** [Order chai]
    ~player = 1
     "Can I try the famous chai?" 
      ****   [NEXT]
    ~player = 3
     His face lights up. "Of course!" He boasts, scurrying away to grab the drink.
      *****   [NEXT]
      ~player = 1
     He returns quickly with two bottles in his hand. He hands one to you and takes a sip out of the other one. You take a sip from the bottle, dubious about tea being served in a glass bottle, but find yourself surprisingly pleased with the tea.
     ->rooibosQuestions
     
     *** [No Thanks]
     ~player = 1
     "No thanks,"
     ****[NEXT]
     ~player = 3
     "Nothing? No tea? Jeez kid why'd you come to a tea house then?"
     ->rooibosQuestions
     
    *   [Order tea]
     ~player = 1
        "Hi! Um... Can I get a chai please?"
        **   [NEXT]
     ~player = 3
        "That it?"
            ***   [Yes]
            ~player = 1
            "Um... Yes. That's it. Thank you."
            ****[NEXT]
            ~player = 1
            He turns to grab your drink without another word. He returns quickly and drops your drink at the table, quickly about to leave again.
            *****[Tell about mum]
            ~player = 1
            "My mum actually sent me to come talk to you. Her name is Kathleen... I'm actually opening my own tea sho-"
            ******[NEXT]
            ~player = 3
             "You're Kathleen's kid? I shoulda known, you look just like her!" he interrupts, sitting down at your table. "The name's Bruce. Your mother worked with my granddad for years at her tea house! I used to go into that tea house all the time when I was a kid. What can I do for you?"
             ->rooibosQuestions
            *****[Chicken Out]
            ~player = 1
            You decide not to say anything to Tasmanian devil. Coming here was definitely a mistake. You drink your tea quickly and leave without looking back. 
            ->map
            
            ***   [Actually...]
            ~player = 1
            "Actually, my mum sent me to come talk to you. Her name is Kathleen... I'm actually opening my own tea sho-"
            ****[NEXT]
            ~player = 3
            "You're Kathleen's kid? I shoulda known, you look just like her!" he interrupts, sitting down at your table. "The name's Bruce. Your mother worked with my granddad for years at her tea house! I used to go into that tea house all the time when I was a kid. What can I do for you?"
             ->rooibosQuestions

-   ->END




=== rooibosQuestions ===
*	{ not geRooibos} 
[Ask about Golden Eucalyptus]
~geRooibos = 1
~player = 1
    "You might remember that my mother was known for her Golden Eucalyptus tea, but I haven't been able to track down a Golden Eucalyptus Leaf! Would you by any chance know where I could find one?"
    **   [NEXT]
    ~player = 3
    "Nah can't say that I have, mate. I do remember that tea though. I don't think I've ever had anything so delicious! Sorry kid, never seen a Golden Eucalyptus Leaf before."
-> rooibosQuestions

*	{ not THRooibos} 
[Ask about Tea House]
~THRooibos = 1
~player = 1
    "When did you open this place?"
    **   [NEXT]
    ~player = 3
    "A few years ago. I know it's not what people expect when they see me, but it's all I've ever wanted. My granddad left this place for me when he died. I hope I've made it what he would have wanted it to be."
    
-> rooibosQuestions

*	{ not adviceRooibos} 
[Ask for Advice]
~adviceRooibos = 1
~player = 1
"Do you have any advice for an up-and-comer like me? Sometimes I feel like I'm so out of my depth..."
**[NEXT]
~player = 3
"You think you were out of your depth? Do I look like your average tea house owner to you? Does this look like your average tea house? I've had to deal with my fair share of problems thrown my way, but all it takes is perserverance. When you set your mind on something, just go for it!"
***[NEXT]
~player = 3
He gets up from the table and quickly returns with a beat up tea canister. "You see this? This is the only thing I had when I opened up this place. And look at it now." He hands the canister to me. "Take it,"
****[NEXT]
~player = 1
"Oh I can't!"
*****[NEXT]
~player = 3
"Please. I don't need it anymore. Keep it as a reminder that you're just starting out, and with a little hard work, your dream's not so far away,"

-> rooibosQuestions

*	{ not mumRooibos} 
[Ask about Mother]
~mumRooibos = 1
~player = 1
"I know you said you knew my mother... what was she like? She doesn't talk about her old tea shop very often."
**[NEXT]
~player = 3
"It was amazing. She was amazing. My granddad loved working for her. He wasn't the most trusted guy in town, if you know what I mean, but she gave him a shot. I don't know where I'd be without him or your mum for that matter."
***[NEXT]
~player = 3
"I actually developed my famous chai right at her shop when I was just boy. She encouraged my interest in the business even though my parents weren't happy about it. Your mum was actually my first taste tester." he walks over to the bar and comes back with a bottle filled with tea leaves and hands it to me. "Now I'm not in the business of giving out secret recipes or anything, but from one tea shop owner to the next, and because you're Kathleen's kid, think of this as a sample."

-> rooibosQuestions

*  [Leave Rooibos Road]
~player = 1
"Thank you for everything!"
**[NEXT]
~player = 3
"Good luck kid. You're gonna kill it."
-> map

->END





=== matcha ===
~beenmatcha = 1
~player = 1
Matcha Made in Heaven is a brightly colored cafe with plush pillows and cakes lining the display case. No one is behind the counter, but a sugar glider wearing an apron gracefully moves around the room. She's older, but seems to be charming all of the customers.
*[NEXT]
~player = 1
You wave to the sugar glider to get her attention, and her eyes light up when she notices you. She winks at her current customer who seems to be enchanted by her, and quickly glides over to you. 
**[NEXT]
~player = 4
"How can I help you, sugar?"
***[NEXT]
~player = 1
You quickly glance at the menu and notice that the cafe seems to specialize in oolong and chamamile tea, as well as so many matcha goodies. You know you're here to get answers about the Golden Eucalyptus, but everything looks so good...
****[Order oolong tea]
~player = 1
"Can I try your best oolong tea?"
*****[NEXT]
~player = 4
"Oh honey you can have whatever you want,"
******[NEXT]
~player = 1
She zooms behind the counter and starts gracefully stirring together your oolong tea latte. She slides the tea to me across the counter and I notice that she created a little foam heart in the drink.
*******[NEXT]
~player = 4
"Anything else I can get for you?"
********[Explain why you're here]
~player = 1
"Actually, my mother sent me here. She used to own a popular tea shop. Her name is Kathleen? I don't know if you remember her, but she wanted me to come to your tea shop to ask you for help. I'm opening my own tea shop..."
*********[NEXT]
~player = 4
"Oh Kathleen! I could never forget her... She was a dear friend of mine back in school. There hasn't been a day that's gone by that I haven't thought about her. I'm Susan by the way! What can I help you with darling?"
->matchaquestions

********[No]
~player = 1
"No I think I'm good."
*********[NEXT]
~player = 1
The sugar glider gives you a wink and quickly leaves again, serving her other patrons and charming them like she had been charming you. If you're gonna ask her about the Golden Eucalyptus, you should probably do it now...
**********[Get attention again]
~player = 1
You wave her down again and she zooms right on over like before.
***********[NEXT]
~player = 1
"Actually, my mother sent me here. She used to own a popular tea shop. Her name is Kathleen? I don't know if you remember her, but she wanted me to come to your tea shop to ask you for help. I'm opening my own tea shop..."
************[NEXT]
~player = 4
"Oh Kathleen! I could never forget her... She was a dear friend of mine back in school. I'm Susan by the way! There hasn't been a day that's gone by that I haven't thought about her. What can I help you with darling?"
->matchaquestions
**********[Give up]
~player = 1
The sugar glider looks too busy to deal with you right now. You decide to just give up and leave. You don't want to be a bother to anyone.
-> map


****[Order a matcha latte]
~player = 4
"Oh honey you can have whatever you want,"
*****[NEXT]
~player = 1
She zooms behind the counter and starts gracefully stirring together your matcha tea latte. She slides the tea to you across the counter and you notice that she created a little green heart on the top of the drink out of matcha.
******[NEXT]
~player = 4
"Anything else I can get for you?"
*******[Explain why you're here]
~player = 1
"Actually, my mother sent me here. She used to own a popular tea shop. Her name is Kathleen? I don't know if you remember her, but she wanted me to come to your tea shop to ask you for help. I'm opening my own tea shop..."
*********[NEXT]
~player = 4
"Oh Kathleen! I could never forget her... She was a dear friend of mine back in school. There hasn't been a day that's gone by that I haven't thought about her. I'm Susan by the way! What can I help you with darling?"
->matchaquestions
*******[No]
~player = 1
"No I think I'm good."
*********[NEXT]
~player = 1
The sugar glider gives you a wink and quickly leaves again, serving her other patrons and charming them like she had been charming you. If you're gonna ask her about the Golden Eucalyptus, you should probably do it now...
**********[Get attention again]
~player = 1
You wave her down again and she zooms right on over like before.
***********[NEXT]
~player = 1
"Actually, my mother sent me here. She used to own a popular tea shop. Her name is Kathleen? I don't know if you remember her, but she wanted me to come to your tea shop to ask you for help. I'm opening my own tea shop..."
************[NEXT]
~player = 4
"Oh Kathleen! I could never forget her... She was a dear friend of mine back in school. There hasn't been a day that's gone by that I haven't thought about her. I'm Susan by the way! What can I help you with darling?"
->matchaquestions
**********[Give up]
~player = 1
The sugar glider looks to busy to deal with you right now. You decide to just give up and leave. You don't want to be a bother to anyone.
-> map


****[Explain why you're here]
~player = 1
"Actually, my mother sent me here. She used to own a popular tea shop. Her name is Kathleen? I don't know if you remember her, but she wanted me to come to your tea shop to ask you for help. I'm opening my own tea shop..."
*****[NEXT]
~player = 4
"Oh Kathleen! I could never forget her... She was a dear friend of mine back in school. There hasn't been a day that's gone by that I haven't thought about her. I'm Susan by the way! What can I help you with darling?"
->matchaquestions

->END

=== matchaquestions ===
*	{ not geMatcha} 
[Ask about Golden Eucalyptus]
~geMatcha = 1
~player = 1
    "Well, my mother used to be known for her Golden Eucalyptus tea and I want my shop to be just like hers, but I can't seem to track down a Golden Eucalyptus leaf. Do you know where I can find one?"
    **   [NEXT]
    ~player = 4
    "I remember the tea well. It was her signature blend. Sadly, she never gave up the recipe to me. Sorry sweetie, I've never even seen a Golden Eucalyptus leaf!"
-> matchaquestions

*	{ not THMatcha} 
[Ask about Tea House]
~THMatcha = 1
~player = 1
    "This place is so cute! When did you open it?"
    **   [NEXT]
    ~player = 4
    "Oh, almost 20 years ago now! Where has the time gone... I opened up this shop around the time your mom opened up her shop. Of course, my shop wasn't nearly as popular as hers, but we stay busy!"
    
-> matchaquestions

*	{ not adviceMatcha} 
[Ask for Advice]
~adviceMatcha = 1
~player = 1
"How are you able to keep up with running this amazing tea house? I feel like it's been so hard and I'm so stressed, yet I haven't even opened up yet!"
**[NEXT]
~player = 4
"You've just gotta remember take time for yourself sweetie. A happy body and mind make a happy work place! Never put too much pressure on yourself and always make time for yourself!"
***[NEXT]
~player = 4
She leaves the table for a moment and comes back with a bag of something. "This is my signature scone mix. When I'm stressed out, I like to back. You should try it!"
****[NEXT]
~player = 1
"Thank you so much!"
*****[NEXT]
~player = 4
"Don't worry about it! Besides, I love sharing my recipes with people."
-> matchaquestions

*	{ not mumMatcha} 
[Ask about Mother]
~mumMatcha = 1
~player = 1
"You said you knew my mother in school? What was that like?"
**[NEXT]
~player = 4
"Your mother was my best friend! We were like partners in crime. The perfect duo! We both bonded over our love of tea. We both promised each other to go back to our home towns and open up our own tea shops and keep each other updated about how it was going!"
***[NEXT]
~player = 4
"Of course, your mother got a bit busy when you were born, and I really threw myself into this place, but I always think about her. Hold on," she quickly gets up from the table and returns with a painting. "Your mother gave this to me for my birthday many years ago, but I think it would be perfect for your tea shop,"
****[NEXT]
~player = 1
"Oh I couldn't! My mum gave that to you... I couldn't take it!"
*****[NEXT]
~player = 4
"This old painting has been hanging in my office for years to remind me of Kathleen, but I don't need it any more. I think it would look great in your new shop!"

-> matchaquestions

*  [Leave Matcha Made in Heaven]
~player = 1
"Thank you so much. For everything. It was great meeting you, Susan!"
**[NEXT]
~player = 4
"No problem at all! Come back any time"
-> map
->END




=== aurora ===
~beenaurora = 1
~player = 1
Aurora Blue Tea House is light and open tea house that exudes tranquility. Everyone in the room looks immensely relaxed and at peace. It's hard to pick out who the owner is, but you notice a kangaroo clearing dishes off tables and decide that she must be the owner.
*[NEXT]
~player = 1
You sit down at a free table and take a look at the menu. There are all sorts of tasty treats and various teas, but you notice that the shop seems to specialize in fruity teas.
**[NEXT]
~player = 5
"Can I get you anything, honey?"
***[NEXT]
~player = 1
You notice that the Kangaroo, carrying a bunch of dishes as well as a small baby kangaroo in her pouch, has approached you with an ordering pad.
****[Order peach tea]
~player = 1
"Hmmm can I try your peach tea?"
*****[NEXT]
~player = 5
"Yep!"
******[NEXT]
~player = 1
She was gone in a flash and returned before I even knew it with my tea. She continued to juggle plates, cups, and her baby, while handing me my tea.
*******[NEXT]
~player = 5
"Let me know if you need anything else,"
********[Stop her to explain why you came]
~player = 1
"I was hoping to talk to you for a second! My mother actually sent me here. Her name is Kathleen? She used to own a tea shop that was pretty popular... I'm opening my own tea shop and she told me that I could ask you for some help?"
*********[NEXT]
~player = 5
"Kathleen? Oh I haven't heard her name in such a long time. How is she doing? I'm pretty busy, as you can see, but I suppose I could take a few minutes for an old friend! I'm Barbra, but everyone calls me Mamma Roo."
->auroraquestions

********[Let her walk away]
~player = 1
You let her leave you alone with your tea. She bounces around the tea house serving customers left and right, fulfilling their needs before they even know they have them. Occasionally her baby peaks out from her pouch, but hides again soon after.
*********[NEXT]
~player = 1
You realize that the kangaroo is super busy, but she doesn't look like she'll be any less busy any time soon. If you're gonna ask her about the Golden Eucalyptus, it seems like it's now or never...
**********[Get her attention]
~player = 1
You simply make eye contact with the kangaroo and she hops on over, waiting for your request.
***********[NEXT]
~player = 1
"I was hoping to talk to you for a second! My mother actually sent me here. Her name is Kathleen? She used to own a tea shop that was pretty popular... I'm opening my own tea shop and she told me that I could ask you for some help?"
************[NEXT]
~player = 5
"Kathleen? Oh I haven't heard her name in such a long time. How is she doing? I'm pretty busy, as you can see, but I suppose I could take a few minutes for an old friend! I'm Barbra, but everyone calls me Mamma Roo."
->auroraquestions
**********[Wait a while]
~player = 1
You decide to wait a little longer to see if the kangaroo gets any less busy, but she never does. Before you know it, the shop is closing and you have to leave.
-> map


****[Order an herbal tea]
~player = 1
"Can I try your house brew herbal tea?"
*****[NEXT]
~player = 1
She nods her head and was gone in a flash and returned before I even knew it with my tea. She continued to juggle plates, cups, and her baby, while handing me my tea.
******[NEXT]
~player = 5
"Let me know if you need anything else,"
*******[Stop her to explain why you came]
~player = 1
"I was hoping to talk to you for a second! My mother actually sent me here. Her name is Kathleen? She used to own a tea shop that was pretty popular... I'm opening my own tea shop and she told me that I could ask you for some help?"
*********[NEXT]
~player = 5
"Kathleen? Oh I haven't heard her name in such a long time. How is she doing? I'm pretty busy, as you can see, but I suppose I could take a few minutes for an old friend! I'm Barbra, but everyone calls me Mamma Roo."
->auroraquestions
*******[Let her walk away]
~player = 1
You let her leave you alone with your tea. She bounces around the tea house serving customers left and right, fulfilling their needs before they even know they have them. Occasionally her baby peaks out from her pouch, but hides again soon after.
*********[NEXT]
~player = 1
You realize that the kangaroo is super busy, but she doesn't look like she'll be any less busy any time soon. If you're gonna ask her about the Golden Eucalyptus, it seems like it's now or never...
**********[Get her attention]
~player = 1
You simply make eye contact with the kangaroo and she hops on over, waiting for your request.
***********[NEXT]
~player = 1
"I was hoping to talk to you for a second! My mother actually sent me here. Her name is Kathleen? She used to own a tea shop that was pretty popular... I'm opening my own tea shop and she told me that I could ask you for some help?"
************[NEXT]
~player = 4
"Kathleen? Oh I haven't heard her name in such a long time. How is she doing? I'm pretty busy, as you can see, but I suppose I could take a few minutes for an old friend! I'm Barbra, but everyone calls me Mamma Roo."
->auroraquestions
**********[Wait a while]
~player = 1
You decide to wait a little longer to see if the kangaroo gets any less busy, but she never does. Before you know it, the shop is closing and you have to leave.
-> map


****[Explain why you're here]
~player = 1
"I was hoping to talk to you for a second! My mother actually sent me here. Her name is Kathleen? She used to own a tea shop that was pretty popular... I'm opening my own tea shop and she told me that I could ask you for some help?"
*****[NEXT]
~player = 4
"Kathleen? Oh I haven't heard her name in such a long time. How is she doing? I'm pretty busy, as you can see, but I suppose I could take a few minutes for an old friend! I'm Barbra, but everyone calls me Mamma Roo."
->auroraquestions

->END


=== auroraquestions ===
*	{ not geAurora} 
[Ask about Golden Eucalyptus]
~geAurora = 1
~player = 1
    "I don't know if you remember my mum's famous Golden Eucalyptus tea, but she can't seem to remember where to find a golden eucalyptus leaf, and I was hoping you might be able to help me find one?"
    **   [NEXT]
    ~player = 5
    "I do remember her famous tea, but I never knew how she made it. Always one of her best kept secrets I suppose!"
-> auroraquestions

*	{ not THAurora} 
[Ask about Tea House]
~THAurora = 1
~player = 1
    "This place is so scerene and beautiful... when did you open up?"
    **   [NEXT]
    ~player = 5
    "Not too long ago, actually. I worked for you mum for so long, that when she decided to close down, I couldn't think of anything else I'd rather do! But then this little guy's older sister was born, and I had to wait a bit till I had more time," she gestures to her baby, hiding in her pouch. 
    
-> auroraquestions

*	{ not adviceAurora} 
[Ask for Advice]
~adviceAurora = 1
~player = 1
"I don't know how you do it, with kids and a tea house? You must be so swamped with work all the time! Do you ever just want to quit?"
**[NEXT]
~player = 5
"Well, I think everyone has moments where they just want to scream and give up, but you just have to remember to have a little patience. You'll find that most things are worth the extra work if you just take your time,"
***[NEXT]
~player = 5
She hops to the counter and pulls out an ornate box and hands it to you. "A lot of people have told me that I shouldn't waste my time decorating these cakes when people mainly come here for the tea, but I think it's worth the extra attention and time,"
****[NEXT]
~player = 1
You open the box and see beautifully decorated small cakes packaged. "Thank you so much! They almost look to delicious to eat!"
*****[NEXT]
~player = 5
"Oh believe me, they taste even better than they look!"
-> auroraquestions

*	{ not mumAurora} 
[Ask about Mother]
~mumAurora = 1
~player = 1
"How did you know my mother? She's been so forgetful lately, she has a hard time telling me old stories."
**[NEXT]
~player = 5
"I worked with your mother for years! We became very close. She had you around the same time I had my first baby! She taught me a lot about the business. I tried to keep up correspondance, but it's become difficult over the years... children and running a business do keep your hands very full,"
***[NEXT]
~player = 5
"When your mum decide to close down her shop, I was so upset! But it was actually her idea for me to open my own place," she points to a tea pot on her shelf. "Your mother gave that to me from her own shop to get me started. I could never bring myself to use it because it's just so beautiful!"
****[NEXT]
~player = 1
She hops up to grab the teapot and hands it to me, "Don't you want it? It looks so amazing in your shop..."
*****[NEXT]
~player = 5
"I think Kathleen's own child should have it. It can be like a family heirloom, and you can pass it down to your child," she says smiling.

-> auroraquestions

*  [Leave Aurora Blue Tea House]
~player = 1
"It's been great meeting you Mamma Roo! Thank you for speaking to me."
**[NEXT]
~player = 5
"It was so nice meeting you. I have to give Kathleen a call!"
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
(*5 Days Later*)
*[NEXT]
It's finally here. Your opening day is here! You've worked so hard for this day to come and everything is pretty much perfect.
**[NEXT]
"I'm sorry I couldn't find the Golden Eucalyptus Leaf, mum. It must be super rare!"
***[NEXT]
"Oh pish posh. Are you happy with what you were able to accomplish?"
****[NEXT]
"I am. I know it might not be absolutely perfect without your famous tea, but I think I'm okay with that."
*****[NEXT]
"Oh sweetheart... I have a confession to make. There is no such thing as a Golden Eucalyptus Leaf!"
******[NEXT]
"What?! How can there be no such thing?!"
*******[NEXT]
"Well, I was so worried about you opening this tea shop with all that pressure you were putting on yourself... I wanted you to take a break and maybe see more of the world! My tea just uses average Eucalyptus."
********[NEXT]
"You're saying, there never was a Golden Eucalyptus Leaf? You tricked me this whole time?"
*********[NEXT]
"Well, there's this," she says, pulling out a golden necklace from her apron with a tiny leaf charm. "My mother gave me this necklace when I left home and it's where I got the name for my tea. I think it's only appropriate that you hold onto it now."
**********[NEXT]
You hold the necklace in your hand and feel your eyes well up with tears. "This is perfect mum. Thank you,"
***********[NEXT]
(Shop keepers bell)
************[NEXT]
(Bruce)
"Great place you've got, kid!"
*************[NEXT]
(Susan)
"It's like stepping back in time!"
**************[NEXT]
"What are both of you doing here?! What a nice surprise!"
***************[NEXT]
(Susan)
"Well, your last visit reminded us that it was about time to visit our dear friend Katherine, and our new friend's new shop!"
****************[NEXT]
(Bruce)
"How 'bout some nice tea? What's your specialty?"
*****************[Herbal Teas]
"Herbal Teas are my specialty. I recommend the Raspberry Hibiscus."
******************[NEXT]
(Mum)
"That sounds great. We'd all love to try it!"
*******************[NEXT]
You start making teas for your guests and look up at your shelfs, filled with items from your new friends. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END
*****************[Bubble Tea]
"Bubble Teas are my specialty. I recommend the Milk Tea with Boba!"
******************[NEXT]
(Mum)
"That sounds great. We'd all love to try it!"
*******************[NEXT]
You start making teas for your guests and look up at your shelfs, filled with items from your new friends. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END
*****************[Black Teas]
"Black Teas are my specialty. I recommend the Earl Gray."
******************[NEXT]
(Mum)
"That sounds great. We'd all love to try it!"
*******************[NEXT]
You start making teas for your guests and look up at your shelfs, filled with items from your new friends. Although this place may not be exactly like your mum's, it's perfect for you and better than you could have ever thought.
-> END
*****************[Everything!]
"I have everything! You can't go wrong with any of my teas. I didn't want to limit myself to one specialty."
******************[NEXT]
(Mum)
"How about you try out my recipe for Golden Eucalyptus Tea," she hands you a piece of paper with the recipe and winks at you.
*******************[NEXT]
You start making teas for your guests, using your mom's old recipe, and look up at your shelfs, filled with items from your new friends. Although this place may not be exactly like your mum's, it's better than you ever could have expected.
->END

