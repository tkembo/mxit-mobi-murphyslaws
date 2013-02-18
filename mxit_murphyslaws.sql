-- Here is a sample Murphy's Laws Database
-- This database only has one category
-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 01, 2013 at 10:45 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mxit_murphyslaws`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`) VALUES

(30, 'Miscellaneous Laws');

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE IF NOT EXISTS `quote` (
  `quote_id` int(11) NOT NULL AUTO_INCREMENT,
  `quote` varchar(700) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`quote_id`),
  UNIQUE KEY `quote_id` (`quote_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3014 ;

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`quote_id`, `quote`, `category_id`) VALUES
(2789, 'Movies that are not available on video are the ones you want to see.', 30),
(2790, 'A library book will always be checked out when you want to get it.', 30),
(2791, 'Any movie at your local video store will always be rented out when you want to rent it yourself.', 30),
(2792, 'Your print job is always behind the Largest Print job in the Queue.', 30),
(2793, 'If its about to print, The printer will get jammed.', 30),
(2794, 'When they fix the paper jam, it will be out of Paper.', 30),
(2795, 'When you get the paper, it will be out of toner.', 30),
(2796, 'The legibility of a copy is inversely proportional to its importance.', 30),
(2797, 'If you''ll watch your team during a crucial game they will lose.', 30),
(2798, 'A week before Thanksgiving, your dishwasher breaks. The Whirlpool parts the repairman ordered arrive the day before Thanksgiving. Problem is your dishwasher is a Maytag. Too late to order the correct appliance parts.', 30),
(2799, 'The rate of instrument failure/breakdown is inversely proportional to the ease of finding a repairman.', 30),
(2800, 'Any instrument can be used as a hammer, the more delicate or expensive the instrument, the better hammer it becomes.', 30),
(2801, 'If it doesn''t fit, force it... If it breaks, it needed replacing anyway', 30),
(2802, 'If you drop a tool or small part while working on a car, it will roll to the exact center underneath the vehicle', 30),
(2803, 'If you have enough grease & a big enough hammer, you can put anything... anywhere.', 30),
(2804, 'Any instrument when dropped will roll into the least accessible corner.', 30),
(2805, 'If you drop a tool or a part it will roll to the exact center underneath your car thus extending your repair enjoyment.', 30),
(2806, 'the television show that you watched once and loved will be discontinued', 30),
(2807, 'If you watch a TV show only twice during the season, the second time will be a repeat of the first', 30),
(2808, 'If your VCR is set to tape your favorite program every day, and you find that at certain times it is taping nothing but reruns that you''ve already seen, the VCR tape will run out in the middle of the only program that you haven''t already seen.', 30),
(2809, 'When you want to watch your favorite program, there is a black out', 30),
(2810, 'When you want to record your favorite program so you can watch it over and over again, you were recording the wrong channel', 30),
(2811, 'You can''t reach the tool dropped while working on a car engine, and it will be a non-magnetic alloy.', 30),
(2812, 'The lighter the rug the more apt a dropped peanut butter & jelly sandwich will land face down.', 30),
(2813, 'When working up high the tool you drop will always land to do the most damage to the tool and the object it hits.', 30),
(2814, 'If you drop an unbreakable object, it will always land on something more valuable.', 30),
(2815, 'The distance to your departure gate is directly proportional to the weight of your carry on luggage and inversely proportional to the time remaining before your flight.', 30),
(2816, 'The number of the departure gate is inversely proportional to the time available to get there.', 30),
(2817, 'Travel is a delight if you have a place to leave and return to', 30),
(2818, 'As soon as the stewardess serves the coffee, the airline re-encounters turbulence.', 30),
(2819, 'When looking for a street, it will be the only one you drove past before you saw the street sign.', 30),
(2820, 'the first escalator you find is always going the wrong way.', 30),
(2821, 'If you''re already having a bad day, the shortest, most seemingly innocent trip will occur during the hottest, dustiest hour, along the most crowded, traffic-jammed street, with a broken traffic light, an accident blocking the way, wailing children in the back seat, and your car almost out of gas', 30),
(2822, 'If someone giving you directions says at any time, "You can''t miss it," be assured than you will', 30),
(2823, 'Rain always happens when on a hike.', 30),
(2824, 'The shortest way from point A to B is by GPS', 30),
(2825, 'When counting the children in a group.. there''s always one missing.', 30),
(2826, 'Two rules matter for a scout: Scout leaders are always right; If they are not then rule number 1 is activated.', 30),
(2827, 'Whenever you have something important to do the next morning, the alarm will never go off', 30),
(2828, 'Radio clocks never go off.', 30),
(2829, 'The least irritating alarm is the most inefficient.', 30),
(2830, 'The snooze bar is the greatest invention by man.', 30),
(2831, 'Alarm clocks can make the most passive of us fall into a violent rage. Smashing the alarm clock to pieces is a healthy and cheap way to relieve tension.', 30),
(2832, 'A contaminant will always be isolated.', 30),
(2833, 'The required culture will never give isolated colonies.', 30),
(2834, 'If the preservation vial is not lost, the culture is not viable.', 30),
(2835, 'If the culture is viable, it has mutated.', 30),
(2836, 'Nobody knows whose fault it is that the story isn''t moving, but everyone has a different theory.', 30),
(2837, 'The Game Master is never on ICQ.Neither are any of the other players.', 30),
(2838, 'The last man entering an elevator going up goes to the lowest floor.', 30),
(2839, 'if you are in an elevator that is descending, The latest person to enter will punch the highest floor.', 30),
(2840, 'The first person needing to exit the elevator will always be the person farthest to the rear of the elevator', 30);
INSERT INTO `quote` (`quote_id`, `quote`, `category_id`) VALUES
(2841, 'The chances the elevator isn''t work is inversely proportional to the weight you are carrying multiplied by the number of stairs you''ll have to climb.', 30),
(2842, 'Communication usually fails, except by accident', 30),
(2843, 'If a message can be interpreted in several ways, it will be interpreted in a manner that maximizes the damage', 30),
(2844, 'The more we communicate, the worse communication succeeds', 30),
(2845, 'In mass communication, the important thing is not how things are but how they seem to be', 30),
(2846, 'The importance of a news item is inversely proportional to the square of the distance', 30),
(2847, 'The more important the situation is, the more probably you forget an essential thing that you remembered a moment ago', 30),
(2848, 'Korpela''s First Corollary: If nobody barks at you, your message did not get through', 30),
(2849, 'Korpela''s Second Corollary: Search for information fails, except by accident', 30),
(2850, 'The Pedagogic Corollary: Give the student a chance to realize he misunderstood it all', 30),
(2851, 'The amount of pain is inversely porpotionate to the amount of ice left in the ice maker', 30),
(2852, 'The more minor the procedure the more likely it is to go wrong', 30),
(2853, 'It is virtually impossible to incorrectly diagnose yourself on the Internet. Doctors will perform every concivable test to prove you otherwise', 30),
(2854, 'A man who walks through the turnstiles backwards going to Bangkok.', 30),
(2855, 'Never look up when dragon flies overhead.', 30),
(2856, 'Everybody wants to use the bathroom on the same time.', 30),
(2857, 'the squeakiness of floorboards is directly proportional to the need to remain unnoticed', 30),
(2858, 'You might forget your past, but your past will never forget you.', 30),
(2859, 'Give a controversial, immoral issue, enough leeway in mainstream society, it will become the norm', 30),
(2860, 'All generalizations are false, including this one', 30),
(2861, 'you need something the most, only after you realize you''ve permanently lost it.', 30),
(2862, 'Spending enough time and money, all human behavior can be psychologically explained. Even the most repulsive.', 30),
(2863, 'Everything gets worse with time except the wine. And this one, no always', 30),
(2864, 'The early bird suffers from insomnia.', 30),
(2865, 'History is much like an endless waltz. the three beats of war, peace, and revolution continue on forever.', 30),
(2866, 'Every thing that is countable is too little.', 30),
(2867, 'Every thing that is measurable is too small.', 30),
(2868, 'If you can quantize it, it is too small.', 30),
(2869, 'Your nose always itches when your hands are tied.', 30),
(2870, 'When you believe you have seen the utmost of one''s stupidity they never cease to amaze you and go one step further.', 30),
(2871, 'Life stinks... then you have a heart attack, get paraplegic... and find yourself forced to say that it wasn''t that bad after all...', 30),
(2872, 'When you need gum for your breath in the morning and you can''t find any.', 30),
(2873, 'The person you''ll ask won''t have any either.', 30),
(2874, 'If they will have gum it will be in a flavor that you really don''t like.', 30),
(2875, 'You cannot stop the ongoing love affair between pasta sauce and a white dress shirt.', 30),
(2876, 'Your parents'' advice only makes sense 20 years after they gave it to you.', 30),
(2877, 'Your cell phone always fall on the hardest part of the ground.', 30),
(2878, 'Friends come and go. Enemies gather.', 30),
(2879, 'A web page is only a page until its printed. Then it can be any number of pages.', 30),
(2880, 'What is (written) history? The last kick of the victor in the pants of the defeated.', 30),
(2881, 'If you have a 50% chance of being right, you''re wrong 90% of the time.', 30),
(2882, 'Anything By Nothing Equals Everything (Any number divided by zero equals infinite)', 30),
(2883, 'Whenever you don''t want to do something, is exactly when it needs to be done.', 30),
(2884, 'The weakest link is the most stable one.', 30),
(2885, 'The surest way to be late is to have plenty of time.', 30),
(2887, 'After trying to get something apart (or together) for 90 minutes, you find a clip that gets the job done in 30 seconds (tried and tested many times).', 30),
(2888, 'Clothes that are labeled (non-run) aren''t.', 30),
(2889, 'The height of foolishness is to believe red or black die doesn''t run', 30),
(2890, 'The more certain you are that your thought is original, the more obscure the source from which you accidentally plagiarized it.', 30),
(2891, 'Too often we lose sight of life''s simple pleasures. Remember, when someone annoys you it takes 42 muscles in your face to frown, BUT, it only takes 4 muscles to extend your arm and bitch-slap that mother@#?!&* upside the head', 30),
(2892, 'Nothing succeeds like success', 30),
(2893, 'Behind every successful man is a woman; the further behind the woman the better the chances of his success.', 30),
(2894, 'Junk is something you''ve kept for years and throw away two weeks before you need it.', 30),
(2895, 'In a movie a single Ninja is an unstoppable semi-immortal and mysterious killing machine. As their number increases the ninja progressively becomes more of a bumbling fumbling idiot. Also applies to thugs, mobsters, gangs and superheroes.', 30),
(2896, 'The item you need the most will always be at the bottom of the pack.', 30),
(2897, 'Whenever you get a great, original idea, it''s when you forget the idea.', 30),
(2898, 'Any good idea you ever had will just be accredited to someone else once you tell someone about it.', 30),
(2899, 'If you hold a hammer in your hand, everything around you will look like a nail.', 30),
(2900, 'If you try to be better than worse, you''ll be better at being worse.', 30),
(2901, 'Nothing is definite.', 30),
(2902, 'The grass is always greener on the other side. This law still applies when you move next door.', 30),
(2903, 'Why violence when there is vengeance.', 30),
(2904, 'In stores, the other line always moves faster.', 30),
(2905, 'Clicking your heels three times means you''ve fallen and can''t get up.', 30),
(2906, 'Enough is never enough enough.', 30),
(2907, 'Life is a sexually transmitted disease with 100% fatality rate.', 30),
(2908, 'Things can''t get worse if you were born an Amazon pygmy cannibal.', 30),
(2909, 'Moral beliefs tend to be like laws in crowded places.', 30),
(2910, 'If there''s a flat surface, someone will put something on it.', 30),
(2911, 'Don''t play leapfrog with a unicorn.', 30),
(2912, 'A non-smoker among smokers will always be upwind.', 30),
(2913, 'A Camel is a Horse made by a committee.', 30),
(2914, 'A committee is the only life form with 12 stomachs and no brains.', 30),
(2915, 'The meek shall inherit the earth, but not the mineral rights', 30),
(2916, 'A person''s happiness is inversely related to how many timepieces s/he owns', 30),
(2917, 'If you have a clear mind, you don''t get to think', 30),
(2918, 'To be a successful person, you need to succeed', 30),
(2919, 'A person who writes a law has never experienced it before', 30),
(2920, 'In view of the current work-load, the light at the end of the tunnel has been switched off', 30),
(2921, 'In general it is better to keep your mouth shut and let people think you''re a fool, than to open it and remove all', 30),
(2922, 'A heavy frozen roast, stored on a freezer shelf, 5 feet from the ground, will fall on the most vulnerable toe available. Following that, it will try to bounce to the other foot, with a 50% chance of success.', 30),
(2923, 'The Voice of Experience never speaks up until it''s too late.', 30),
(2924, 'If you are not thoroughly confused, you have not been thoroughly informed.', 30),
(2925, 'When sitting in the audience watching a sport event among 60.000 other spectators, the only time you pick your nose, you are on national TV.', 30),
(2926, 'If you fiddle with something long enough you''ll eventually break it.', 30),
(2927, 'Sticks and stones will break your bones but words will get you killed.', 30),
(2928, 'Man is the only animal able to retrace his steps to make the mistakes previously avoided', 30),
(2929, 'The greater the number of people involved in a social function, the less intelligent each of the participants becomes', 30),
(2930, 'A plea for justice is often a claim for injustice in one''s own favor', 30),
(2931, 'When dinner is on time, your spouse is late. When dinner is late, your spouse is on time.', 30),
(2932, 'As soon as you light up the commercial starts', 30),
(2933, 'Never sail the boat where the birds are walking', 30),
(2934, 'If there are M ways to do a thing, and out of M, N ways lead to the wrong conclusion, then the probability of doing it in', 30),
(2935, 'The more you say you''ll win, the more difficult it is to come true.', 30),
(2936, 'Even the darkest hour has only 60 minutes', 30),
(2937, 'Every rule has an exception, including this rule.', 30),
(2938, 'sometimes in order to clean up, it is necessary to make a mess', 30),
(2939, 'Whenever a phone rings, it rings at least in pairs', 30),
(2940, 'If 50 people say a foolish thing, it is still a foolish thing', 30),
(2941, 'If 1000 people say a foolish thing, they''re most likely receiving an endorsement fee', 30),
(2942, 'Never teach a pig to sing. It waste your time and annoys the Pig.', 30),
(2943, 'a winner should quit, a quitter is sure to win', 30),
(2944, 'Skepticism is to pessimism as doubt is to proof', 30),
(2945, 'Skeptics are blessed with ignorance, while pessimists are cursed with knowledge', 30),
(2946, 'Having is not always as pleasing a thing as wanting. It is not logical but I have observed it to be true.', 30),
(2947, 'When you remember the trash needs taking out the garbage truck is 2 doors down', 30),
(2948, 'Sooner or later you will spill your beer', 30),
(2949, 'Never open a pill bottle over the bathroom sink', 30),
(2950, 'The most precise measuring instrument known to man for finding the exact center underneath a parked vehicle is a ball', 30),
(2951, 'Anything that can go wrong will, one hour before you are supposed to leave on vacation.', 30),
(2952, 'Anything that can go wrong will, one hour before the three day weekend starts.', 30),
(2953, 'Anything that can go wrong will, one hour before closing on Friday.', 30),
(2954, 'No system is so perfect it can''t be made to work', 30),
(2955, 'During the course of any endeavor you will always see the winning move right after you''ve executed the losing one', 30),
(2956, 'The less you have to paint, the more paint you get on yourself', 30),
(2957, 'When you''re riding a bike - it will rain', 30),
(2958, 'Lube something good and it only gets better, lube something bad and it only gets worse', 30),
(2959, 'To check the spelling of a word in the dictionary, you have to know how it''s written', 30),
(2960, 'Pens sent through the dryer intentionally never break, but those sent by accident always attack white clothes', 30),
(2961, 'Nobody is incompetent. Incompetence is nothing but competence in incompetency', 30),
(2962, 'Coincedence doesn not exist, everything happens for a random reason', 30),
(2963, 'Wishes expand in direct proportion to the resources available for the gratification.', 30),
(2964, 'Anything that can be misused will be misused (legal loopholes, marketing information, etc.)', 30),
(2965, 'Everything is more complicated than it looks at first', 30),
(2966, 'The time you have to wait before going to bed increases proportionally to how tired you are', 30),
(2967, 'The only people less likely to follow your advice than those who receive it unsolicited are those who ask for it.', 30),
(2968, 'If your happy, don’t worry you’ll get over it', 30),
(2969, 'If you have no problems, then you have no clue to what is going', 30),
(2970, 'When you know that you are in luck - Murphy''s law will apply to you; If you know that Murphy will strike you at any time - he won''t; but than you will know he won''t so he will.', 30),
(2971, 'Murphy''s Law is unconstitutional, but will never be repealed.', 30),
(2972, 'It is a fact that every thing in universe moves counterclockwise.', 30),
(2973, 'Good luck is inversely proportional to good timing.', 30),
(2974, 'The first thing you''ll have to do, is the last thing you wished.', 30),
(2975, 'The first thing to break down is the irreparable one.', 30),
(2976, 'Keys dropped near an open elevator door will always fall down the crack. And will cost you more to get them out than it will to get a second set cut.', 30),
(2977, 'The more skilled you are at something, the worse you are at it when showing someone.', 30),
(2978, 'If someone ever said that something wouldn''t go wrong in a billion years, they said it a billion years ago.', 30),
(2979, 'The one you buy will be the only one that doesn''t work.', 30),
(2980, 'When playing board-games which involve quizzes etc, you will always know the answers to everyone else''s set of questions but never your own.', 30),
(2981, 'The future is like now, only longer.', 30),
(2982, 'If you put a law into your own words, you can name it after yourself (take many laws from this site into account, though not this one... ahem...).', 30),
(2983, 'If you notice that one of the laws you read came from a different source, it was either completely innocent or completely malevolent.', 30),
(2984, 'If your plane is about to crash, the parachute are missing', 30),
(2985, 'When boarding a plane: get into the plane; let the daredevils get on', 30),
(2986, 'There''s no need for a hot water tank; hot water doesn''t need heating', 30),
(2987, 'No one''s life or liberty is safe while the legislature is in session', 30),
(2988, 'Where you stand on a decision; depends on where you sit', 30),
(2989, 'A smoking pipe gives a wise man something to think about, and a fool something to stick in his mouth', 30),
(2990, 'If you burn your finger minutes can seem like hours; When you''re with your loved one hours can seem like minutes.', 30),
(2991, 'The process of growing up answers questions you don''t know your asking', 30),
(2992, 'Every aquarium will eventually leak.', 30),
(2993, 'Every fish will eventually die.', 30),
(2994, 'If your dog is going to suffer from diarrhea, it will happen between the time the carpet is cleaned for the holidays and the last holiday get-together.', 30),
(2995, 'Never argue with an idiot. They drag you down to their level and then beat you with experience.', 30),
(2996, 'Any universe that may exist, parallel to ours, that do not interact, and has not interacted, and will not interact with our universe, does not exist.', 30),
(2997, 'If the shipment is already delayed, the weather goes bad and the harbor will close.', 30),
(2998, 'as soon as you learn a new trick you forget how to do it', 30),
(2999, 'as soon as you learn a new song, you forget the lyrics', 30),
(3000, 'when you set an alarm on an important day, it wont go off', 30),
(3001, 'If you don''t stand for something, you''ll fall for anything', 30),
(3002, 'The number of times you drop the soap in the shower is inversely proportional to the time remaining before your appointment.', 30),
(3003, 'The bigger / more important the job / part, the more you bust your hump to get it done, the longer it will sit on the loading dock.', 30),
(3004, 'Smoking will kill you, but so will being born', 30),
(3005, 'Having parents and not pissing them off, is like having alcohol and not drinking it', 30),
(3006, 'When hurrying to an appointment because you''re running late, you''ll be stopped by a cop who will make you get there even later.', 30),
(3007, 'Never assume conspiracy when stupidity is an adequate explanation.', 30),
(3008, 'When problem solving, count on assumptions to automatically add unnecessary time to the process.', 30),
(3009, 'The longer you search for an object, the better chance there is that it was: In your pocket, On the kitchen table, or Under that pile of junk that you tossed aside looking for it.', 30),
(3010, 'Friends come and go, but enemies accumulate', 30),
(3011, 'Least credible sentence from lawyers: "Just a brief comment if I may, your honor".', 30),
(3012, 'New white shirts are Ketchup magnets', 30),
(3013, 'Wind will change direction the minute you are passing wind', 30);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
