CONST winCondition = "You convinced Abby! Conversation over."
CONST lossCondition = "Abby isn't convinced... Conversation over."

-> main

=== main ===

I'm gonna convince you that your friends have more friends than you do.

Abby: “Wait, what do you mean by that?”

 * It’s pretty simple actually.
    * * Abby: “If it’s pretty simple, then you don’t need to convince me, don’t you?”
        {lossCondition}
        -> DONE
    * * Abby: “Are you trying to call me stupid?”
        {lossCondition}
        -> DONE
    * * Abby: "Hypothetically, if I hear you out, what does that mean?"
        * * * It’s called the friendship paradox.
            * * * * Abby: "Aren’t paradoxes, you know, not true?”
                * * * * * This one isn’t a real paradox, it’s just called one.
                    * * * * * * Abby: "But why’s it called one? Kinda false advertising if you ask me."
                        * * * * * * * It’s just the name of the phenomenon.
                            Abby: “Using fancy names won’t trick me! I’m leaving.”
                                {lossCondition}
                                -> DONE
                        * * * * * * * Yeah, but it’s not a paradox because it’s true, though. It’s a way to explain the probability that someone noticed in a psychology study.
                            Abby: “Oh, I have a cousin in psychology, I’ll ask them! I'll believe you for now."
                                {winCondition}
                                -> DONE
                    * * * * * * Abby: "So you're lying to me? Not cool."
                            {lossCondition}
                            -> DONE
                    * * * * * * Abby: “Then what’s it about?”
                        * * * * * * * The friendship paradox is a study that shows that people’s friends have more friends than they do.
                            Abby: "A study? Sounds scientific. Guess it has to be true, then."
                                {winCondition}
                                -> DONE
                        * * * * * * * It’s a well-known way to trick non-popular people.
                            Abby: "I feel like this is a trick. I won't fall for it!"
                                {lossCondition}
                                -> DONE
                        * * * * * * * It’s about how popularity is fake!
                            Abby: “If popularity is fake, then there’s no way my friends are more popular than I am!”
                                {lossCondition}
                                -> DONE
                    * * * * * * Abby: “Is this some kinda cult thing? If so, no thanks!”
                                    {lossCondition}
                                    -> DONE
                * * * * * Only if you're a simpleton.
                    Abby: "Hey!"
                        {lossCondition}
                        -> DONE
                * * * * * This one is definitely true.
                    Abby: "“No, it's definitely not. That’s why it's called a paradox!”
                        {lossCondition}
                        -> DONE
            * * * * Abby: "What about the paradox of you having no friends at all?"
                    {lossCondition}
                    -> DONE
        * * * Basically, there’s a mathematical formula that proves that in a graph each neighboring node is more likely to have more edges than the average node.
            * * * * Abby: “What’s that got to do with friendships?”
                * * * * * Nothing, I just wanted to confuse you.
                    Abby: "Well then congratulations, because you certainly did. I'm leaving."
                        {lossCondition}
                        -> DONE
                * * * * * Each node is a person, and each edge is a friend. Bam!
                    Abby: "Wait. That... makes sense!"
                        {winCondition}
                        -> DONE
                * * * * * Because you don’t know a lot of math, you don’t have a lot of friends.
                    Abby: "Hahaha, that's so funny. You will not survive the next calendar year."
                        {lossCondition}
                        -> DONE
            * * * * Abby: “Now you’re bringing math into this… I don’t really like math.”
                {lossCondition}
                -> DONE
            * * * * Abby: “Ok, hypothetical situation over. I’m leaving.”
                {lossCondition}
                -> DONE
        * * * It means that most people in the office don’t like you.
            * * * * Abby: "Wait, what?"
                * * * * * You just don’t talk to a lot of people.
                    Abby: “I mean… I guess I don’t. But what’s that got to do with paradoxes? Get lost."
                        {lossCondition}
                        -> DONE
 * It’s nothing personal, it’s just called the friendship paradox.
    * * Abby: “Friendship paradox? What’s that?”
        * * * It’s a paradox that states that all your friends are more popular than you.
         * * * * Abby: "Okay, I got that far.”
            * * * * * Basically, you’re probably friends with popular people. And popular people are friends with more people than you are.
                * * * * * * Abby: "So you're saying I’m not popular?"
                    {lossCondition}
                    -> DONE
                * * * * * * Abby: "What if I’m the popular friend, though?"
                    * * * * * * * But that’s statistically unlikely, because everyone needs to have a ‘most popular friend’ over all their friends.
                        * * * * * * * * Abby: "I think you're just being rude.”
                            {lossCondition}
                            -> DONE
                        * * * * * * * * Abby: “Statistics? What’s that got to do with this?”
                            * * * * * * * * * So, basically, when I approach someone random, chances are, their friends are more popular than they are.
                                Abby: "Your logic is circular (and it doesn't make any sense)!"
                                {lossCondition}
                                -> DONE
                            * * * * * * * * * Uh, I forgot.
                                Abby: “I’m… just going to go, then.”
                                {lossCondition}
                                -> DONE
                            * * * * * * * * * Didn’t you know? Statistics is a way to explain reality.
                                Abby: "I'm starting to think that this is a little above my pay grade."
                                {lossCondition}
                                -> DONE
                        * * * * * * * * Abby: “But I could be the most popular friend.”
                            * * * * * * * * * But it’s unlikely.
                                Abby: “That’s kinda rude. I’m going to meet with my actual friends now.”
                                {lossCondition}
                                -> DONE
                            * * * * * * * * * Yeah, you are! That’s why it’s a paradox.
                                Abby: "Wait, what? Thanks, I guess, but that makes no sense."
                                {lossCondition}
                                -> DONE
                            * * * * * * * * * Yeah, right. What are the chances of that?
                                Abby: “Higher than yours, buddy."
                                {lossCondition}
                                -> DONE
                        * * * * * * * * Abby: "Ok, that makes sense."
                            {winCondition}
                            -> DONE
                    * * * * * * * I’m the popular friend, actually.
                        Abby: “Somehow, I doubt that. Are you just trying to make more friends like this?”
                        {lossCondition}
                        -> DONE
                    * * * * * * * That’s not part of the paradox.
                        Abby: “That just kind of proves the paradox doesn’t make sense though, doesn't it?"
                        {lossCondition}
                        -> DONE
                * * * * * * Abby: "Oh man, this is upsetting. I don't wanna talk about my unpopularity any longer."
                    {lossCondition}
                    -> DONE
            * * * * * Yeah. That’s the paradox.
                Abby: "What? You didn't explain anything. Weirdo."
                {lossCondition}
                -> DONE
            * * * * * So you’re agreeing with me?
                Abby: “No, I’m asking you to explain the paradox! Ugh. Forget it. I’m leaving.”
                {lossCondition}
                -> DONE
         * * * * Abby: “Is this a really weird way to say I’m not popular?”
            {lossCondition}
            -> DONE
         * * * * Abby: “Yeah. I can see your friends are definitely more popular than you.”
            {lossCondition}
            -> DONE
        * * * It’s a super famous paradox. I’m surprised you don’t know about it.
            Abby: “Hey! I thought you were going to convince me. Forget it. I’m leaving."
            {lossCondition}
            -> DONE
        * * * Think about it this way. Popular people generally have more friends. You’re probably one of those friends. That means that your friends are probably pretty popular.
            * * * * Abby: “Ok, that makes sense so far…”
                * * * * * So that means that your friends are probably more popular than you.
                    Abby: "Well, that does make sense on paper..."
                    {winCondition}
                    -> DONE
                * * * * * So you’re unpopular.
                    Abby: "Yeah, I don't like you very much."
                    {lossCondition}
                    -> DONE
                * * * * * Which must suck for you.
                    Abby: "On the bright side, at least I'm not you."
                    {lossCondition}
                    -> DONE
            * * * * Abby: "But because I have friends, I'm the popular one!"
                {lossCondition}
                -> DONE
    * * Abby: “Not a really great way to start a conversation…”
        * * * I can explain!
            Abby: "Womp womp, I don't care any more."
            {lossCondition}
            -> DONE
        * * * Yeah, and that’s why you’re not popular.
            Abby: "Ok, that was needlessly rude."
            {lossCondition}
            -> DONE
 * No, trust me. I have a degree in computer science. It’s called the friendship paradox.
    * * Abby: “Ok, I guess you would know about numbers and graphs and stuff… but I still don’t understand the idea.”
        * * * Let me break it down for you. Let's say you have an undirected graph with nodes that only link to nodes of lesser values. Are you following me?
            Abby: "Ok, you completely lost me. Sorry, I don't think I'm getting it."
                {lossCondition}
                -> DONE
        * * * I really don't have time for this, do you trust a scientist or yourself more? I promise I know what I'm talking about.
            Abby: "I think you might be a crazy person."
                {lossCondition}
                -> DONE
        * * * No problem, it's really not too bad. Plus, I bet you were pretty good at math in school.
            * * * * Abby: "Me? Oh, hardly. I mean, I did get a B+ in advanced geometry..."
                * * * * * Well, this paradox is actually just simple math. If you add 2 and 2, you should always get 4. But what if you got 5? In that case, the paradox must be true. Therefore, the paradox is true.
                    Abby: "That made literally no sense. No offense, but I don't believe you actually have a degree."
                        {lossCondition}
                        -> DONE
                * * * * * Wow, impressive. So you get it, right? I shouldn't have to explain something so simple to a mathlete like you.
                    Abby: "About that... I haven't taken a math class since the 90s. Don't know if I get these weird new ideas."
                        {lossCondition}
                        -> DONE
                * * * * * Ok, so I bet you'll get it if I use math talk. Instead of friends, let's use shapes. Think of your friends like really big circles, and yourself like a smaller circle.
                    * * * * * * Abby: "I'm following you so far..."
                        * * * * * * * Um, I forgot where I was going with that.
                            Abby: "Umm, I don't think you really know what you're talking about. Sorry!"
                                {lossCondition}
                                -> DONE
                        * * * * * * * What if the small circles were big and the big circles were small? And what if you flipped the two, and then flipped them again?
                            Abby: "Alright, I'm gonna stop you right there. You seem to be terrible at explaining things, so can you just stop talking to me?"
                                {lossCondition}
                                -> DONE
                        * * * * * * * Big circles are more likely to have connections than small circles. Therefore, any circle's connections will probably be bigger than themselves. It's called selection bias.
                            * * * * * * * * Abby: "So, am I a small circle?"
                                * * * * * * * * * What are you talking about? You're a person, not a circle. I never mentioned anything about shapes.
                                    * * * * * * * * * * Abby:  "Hey, stop lying! You said you were using shapes. I don't particularily like liars."
                                        {lossCondition}
                                        -> DONE
                                    * * * * * * * * * * Abby: "I... I... I could swear you told me that. Am I going crazy?"
                                        * * * * * * * * * * * Yes, you are crazy. Nobody knows who you are or what you're saying. You should agree with everything I say or else you'll always be crazy.
                                            Abby: "I... I... I... who am I? Where am I? WHERE AM I? AHHHHHHHHHH! GET AWAY FROM ME!"
                                                {lossCondition}
                                                -> DONE
                                        * * * * * * * * * * * Hey, don't say that! It's a confusing topic, but you're smart. Think of some of your friends. Don't they always seem to have more going on than you?
                                            * * * * * * * * * * * * Abby: "Yeah, they have plans every weekend no matter what... but doesn't that mean that their friends are less popular than them, disproving the paradox?"
                                                * * * * * * * * * * * * * That's the crux of the paradox! The fact that your friend is your friend means that they have at least one friend. But you might not have friends, so you aren't guarenteed to be as popular.
                                                    Abby: "No, that's not true, I AM guarenteed to have friends if the premise is about my friends. Get owned!"
                                                    {lossCondition}
                                                    -> DONE
                                                * * * * * * * * * * * * * Oh yeah, I didn't think of that. Wait, is this paradox even true?
                                                    Abby: "Sounds like you have some thinking to do. I'll leave you to it."
                                                    {lossCondition}
                                                    -> DONE
                                            * * * * * * * * * * * * Abby: "Oh my god, that's true! They're so much more extroverted than me. Am I just a loser?"
                                                * * * * * * * * * * * * * Not necessarily. It just means that your friends are likely to have a lot of friends. They're above average, and you are... no offense... likely to be average.
                                                    Abby: "Ouch. I think I get it though..."
                                                    {winCondition}
                                                    -> DONE
                                                * * * * * * * * * * * * * Yes. You are a loser. That's why the paradox is true.
                                                    Abby: "Hey, I don't think that's true.  As a matter of fact, I think you're the loser!"
                                                    {lossCondition}
                                                    -> DONE
                                            * * * * * * * * * * * * Abby: "No, my friends are all losers. I have to plan everything in my group!"
                                                    * * * * * * * * * * * * * Then the paradox might not be true for you, but it's certainly true for your friends! So, on average, their friends, being you, are more popular than them.
                                                    Abby: "So it's usually true... that's not the same as always, though."
                                                    {lossCondition}
                                                    -> DONE
                                                    * * * * * * * * * * * * * I can imagine. You do seem popular... maybe this paradox isn't true.
                                                    Abby: "Wait, did I just convince you? Oh, how the tables have turned. Hahaha!"
                                                        {lossCondition}
                                                        -> DONE
                                            * * * * * * * * * * * * Abby: "I don't have any friends."
                                                * * * * * * * * * * * * * Oh. I'm sorry. I'll be your friend... if you agree that the Friendship Paradox is true.
                                                    Abby: "Are you trying to bribe me? With friendship? Pull out some Benjamins or get lost, pal."
                                                    {lossCondition}
                                                    -> DONE
                                                * * * * * * * * * * * * * Oops, awkward. That does kind of prove the paradox, though, because most other people definitely have more friends than you.
                                                    Abby: "That makes sense. It doesn't make me feel good, though. I think I'm gonna go lie down for a while."
                                                    {winCondition}
                                                    -> DONE
                                        * * * * * * * * * * * Whatever, the paradox is still true. Both Aristotle and Plato proved it thousands of years ago.
                                            * * * * * * * * * * * * Abby: "Wait, really? Tell me more."
                                                * * * * * * * * * * * * * It's true; both of them got the idea from Thomas Edison. You know, the three of them were best friends for years.
                                                    Abby: "Wait, you're lying to me! That timeline is way off."
                                                    {lossCondition}
                                                    -> DONE
                                                * * * * * * * * * * * * * Yeah, in 300BC they got together and published a scroll proving the paradox to be true beyond a reasonable doubt.
                                                    Abby: "Beyond reasonable doubt, you say?... No, those old guys were crazy. They didn't even have WiFi."
                                                    {lossCondition}
                                                    -> DONE
                                            * * * * * * * * * * * * Abby: "Hey, stop using big words. I don't trust people who use big words. Good day to you." 
                                                {lossCondition}
                                                -> DONE
                                * * * * * * * * * Not really, you're probably close to average in size. But your friends are usally bigger circles than you are. The big circles have lots of connections, and the little ones don't have any.
                                    Abby: "Oh, now I get it. I think. Yeah, I get it."
                                    {winCondition}
                                    -> DONE
                            * * * * * * * * Abby: "But shouldn't all circles even out? Why is the average of other circles higher than the size of any given circle?"
                                * * * * * * * * * The circles are all average, but the bigger ones have more connections than the smaller ones.
                                    Abby:  "Big circles and small circles. None of this means anything and I'm out out of patience."
                                        {lossCondition}
                                        -> DONE
                                * * * * * * * * * Remember, not everyone has the same number of friends!
                                    * * * * * * * * * * Abby: "I just don't think I'm ever gonna get this." 
                                        {lossCondition}
                                        -> DONE
                                    * * * * * * * * * * Abby: "You aren't making any sense now."
                                        {lossCondition}
                                        -> DONE
                        * * * * * * * You're so sexy. Please agree with me. Please please please.
                            Abby: "I thought you would never ask. I'll agree with anything you say if you buy me dinner..."
                            * * * * * * * * Italian, tomorrow night. Wear something nice.
                                Abby: "Sorry, I think I just got the ick from that."
                                {lossCondition}
                                -> DONE
                            * * * * * * * * BARK! BARK! BARK! WOOOOOF.
                                Abby: "What the hell are you doing? Please step away from me."
                                {lossCondition}
                                -> DONE
                    * * * * * * Abby: "Hey, how stupid do you think I am? I know what circles are."
                        * * * * * * * Woah, woah, sorry. I didn't mean to offend.
                            * * * * * * * * Abby: "Well, you have. I know my shapes, thank you very much."
                                            {lossCondition}
                                            -> DONE
                            * * * * * * * * Abby: "Sorry, I don't know why I snapped. I just don't want to think about this right now, it hurts my brain too much."
                                {lossCondition}
                                 -> DONE
                        * * * * * * * Why are you being so mean to me? What did I ever do to you?
                                        Abby: "You keep talking about friends and shapes and math and I'm confused! Just leave me ALONE!"
                                        {lossCondition}
                                        -> DONE
                * * * * * You WILL believe what I say. You agree with me. You understand my words.
                    Abby: "Dude, are you tying to do a Jedi mind trick on me? You're so weird."
                    {lossCondition}
                    -> DONE
            * * * * Abby: "You bet. I was the master of take-home quizzes."
                * * * * * Hahaha, me too. This paradox is like a question on one of those quizzes. Think about it this way - the more friends you have, the more popular you are. The more popular you are, the more friends you have.
                    Abby: "But... that doesn't mean my friends are more popular than me. Sorry, I give up. I don't understand this."
                    {lossCondition}
                    -> DONE
                * * * * * Really? You did take home quizzes? Must not've been in many advanced classes...
                    Abby: "Woah, I took multiple APs. Stop trying to make me feel stupid."
                    {lossCondition}
                    -> DONE
            * * * * Abby: "Hahaha, stop it! You're too much."
                * * * * * No, you're too much. There's something special about you. I bet you have lots of friends.
                    Abby: "Yeah, I do. But that means that my friends can't possibly be more popular than me."
                        {lossCondition}
                        -> DONE
                * * * * * I'm flattered. Let's talk about this paradox. It stems from something called selection bias.
                    * * * * * * Abby: "Sorry, not interested in bias! I believe in equality."
                        {lossCondition}
                        -> DONE
                    * * * * * * Abby: "Ok, what is that?"
                        * * * * * * * Selection bias can be confounding, have causation, or have collisions. Are you following?
                            * * * * * * * * Abby: "Absolutely not. I don't understand any of those words, and I don't really feel like learning them."
                                {lossCondition}
                                -> DONE
                            * * * * * * * * Abby: "Uhhh, yeah, totally. Can you repeat yourself once more though?"
                                * * * * * * * * * No, I'm not interested in explaining things to dumbasses.
                                    Abby: "Oh, I'm... sorry... I'll leave you alone."
                                    {lossCondition}
                                    -> DONE
                                * * * * * * * * * Sure. Basically, the thing about selection criteria is that they aren't always consistent. If someone is your friend, that means they have at least one friend. But not everyone has friends.
                                    Abby: "Wait, that actually kinda makes sense! So my friends are by definition more popular than the average person. Cool."
                                    {winCondition}
                                    -> DONE
                        * * * * * * * Selection bias happens when the data we choose doesn't accurately represent the whole picture. For example, when we someone to examine someone with friends, we will always find a more popular person than the average person, because not everyone has friends.
                            * * * * * * * * Abby: "Oh, ok. But does that mean I'm unpopular?" 
                                * * * * * * * * * Just from this conversation, I would certainly say so.
                                    Abby: "Hey, fuck you."
                                    {lossCondition}
                                    -> DONE
                                * * * * * * * * * No, not necessarily. More that your friends are particularily popular.
                                    Abby:  "Those guys? No way, they're losers. So I find your premise to be faulty."
                                        {lossCondition}
                                        -> DONE
                            * * * * * * * * Abby: "I disagree with that premise. Everyone has at least one friend!"
                                {lossCondition}
                                -> DONE
                    * * * * * * Abby: "This conversation is soooo boring. I don't want to be rude, but please stop talking."
                        {lossCondition}
                        -> DONE
            * * * * Abby: "High school? Sorry, I don't think I know you."
                {lossCondition}
                -> DONE
        * * * Ok, so what if Johnny has three friends, but each of those people only have one friend, being Johnny. What is the average friend count of those four people?
            * * * * Abby: "Uhhh, one?"
                * * * * * Exactly. But Johnny has 3 friends, so he's the most popular.
                    Abby: "Wait a minute, that math is wrong! If there are 6 total friendships and 4 people, that means that each person has more than one friend. I don't know if you know what you're talking about..."
                        {lossCondition}
                        -> DONE
                * * * * * Almost, but it's actually 1.5.
                    * * * * * * Abby: "No, it's definitely 1. Don't try to trick me!"
                        {lossCondition}
                        -> DONE
                    * * * * * * "Oh, because there are 6 friends shared among 4 people? Got it." 
                        * * * * * * * Exactly. So the average is 1.5, but for most people in this group, their only friend has 3 friends. So their friend is more popular than them.
                            Abby: "But I might be Johnny, so you're wrong if you assume this is always true."
                            {lossCondition}
                            -> DONE
                        * * * * * * * Wait, is that even right? I'm confusing myself.
                            Abby: "If you can't convince yourself, why even bother talking to me? Come on, man."
                                {lossCondition}
                                -> DONE
            * * * * Abby: "I guess two."
                * * * * * That's not a great guess. Have you taken any math before?
                    Abby: "Sorry, excuse me? Umm, I need to take a call."
                        {lossCondition}
                        -> DONE
                * * * * * Almost, but it's actually 1.5.
                    * * * * * * Abby: "Oh, because there are 6 friends shared among 4 people? Got it."
                        * * * * * * * Exactly. So the average is 1.5, but for most people in this group, they only friend have one friend. So their friend is probably more popular than them.
                            Abby: "That makes sense. Thanks for explaining!"
                            {winCondition}
                            -> DONE
                        * * * * * * * And if the average is 1.5, then we have to take the square root of the composition to find the median.
                            Abby: "Ok, you just completely lost me. I'm not a mathematician, so I don't think I'm gonna grasp this, sorry."
                            {lossCondition}
                            -> DONE
            * * * * Abby: "I'm gonna say three."
                * * * * * 3? But there are only 6 connections shared among 4 people. So the average should be 1.5.
                    Abby: "Wait, you're right! And if the average is 1.5, then the median would be... uhh.. I don't like math. I give up. sorry."
                        {lossCondition}
                        -> DONE
                * * * * * No, the average is actually 7.
                    Abby: "Seven? What the hell are you talking about? I feel like you're messing with me."
                    {lossCondition}
                    -> DONE
            * * * * Abby: "I have no idea."
                * * * * * If you aren't gonna even guess, then why should I bother talking to you?
                    Abby: "Why should I bother talking to you? You aren't making any sense!"
                    {lossCondition}
                    -> DONE
                * * * * * Oh, boy, you're just useless aren't you?
                    Abby: "Sorry, who the hell even are you? Don't condescend to me."
                    {lossCondition}
                    -> DONE
    * * Abby: "Computer science, what does that have to do with anything?”
        * * * This is a key concept in the field. It's called selection bias.
            * * * * Abby: "What is that?"
                * * * * * Selection bias is when you only select biased people in a crowd. That way, you'll never get people with many friends, because biased people are not usually very friendly.
                    Abby: "Hold up... this feels like misinformation."
                    {lossCondition}
                    -> DONE
                * * * * * Selection bias is a distortion of data that happens when the data selected does not accurately represent the overall population.
                    Abby: "I'm gonna stop you right there. Too many big words, my attention span has been spent."
                    {lossCondition}
                    -> DONE
            * * * * Abby: "Sounds boring. Very very boring. I'm BORED!"
                {lossCondition}
                -> DONE
        * * * Computers are the smartest things in the world. I wrote a program that proves this paradox to be true in both C++ and in Rust.
            Abby: "Wow, that's pretty impressive. Doesn't mean anything to me, though."
            {lossCondition}
            -> DONE
    * * Abby: “If it’s a paradox, then how come it’s true? I thought paradoxes were supposed to be impossible to explain.”
            * * * Yeah, you're right. But this one is true. That's the paradox.
                Abby: "Ok, I may not be the smartest person alive, but I know that doesn't sound right..." 
                {lossCondition}
                -> DONE
            * * * Not necessarily; they only seem illogical, but are often true.
                * * * * Abby: "So this one is true? How so?"
                    * * * * * Because people with friends are always more popular than people with no friends.
                        Abby: "But I also have friends. And I'm not less popular than them. Sounds like your paradox has some holes in it."
                        {lossCondition}
                        -> DONE
                    * * * * * It just is. Trust me or not, it is.
                        Abby: "Sorry, I'm gonna need more than that."
                        {lossCondition}
                        -> DONE
                    * * * * * Because social networks aren't even. A few popular people are likely to hoard lots of friendships, while everyone else has less than average.
                        Abby: "But without knowning whether I'm the popular one or not, you're just guessing. Pure speculation!
                        {lossCondition}
                        -> DONE
                * * * * Abby: "That's a paradox. Which isn't true. Wait, what is a paradox? Is this conversation a paradox? Stop confusing me!!!"
                    {lossCondition}
                    -> DONE
            * * * It's impossible to explain to someone like you.
                "Well, it's impossible to talk. to someone like you. Goodbye, weirdo."
                {lossCondition}
                -> DONE
    * * Abby: “Sorry, I don't trust computer scientists. Something about personal hygiene...” 
        {lossCondition}
        -> DONE
 * I just don’t think you’re very popular.
    * * Abby: "Ouch. I mean, you aren't wrong... my friends do seem to have more plans than me."
        * * * That doesn't mean you're really unpopular, just that your friends are more active than you are. And that's true for most people.
            * * * * Abby: "But you can't be sure it's true for me. In many circles, I'm the most popular one."
                {lossCondition}
                -> DONE
            * * * * Abby: "Wait, how can it be true for most people? It isn't true for my friends, because I'm their friend and I'm less popular than them."
                * * * * * Wait, that's a good point. Shoot.
                    Abby: "Talk to me again when you understand your own argument."
                    {lossCondition}
                    -> DONE
                * * * * * But friendships aren't distributed evenly. So the average is usually lower than the most popular's count.
                    Abby: "You're using a lot of words like 'usually'... I really doubt this is true all of the time."
                        {lossCondition}
                        -> DONE
                * * * * * Can you stop asking me questions?
                    Abby: "You came up to me and started speaking about paradoxes for no reason. And I'm the one being rude?"
                        {lossCondition}
                        -> DONE
        * * * Exactly. You're a sad, stinky little loser who nobody likes.
            Abby: "I... I... I am. I'm sad and stinky. And I'm too stupid to understand what you're trying to explain. Sorry about that." 
                {lossCondition}
                -> DONE
    * * Abby: "Woah, I'm very popular! As a matter of fact, you're probably much lonlier than I am."
        {lossCondition}
        -> DONE
    * * Abby: "Popularity is subjective, you know..."
        * * * Not the way I'm defining it right now. I'm saying that your popularity is the number of friends you have, and nothing else.
            * * * * Abby: "Well, I disagree with that interpretation of popularity. Seems like there's no point in arguing with you."
                {lossCondition}
                -> DONE
            * * * * Abby: "Ok, let's say that's true. How do you know that my number is lower than my friends' numbers?"
                * * * * * I can't know for sure, but by using Benford's Law we can deduce that lower numbers are more common than higher ones.
                    Abby: "Woah, one topic at a time. I feel like you're trying to bamboozle me..."
                        {lossCondition}
                        -> DONE
                * * * * * Well, your number can't be above like, 3. There's no way more than 3 people are willingly your friend.
                    Abby: "Oh yeah? Well your number can't be above 0. Because nobody would want to be friends with you."
                        {lossCondition}
                        -> DONE
        * * * Yeah, you're right. I shouldn't compare you to other people.
            Abby: "You know what? You really shouldn't. I'm glad we both learned a lesson about kindess and tolerance today. Goodbye!"
                {lossCondition}
                -> DONE
    * * Abby: "I don't want to talk to you anymore." 
        {lossCondition}
        -> DONE
        
- End of convo!

-> END
