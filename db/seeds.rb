# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  email: 'admin@packyourskills.com',
  password: 'iamneslon',
  role: 'admin',
  admin: true,
)
user.save!

####################################
#########       AWA       #########
###################################

user = User.new(
  email: 'arno.canizares@hotmail.fr',
  password: 'NovemberIsTheNewCool',
  role: 'crew',
  admin: false,
)
user.save!

crew = user.build_crew(
  name:'Awa Game',
  mission:'Awa was created to centralize and promote individual, collective and environmental solutions that have been proved to be efficient and reproducible.',
  description:'To address this issue, we developed search engine, innovative educative audiovisual productions, a school and an accelerator for social entrepreneurship, and various products and services marrying positive impact and pedagogy.

Awa Game is a web platform for 11 to 18-year-old people to play games around civic rights. While playing, you win “XP” points and then primes.',
  cause:'promoting positive and reproducible solutions',
creation_date:'2014',
  nb_collaborators:'10',
  average_age:'30',
  percentage_women:'50%',
  team_description:'Our team is polyvalent, diverse, pragmatic, nice, respectful',
  percentage_english:'100%',
  value1:'Being nice to others',
  value2:'Being passionate',
  value3:'Being careful',
  quote:'',
  quote_author:'',
  phone:'',
  skype:'',
  twitter:'',
  facebook:'https://m.facebook.com/awa.education/?locale2=fr_FR',
  instagram:'',
  website:'http://awa-game.com',
  newsletter: false,
  #Data pour la working place
  description_working_place:'NUMA, the biggest free co-working space of Paris ! Cool people there!',
  address:'39, rue du Caire',
  city:'Paris',
  zip_code:'75002',
  country:'FR',
  closest_metro_working_place:'Sentier (metro 3)',
)
crew.save!

mission = crew.missions.new(
  title:'Building a demo version of our website',
  context:'Our website http://awa-game.com is not even in its beta phase. It is going to evolve a lot until November. By then, we will still need to develop some static pages.',
  description:'We need someone to helps us develop some static pages, by working together with our back-end developer. It is very likely that the list of pages will differ when you arrive, because we cannot know exactly what we will have done by then. But, here are the pages we’re thinking of now : sign up page (just the front-end), homepage, about page.

Bonus : If you are sensitive to UX and building user-friendly interface, we will appreciate your help to improve our website\’s interface, and test it with users.

We suggested this project to focus on one, but we have many others that you could participate in if this one is not so much of interest for you. Don’t hesitate to apply and we can talk about it together :)',
  duration:'15',
  skill:'Web Development',
  material:'We unfortunately don\'t have a good computer to lend. We have an old one or an Ipad but it would be way better if the Packer had his own device.',
  referent_first_name:'Arnaud',
  referent_last_name:'CANIZARES',
  referent_role:'President/Founder',
  referent_phone:'06.46.81.74.70',
  referent_email:'arno.canizares@hotmail.fr',
  host_first_name:'Arnaud',
  host_last_name:'CANIZARES',
  host_role:'President/Founder',
  host_phone:'+33(0)6.46.81.74.70',
  #Data pour hosting place
  description_hosting_place:'21 meter squares charming studio in the nice 3rd district, just upon the Marché des enfants rouges !

The Packer will have a matrimonial bed with clean sheets and very good mattress.

But no intimity. Indeed, the founder of AWA, who rents the flat, and a homeless man who became his very good friend and who\'s clean and respectful will sleep on the floor in the same 18 meters square living room!',
  address:'33, rue Charlot',
  city:'Paris',
  zip_code:'75003',
  country:'FR',
  closest_metro_hosting_place:'Temple (metro 3)',
  nb_min_ride:'15min walking',
nb_min_to_center:'15min walking',
kind_of_hosting:'Shared room',
  other_comment:'',
  status:'online',
)
mission.save!

user = User.new(
  email: 'samybeg@gmail.com',
  password: 'NovemberIsTheNewCool',
  role: 'crew',
  admin: false,
)
user.save!

crew = user.build_crew(
  name:'Causons',
  mission:'This project came to life to put forward refugees\' culture by teaching their languages to other people. The challenge is to enable contacts and to build relationships between the host society and the migrants. The goal is to give value to the refugee\'s teaching skills while offering them a paid and rewarding job.',
  description:'Causons (\'Let\'s chat\' in English) trains refugees to teach classes in their mother tongue. These classes are an opportunity for them to develop skills, to build relationships with the trainees, to share their culture and to earn a living. Causons also organizes events regarding intercultural encounter, thus fostering the creation of social bonds.',
  cause:'Putting forward refugees\' culture',
creation_date:'2017',
  nb_collaborators:'8',
  average_age:'25',
  percentage_women:'70%',
  team_description:'Alone you go faster, together we go further!
The \'Causons\' team is accustomed to gathering up around a few beers and some cheese platters for fun and savory meetings! Joke aside, we are a young and motivated team with very different backgrounds but with one common goal: to combat prejudice against migrants and to work for a better inclusion thanks to cultural exchanges.',
  percentage_english:'100%',
  value1:'Listening: listening to others\' ideas and proposals, whether they are staff members, refugee teachers or trainees.',
  value2:'Dynamism: always optimistic, with the will to move forward and rise to new challenges.',
  value3:'Co-construction: making sure that everybody finds their purpose within the team and takes part in the project\'s construction.',
  quote:'',
  quote_author:'',
  phone:'',
  skype:'',
  twitter:'',
  facebook:'https://www.facebook.com/CausonsLasso',
  instagram:'',
  website:'',
  newsletter: false,
  #Data pour la working place
  description_working_place:'La \'Maison des Métallos\' is a free coworking space open to everybody, where we are used to meeting up to work together. It is possible to have lunch there (if you bring your own food) and there are several supermarkets and restaurants in the neighborhood.',
  address:'94 Rue Jean-Pierre Timbaud',
  city:'Paris',
  zip_code:'75011',
  country:'FR',
  closest_metro_working_place:'Couronnes (metro 2)',
)
crew.save!

mission = crew.missions.new(
  title:'Producing a video to present our charity (motion design or real shooting sequences).',
  context:'After a first year dedicated to structuring the team and the project, we are now about to launch our activity with the first group courses and the training of new refugee teachers. We thus need to develop communication tools to create a community around the project, including a video to present our charity.',
  description:'The traveler\'s mission will be to produce the charity\'s presentation video. With a short format (1 min to 1 min 30 seconds), the video\'s purpose is to be shared on social media but should also be usable to present the project in meetings, when looking for partnerships or seeking funding, etc. We are open to all types of formats, whether motion design or actual shooting.',
  duration:'15',
  skill:'Video',
  material:'We can provide a computer and the Adobe suite, more specifically software for video (After Effect, Premiere Pro)',
  referent_first_name:'Samuel',
  referent_last_name:'BEGUIN',
  referent_role:'Communication Manager',
  referent_phone:'+33(0)7.88.37.44.00',
  referent_email:'samybeg@gmail.com',
  host_first_name:'Hélène',
  host_last_name:'RAMAJO',
  host_role:'President',
  host_phone:'',
  #Data pour hosting place
  description_hosting_place:'Private room or couch at the association\'s President\'s apartment : Paris 19th arrondissement near the Buttes Chaumont (to be confirmed two weeks before arrival). Airbnb photos (for the private room) : https://www.airbnb.fr/rooms/20033592 ',
  address:'27 rue Miguel Hidalgo',
  city:'Paris',
  zip_code:'75019',
  country:'FR',
  closest_metro_hosting_place:'Botzaris (metro 7 bis)',
  nb_min_ride:'20min by metro',
nb_min_to_center:'25min by metro',
kind_of_hosting:'Private room',
  other_comment:'',
  status:'online',
)
mission.save!

user = User.new(
  email: 'caroline@cojob.fr',
  password: 'NovemberIsTheNewCool',
  role: 'crew',
  admin: false,
)
user.save!

crew = user.build_crew(
  name:'COJOB',
  mission:'We created COJOB to address the need of unemployed people who feel solitude and isolation.',
  description:'We offer unemployed people to come meet up in our workspace to look for jobs together. The purpose is to make them feel part of a collective, create a daily pace (by coming every day from 9:30am to 5:30am for 3 weeks), and feel useful by doing skills-based volunteer work every afternoon.',
  cause:'Fighting against unemployed people\’s isolation',
creation_date:'2014',
  nb_collaborators:'2',
  average_age:'30',
  percentage_women:'100%',
  team_description:'We are a young and benevolent team. We always work in a good mood and with respect towards each other. We speak English and can speak a little bit of Italian too.',
  percentage_english:'100%',
  value1:'Kindliness',
  value2:'Freedom',
  value3:'Autonomy',
  quote:'',
  quote_author:'',
  phone:'',
  skype:'',
  twitter:'',
  facebook:'https://www.facebook.com/COJOB-Collectif-Jobeurs-1385026508424694/ ',
  instagram:'',
  website:'http://cojob.fr/ ',
  newsletter: false,
  #Data pour la working place
  description_working_place:'We work in a coworking space with a kitchen, cosy living room and pool (the game).',
  address:'105 rue Jules Guesde',
  city:'Levallois-Perret',
  zip_code:'92300',
  country:'FR',
  closest_metro_working_place:'Levallois-Bécon (metro 3)',
)
crew.save!

mission = crew.missions.new(
  title:'Producing a short video to introduce COJOB',
  context:'We need to develop our communication and improve our website to become more visible.',
  description:'To this end, we need to create a short video to introduce COJOB. The Packer will have to shoot and edit the video (several minutes). It would be great if the Packer also had photo skills to shoot some pretty pictures of our workspace, events, and portraits of our “jobers” (people looking for a job).',
  duration:'15',
  skill:'Video',
  material:'We can provide a Canon Reflex camera, a video camera and a computer.',
  referent_first_name:'Caroline',
  referent_last_name:'PIOT',
  referent_role:'In charge of the “jobers”',
  referent_phone:'+33(0)6.84.56.97.02',
  referent_email:'caroline@cojob.fr',
  host_first_name:'Marie',
  host_last_name:'GRIMALDI',
  host_role:'CEO',
  host_phone:'+33(0)6.61.88.60.07 ',
  #Data pour hosting place
  description_hosting_place:'You will sleep on a couch in Marie\’s living room.',
  address:'31 rue Montcalm',
  city:'Paris',
  zip_code:'75018',
  country:'FR',
  closest_metro_hosting_place:'Jules Joffrin (metro 12)',
  nb_min_ride:'35',
nb_min_to_center:'25min by metro',
kind_of_hosting:'Living room couch',
  other_comment:'',
  status:'online',
)
mission.save!

user = User.new(
  email: 'freddaudon@gmail.com',
  password: 'NovemberIsTheNewCool',
  role: 'crew',
  admin: false,
)
user.save!

crew = user.build_crew(
  name:'Faith The Project',
  mission:'Terrorists\’ attacks, minorities\’ repression, this terrible escalation of violence drew our attention and made us begin to think about the link between religion and terrorism and the need of comprehension and tolerance.

We have set four long-term priorities for our association which are to document and educate on religions and beliefs, fight racism and religious persecution, and to promote interfaith dialogue and mutual respect.',
  description:'To document the diversity of religions and beliefs, we use both existing materials collected by universities and scholars and new materials collected by our association during documentary initiatives.

The association just completed its first program named “Silk Road initiative”. From February 2016 to April 2017, Frederic Daudon and Nabila Laajail travelled from Istanbul to Xi’an, crossing Turkey, Iran, Uzbekistan, Tajikistan, Kyrgyzstan and China. Prepared with scholars, this documentary work focused on the minorities and the diversity of cultures along the Silk Roads. It was mainly based on photography and interviews but also includes video and audio recordings.

To educate on religions and beliefs, we are working with public institutions to develop 2.0 educative actions in which students will not only learn but participate.

We have started this program based on the materials collected during the Silk Road initiative. The project consists of building a multimedia encyclopedia and digital content which would be built also with scholars’ and researchers’ materials. It has to be intelligible to young people. The website will eventually host a database for students and university lecturers.

The third program we are currently working on is to create an international FAITH tour exhibiting the materials collected during the Silk Road initiative back to the countries where we made the documentary. Beside this exhibition, we will schedule lectures and debates in universities and program ethnographic films.

The last program \‘Diver-cités\’ is for now focusing on France where we intend to work with the French Ministry of Education and start a national contest for French high-school students who will become reporters of the biodiversity in their own town/region.',
  cause:'Fighting against terrorism',
creation_date:'2017',
  nb_collaborators:'2',
  average_age:'31',
  percentage_women:'50%',
  team_description:'Our team is full of young, motivated and crazy people. If you prefer older people, you can talk with our Scientific council, and learn! We are used to working with international people and we have friends from all over the world, so do not worry you will feel at home! Nabila will sometimes cook very good meals and she will share with you some tips about Paris.',
  percentage_english:'100% (can also speak Arabic)',
  value1:'Tolerance: we like human after all',
  value2:'Learning: we learn from each other and accept we do not know everything!',
  value3:'Creativity: we are artists and you are one as well',
  quote:'',
  quote_author:'',
  phone:'',
  skype:'',
  twitter:'',
  facebook:'http://www.facebook.com/faiththeproject',
  instagram:'http://www.instagram.com/faiththeproject',
  website:'http://www.faiththeproject.com',
  newsletter: false,
  #Data pour la working place
  description_working_place:'You have three options: you can either work remotely in a place with Wi-fi, in a park, everywhere you feel good or at INALCO (the place which is supposedly hosting the exhibition) or at Nabila\'s apartment in her living-room, on a beautiful desk, and the kitchen is nearby.  ',
  address:'37 rue du Château Landon',
  city:'Paris',
  zip_code:'75010',
  country:'FR',
  closest_metro_working_place:'Stalingrad (metro 2, 5 & 7)',
)
crew.save!

mission = crew.missions.new(
  title:'Graphic design of a multimedia exhibition and its packaging',
  context:'We are currently working on an exhibition which would take place in Paris next Spring.
This exhibition is key for the communication of our association and its works. It can bring in new partners and new grants to continue this exhibition in other places in France and abroad.

That is why we are looking for a professionally designed exhibition together with its communication tools.',
  description:'You will help the association to create the graphic design of the exhibition and the panels. We would need to get the following files based on the same design:
- Plates (caption, date)
- Introductory panel
- Press release and Press kit
- Facebook/Instagram/Twitter banner
- Invitations
- Panel reference model',
  duration:'15',
  skill:'Graphic Design',
  material:'We provide DSLR camera, Adobe Creative Cloud and a PC.',
  referent_first_name:'Frédéric',
  referent_last_name:'DAUDON',
  referent_role:'Co-founder & President',
  referent_phone:'+33(0)6.46.79.47.23',
  referent_email:'freddaudon@gmail.com',
  host_first_name:'Nabila',
  host_last_name:'Laajail',
  host_role:'Co-founder & treasurer',
  host_phone:'',
  #Data pour hosting place
  description_hosting_place:'You will sleep at Nabila’s apartment on the living room\’s couch. It is a large king-size couch. The dining room can be closed with a door. There are shutters for the light.',
  address:'37 rue du Château Landon',
  city:'Paris',
  zip_code:'75010',
  country:'FR',
  closest_metro_hosting_place:'Stalingrad (metro 2, 5 & 7)',
  nb_min_ride:'0min',
nb_min_to_center:'20min by metro',
kind_of_hosting:'Living room couch',
  other_comment:'',
  status:'online',
)
mission.save!

user = User.new(
  email:'frateli@packyourskills.Com',
  password: 'NovemberIsTheNewCool',
  role: 'crew',
  admin: false,
)
user.save!

crew = user.build_crew(
  name:'Frateli Lab/ Le Blender',
  mission:'was born from the merger of two major non-profit organizations that fight against unequal opportunities (”Frateli” & “Passeport Avenir”). Article 1 strives for a society where the choice of career, success in studies and integration into the world of work don’t depend on social, economical or cultural origins. For a society where success comes from social link and civic engagement.',
  description:'The coworking space “Le Blender” is one of the projects of Article 1. It is a laboratory of projects that aim at contributing to mutual understanding between peoples, through entrepreneurship. Our objective : be a place of information, meetings and development for entrepreneurs from all over the world.',
  cause:'Fighting against unequal opportunities',
creation_date:'2006',
  nb_collaborators:'2',
  average_age:'27',
  percentage_women:'50',
  team_description:'Each of the two people in the team is in charge of a singular coworking space. The first coworking space aims at making entrepreneurship more accessible, by offering the lowest prices in Paris (10€ for students and 60€ for professionals). Diego is the one in charge of this space. Talkative and cool, he knows all the good plans !
The second coworking space is managed by Arounie. It welcomes entrepreneurs from different nationalities, because being entrepreneurs leads to speaking the same language ! It’s in this coworking space that you will be working (you’ll have the chance to tell people that you’re working within a castle in Paris). Arounie is nice, full of (too much ?) enthusiasm, and will be very happy to show you around in Paris ! Like Diego, she is very talkative...',
  percentage_english:'100',
  value1:'Taking action/Doing things : we have enough of people who only talk and don’t act. We don’t do everything good but we have a “doer” culture.',
  value2:'Loving : in order to love others, you need to love yourself. Same with kindness. One is rarely kind to himself/herself. And life feels better when you love what you do and people around you.',
  value3:'Helping : we live to help out, make people happy and contribute to our environment.',
  quote:'',
  quote_author:'',
  phone:'+33(0)6.50.05.13.27',
  skype:'',
  twitter:'',
  facebook:'https://www.facebook.com/Le-Blender-Coworking-316269912117548/',
  instagram:'',
  website:'http://leblender.squarespace.com',
  newsletter: false,
  #Data pour la working place
  description_working_place:'The coworking space is located in a castle (“La Maison Internationale”) in the “Cité Universitaire” of Paris (a campus for international students).',
  address:'17 boulevard Jourdan',
  city:'Paris',
  zip_code:'75014',
  country:'FR',
  closest_metro_working_place:'Cité universitaire',
)
crew.save!

mission = crew.missions.new(
  title:'Producing a one-minute introduction video for Le Blender coworking space',
  context:'The coworking space opened on September 4, 2017, but we haven’t started promoting it. We need someone who can produce videos to introduce the space.',
  description:'We need a one-minute video (maximum) to introduce “Le Blender” coworking space, the coworkers, our meetups, etc.',
  duration:'15',
  skill:'video',
  material:'We don’t have any video material to lend. We might have a Reflex camera.',
  referent_first_name:'Arounie',
  referent_last_name:'Cagnon',
  referent_role:'Manager of Le Blender coworking space',
  referent_phone:'+33(0)6.50.05.13.27',
  referent_email:'arounie.cagnon@fratelilab.fr',
  host_first_name:'Arounie',
  host_last_name:'Cagnon',
  host_role:'Manager of Le Blender coworking space',
  host_phone:'+33(0)6.50.05.13.27',
  #Data pour hosting place
  description_hosting_place:'You will sleep in your own single bed in a shared room with me, Arounie. If you prefer, you can also have your own studio apartment in my parents’ garden within an apartment block, 1 hour away from Paris (in Saint-Leu-la-Forêt)',
  address:'7 rue Léon Lhermitte',
  city:'Paris',
  zip_code:'75015',
  country:'FR',
  closest_metro_hosting_place:'Felix Faure (metro 8)',
  nb_min_ride:'30min',
nb_min_to_center:'25min by metro',
kind_of_hosting:'Shared room',
  other_comment:'',
  status:'online',
)
mission.save!

user = User.new(
  email:'frateli@packyourskills.Com',
  password: 'NovemberIsTheNewCool',
  role: 'crew',
  admin: false,
)
user.save!

crew = user.build_crew(
  name:'Frateli Lab/ Le Blender',
  mission:'was born from the merger of two major non-profit organizations that fight against unequal opportunities (”Frateli” & “Passeport Avenir”). Article 1 strives for a society where the choice of career, success in studies and integration into the world of work don’t depend on social, economical or cultural origins. For a society where success comes from social link and civic engagement.',
  description:'The coworking space “Le Blender” is one of the projects of Article 1. It is a laboratory of projects that aim at contributing to mutual understanding between peoples, through entrepreneurship. Our objective : be a place of information, meetings and development for entrepreneurs from all over the world.',
  cause:'Fighting against unequal opportunities',
creation_date:'2006',
  nb_collaborators:'2',
  average_age:'27',
  percentage_women:'50',
  team_description:'Each of the two people in the team is in charge of a singular coworking space. The first coworking space aims at making entrepreneurship more accessible, by offering the lowest prices in Paris (10€ for students and 60€ for professionals). Diego is the one in charge of this space. Talkative and cool, he knows all the good plans !
The second coworking space is managed by Arounie. It welcomes entrepreneurs from different nationalities, because being entrepreneurs leads to speaking the same language ! It’s in this coworking space that you will be working (you’ll have the chance to tell people that you’re working within a castle in Paris). Arounie is nice, full of (too much ?) enthusiasm, and will be very happy to show you around in Paris ! Like Diego, she is very talkative...',
  percentage_english:'100',
  value1:'Taking action/Doing things : we have enough of people who only talk and don’t act. We don’t do everything good but we have a “doer” culture.',
  value2:'Loving : in order to love others, you need to love yourself. Same with kindness. One is rarely kind to himself/herself. And life feels better when you love what you do and people around you.',
  value3:'Helping : we live to help out, make people happy and contribute to our environment.',
  quote:'',
  quote_author:'',
  phone:'+33(0)6.50.05.13.27',
  skype:'',
  twitter:'',
  facebook:'https://www.facebook.com/Le-Blender-Coworking-316269912117548/',
  instagram:'',
  website:'http://leblender.squarespace.com',
  newsletter: false,
  #Data pour la working place
  description_working_place:'The coworking space is located in a castle (“La Maison Internationale”) in the “Cité Universitaire” of Paris (a campus for international students).',
  address:'17 boulevard Jourdan',
  city:'Paris',
  zip_code:'75014',
  country:'FR',
  closest_metro_working_place:'Cité universitaire',
)
crew.save!

mission = crew.missions.new(
  title:'Producing a one-minute introduction video for Le Blender coworking space',
  context:'The coworking space opened on September 4, 2017, but we haven’t started promoting it. We need someone who can produce videos to introduce the space.',
  description:'We need a one-minute video (maximum) to introduce “Le Blender” coworking space, the coworkers, our meetups, etc.',
  duration:'15',
  skill:'video',
  material:'We don’t have any video material to lend. We might have a Reflex camera.',
  referent_first_name:'Arounie',
  referent_last_name:'Cagnon',
  referent_role:'Manager of Le Blender coworking space',
  referent_phone:'+33(0)6.50.05.13.27',
  referent_email:'arounie.cagnon@fratelilab.fr',
  host_first_name:'Arounie',
  host_last_name:'Cagnon',
  host_role:'Manager of Le Blender coworking space',
  host_phone:'+33(0)6.50.05.13.27',
  #Data pour hosting place
  description_hosting_place:'You will sleep in your own single bed in a shared room with me, Arounie. If you prefer, you can also have your own studio apartment in my parents’ garden within an apartment block, 1 hour away from Paris (in Saint-Leu-la-Forêt)',
  address:'7 rue Léon Lhermitte',
  city:'Paris',
  zip_code:'75015',
  country:'FR',
  closest_metro_hosting_place:'Felix Faure (metro 8)',
  nb_min_ride:'30min',
nb_min_to_center:'25min by metro',
kind_of_hosting:'Shared room',
  other_comment:'',
  status:'online',
)
mission.save!

user = User.new(
  email:'frateli@packyourskills.Com',
  password: 'NovemberIsTheNewCool',
  role: 'crew',
  admin: false,
)
user.save!

crew = user.build_crew(
  name:'Frateli Lab/ Le Blender',
  mission:'was born from the merger of two major non-profit organizations that fight against unequal opportunities (”Frateli” & “Passeport Avenir”). Article 1 strives for a society where the choice of career, success in studies and integration into the world of work don’t depend on social, economical or cultural origins. For a society where success comes from social link and civic engagement.',
  description:'The coworking space “Le Blender” is one of the projects of Article 1. It is a laboratory of projects that aim at contributing to mutual understanding between peoples, through entrepreneurship. Our objective : be a place of information, meetings and development for entrepreneurs from all over the world.',
  cause:'Fighting against unequal opportunities',
creation_date:'2006',
  nb_collaborators:'2',
  average_age:'27',
  percentage_women:'50',
  team_description:'Each of the two people in the team is in charge of a singular coworking space. The first coworking space aims at making entrepreneurship more accessible, by offering the lowest prices in Paris (10€ for students and 60€ for professionals). Diego is the one in charge of this space. Talkative and cool, he knows all the good plans !
The second coworking space is managed by Arounie. It welcomes entrepreneurs from different nationalities, because being entrepreneurs leads to speaking the same language ! It’s in this coworking space that you will be working (you’ll have the chance to tell people that you’re working within a castle in Paris). Arounie is nice, full of (too much ?) enthusiasm, and will be very happy to show you around in Paris ! Like Diego, she is very talkative...',
  percentage_english:'100',
  value1:'Taking action/Doing things : we have enough of people who only talk and don’t act. We don’t do everything good but we have a “doer” culture.',
  value2:'Loving : in order to love others, you need to love yourself. Same with kindness. One is rarely kind to himself/herself. And life feels better when you love what you do and people around you.',
  value3:'Helping : we live to help out, make people happy and contribute to our environment.',
  quote:'',
  quote_author:'',
  phone:'+33(0)6.50.05.13.27',
  skype:'',
  twitter:'',
  facebook:'https://www.facebook.com/Le-Blender-Coworking-316269912117548/',
  instagram:'',
  website:'http://leblender.squarespace.com',
  newsletter: false,
  #Data pour la working place
  description_working_place:'The coworking space is located in a castle (“La Maison Internationale”) in the “Cité Universitaire” of Paris (a campus for international students).',
  address:'17 boulevard Jourdan',
  city:'Paris',
  zip_code:'75014',
  country:'FR',
  closest_metro_working_place:'Cité universitaire',
)
crew.save!

mission = crew.missions.new(
  title:'Producing a one-minute introduction video for Le Blender coworking space',
  context:'The coworking space opened on September 4, 2017, but we haven’t started promoting it. We need someone who can produce videos to introduce the space.',
  description:'We need a one-minute video (maximum) to introduce “Le Blender” coworking space, the coworkers, our meetups, etc.',
  duration:'15',
  skill:'video',
  material:'We don’t have any video material to lend. We might have a Reflex camera.',
  referent_first_name:'Arounie',
  referent_last_name:'Cagnon',
  referent_role:'Manager of Le Blender coworking space',
  referent_phone:'+33(0)6.50.05.13.27',
  referent_email:'arounie.cagnon@fratelilab.fr',
  host_first_name:'Arounie',
  host_last_name:'Cagnon',
  host_role:'Manager of Le Blender coworking space',
  host_phone:'+33(0)6.50.05.13.27',
  #Data pour hosting place
  description_hosting_place:'You will sleep in your own single bed in a shared room with me, Arounie. If you prefer, you can also have your own studio apartment in my parents’ garden within an apartment block, 1 hour away from Paris (in Saint-Leu-la-Forêt)',
  address:'7 rue Léon Lhermitte',
  city:'Paris',
  zip_code:'75015',
  country:'FR',
  closest_metro_hosting_place:'Felix Faure (metro 8)',
  nb_min_ride:'30min',
nb_min_to_center:'25min by metro',
kind_of_hosting:'Shared room',
  other_comment:'',
  status:'online',
)
mission.save!

user = User.new(
  email: 'adele@lesamisdhubert.com',
  password: 'NovemberIsTheNewCool',
  role: 'crew',
  admin: false,
)
user.save!

crew = user.build_crew(
  name:'Les Amis d’Hubert',
  mission:'Les Amis d’Hubert aims at locally re-creating social cohesion between generations that have been weakening in Western societies over the past decades and more especially targeting populations that are isolated due to age, dependency or disability. Plus the project Les Amis d’Hubert guarantees trust to caregivers without being helped nor medicalised.

The evolution of modern Western societies and retirement pensions appearing after Second Word War led generations to be freer one to another. In France it has become very rare to encounter three generations of a same family living under the same roof.
This situation has advantages but disadvantages too. Grand-parents when retired are not here anymore to take care of the little ones which leads to many parents’ common issue of baby sitting and day care. Growing old and dependency appearing, grandparents are very often isolated, active and working parents not living in the same place cannot take care of their own parents and when the case logistics may be very difficult.
In France 11 million people are caregivers of a family member and 77% out of them do not use professional home help. Those people tend to be exhausted and at the fringe of nervous breakdown. Caregivers need time off.

It is observed that society is cut in two parts of people: people who are well and enjoy life and the other ones, invisible, who are dependent, disabled or old and who result to be on the fringe of society. Those two parts are disconnected. Les Amis d’Hubert has the ambition of reconnecting those two parts of society and implicating all kind of people and generations. ',
  description:'Les Amis d’Hubert is building a peer-to-peer marketplace that will promote trust and mutual benevolence beyond mere care services thanks to a few process innovations:
-        It will have to properly validate the peers applying to participate in the action thanks to personal profiles and motivations in compliance with a charter of values
-        It will have to match people from different generations according to social and cultural criteria that will help create real connections between people.
-        A one-stop service from people matching to payment functionalities, which is easily scalable nationwide ',
  cause:'Re-creating social cohesion between generations',
creation_date:'2017',
  nb_collaborators:'1',
  average_age:'32',
  percentage_women:'100%',
  team_description:'A very small team : I’m working on my own so I’ll be dedicated to you :) I’m not great with mornings so I’m not a fan of early starts. But if you want to start early, I’m ok with it 😊
I can be very focused so if you need to be focused too, you won’t be interrupted 😉
I also like to chill and have a drink after a good day of work chatting about everything.  ',
  percentage_english:'100% (can also speak Spanish)',
  value1:'BENEVOLENCE : Being benevolent',
  value2:'OPEN-MINDEDNESS : being open-minded',
  value3:'FUN : Never taking yourself seriously are three important values to my mind for a good working atmosphere and dynamic and have fun.',
  quote:'',
  quote_author:'',
  phone:'',
  skype:'',
  twitter:'',
  facebook:'https://www.facebook.com/lesamisdhubert',
  instagram:'',
  website:'www.lesamisdhubert.com',
  newsletter: false,
  #Data pour la working place
  description_working_place:'I work from home or at the library 10 minutes away from home as it is quiet and free ',
  address:'28 rue Guillaume Tell',
  city:'Paris',
  zip_code:'75017',
  country:'FR',
  closest_metro_working_place:'Pereire (metro 3)',
)
crew.save!

mission = crew.missions.new(
  title:'Setting up the webmarketing plan for Les Amis d’Hubert',
  context:'The web plateform is to become live during November and webmarketing plan must be put into place at that particular moment so as to ensure the right communication with good impact.
I have very rudimentary knowledge about webmarketing and the future applicant will surely bring great added value to Les Amis d’Hubert project.',
  description:'A real challenge in 15 days : Setting up the web marketing plan for Les Amis d’Hubert :
·       Identifying the right channels and choosing the appropriate communication and tools
·       Setting up the tools : Google Adwords, etc
·       Identifying and choosing the appropriate metrics
·       Setting up the web marketing calendar
·       Mini-Training on how to use the right tools and hacks 😉
·       If we have time, testing one action would be great !',
  duration:'15',
  skill:'Webmarketing',
  material:'I cannot provide with any equipment. The traveler will have to bring his own laptop.
',
  referent_first_name:'Adèle',
  referent_last_name:'DEBOST',
  referent_role:'Founder & CEO',
  referent_phone:'+33(0)6.98.99.97.16',
  referent_email:'adele@lesamisdhubert.com',
  host_first_name:'Adèle',
  host_last_name:'DEBOST',
  host_role:'Founder & CEO',
  host_phone:'+33(0)6.98.99.97.16',
  #Data pour hosting place
  description_hosting_place:'The traveller will enjoy my own 34 square-meter flat to himself/herself. It has a bedroom, a living room, a kitchen, a bathroom and toilets.
It’s my home sweet home : It’s fully furnished and very comfortable and I’ll count on you to take care of it as it were yours 😊',
  address:'28 rue Guillaume Tell',
  city:'Paris',
  zip_code:'75017',
  country:'FR',
  closest_metro_hosting_place:'Pereire (metro 3)',
  nb_min_ride:'10min walking',
nb_min_to_center:'25min by metro',
kind_of_hosting:'Your own studio apartment',
  other_comment:'',
  status:'online',
)
mission.save!

user = User.new(
  email: 'maydee.asso@gmail.com',
  password: 'NovemberIsTheNewCool',
  role: 'crew',
  admin: false,
)
user.save!

crew = user.build_crew(
  name:'Maydée',
  mission:'This project has beenwas created in order to improve equality between men and women.  Why the domestic chores ? They do have a large impact on women lives ; career, economic dependency to their husband, and it’s a very hard job that have no recognition.',
  description:'We are currently working on a progressive webapp that will help people to analyse their investment in the house chores',
  cause:'Improving equality between men and women',
creation_date:'2017',
  nb_collaborators:'5 but in Paris 3, we are mostly telecommuting',
  average_age:'28',
  percentage_women:'95%',
  team_description:'We all have different skills, we are pretty nice and kind, but we don\’t have yet any citation but we will think about it. ',
  percentage_english:'100% (some of us speak German or Spanish)',
  value1:'EQUALITY: To move equality between men and women',
  value2:'KINDNESS: To act with kindness',
  value3:'EMPATHY: To act with empathy without judgement',
  quote:'',
  quote_author:'',
  phone:'',
  skype:'',
  twitter:'',
  facebook:'https://www.facebook.com/Maydeeapp/',
  instagram:'https://www.instagram.com/maydeeapp/ ',
  website:'http://www.maydee.fr',
  newsletter: false,
  #Data pour la working place
  description_working_place:'We will work mostly at my home, but we can also work at the Numa (space on the picture) or try out other coworking spaces in Paris. We do have a terrasse which measures 15m².',
  address:'63 boulevard de Charonne',
  city:'Paris',
  zip_code:'75011',
  country:'FR',
  closest_metro_working_place:'Nation (metro 1, 2, 6 & 9)',
)
crew.save!

mission = crew.missions.new(
  title:'Creating a graphic design for our communication on the social media',
  context:'We are looking for people who have skills in graphism and photoshop to help us to do infographics, images for our communication. ',
  description:'We are waiting for him.her to help us to create a set of images and infographics that we’ll be able to use on our social media.
Then what is really important for us is that the Packer has interest in the target of our organization',
  duration:'15',
  skill:'Graphic Design',
  material:'We can provide with a computer',
  referent_first_name:'Julie',
  referent_last_name:'HEBTING',
  referent_role:'Project Manager',
  referent_phone:'+33(0)6.74.24.80.85',
  referent_email:'maydee.asso@gmail.com',
  host_first_name:'Julie',
  host_last_name:'HEBTING',
  host_role:'Project Manager',
  host_phone:'+33(0)6.74.24.80.85',
  #Data pour hosting place
  description_hosting_place:'Our flat measures 70m², and is pretty central but also quiet. You will be close to Bastille with many cafés, bars, concert halls. Our flat doesn\’t have window on the street therefore it’s a pretty quiet flat.
We don\’t have any closed room, we have a sofa in the living room.
I have a nice small child of three.',
  address:'63 boulevard de Charonne',
  city:'Paris',
  zip_code:'75011',
  country:'FR',
  closest_metro_hosting_place:'Nation (metro 1, 2, 6 & 9)',
  nb_min_ride:'0min',
nb_min_to_center:'20min by metro',
kind_of_hosting:'Living room couch',
  other_comment:'',
  status:'online',
)
mission.save!

user = User.new(
  email: 'nicolas.caillouet@monkeymoney.fr',
  password: 'NovemberIsTheNewCool',
  role: 'crew',
  admin: false,
)
user.save!

crew = user.build_crew(
  name:'Monkey Money',
  mission:'This project came to life to enable complementary local currencies to develop.
These currencies, which are issued by citizens, have real social and environmental benefits. They foster short-circuits and local shops, boost the local economy while strengthening the social bound between the players that are active in a given area.',
  description:'Monkey Money creates digital tools to enable the structures animating local currencies to transition to the digital age. We offer a comprehensive solution based on three pillars: currency dematerialization, user experience, currency management.',
  cause:'Developing complementary local currencies',
creation_date:'2017',
  nb_collaborators:'3',
  average_age:'25',
  percentage_women:'0%',
  team_description:'We are a small, 3-people team: the two founding partners and an intern in programming. Our working environment is fun and easy-going! The three of us are rather curious and kindhearted people, which fosters a friendly and easy-to-work-in environment.',
  percentage_english:'100%',
  value1:'Going for it: getting out of your comfort zone.',
  value2:'Sharing: listening, exchanging, we all have something to learn from others.',
  value3:'Innovating: suggesting ideas and not being scared to talk rubbish.',
  quote:'',
  quote_author:'',
  phone:'',
  skype:'',
  twitter:'',
  facebook:'https://www.facebook.com/MonkeyMoneyFrance/',
  instagram:'',
  website:'www.monkeymoney.fr',
  newsletter: false,
  #Data pour la working place
  description_working_place:'Coworking space at the Village by CA incubator.',
  address:'55 rue la Boétie',
  city:'Paris',
  zip_code:'75008',
  country:'FR',
  closest_metro_working_place:'Miromesnil (metro 9 & 13)',
)
crew.save!

mission = crew.missions.new(
  title:'Test web tools and improve their UX.',
  context:'We are currently developing our numerical tool and are looking for a skilled professional to help us make the right decisions for our product\'s UX.',
  description:'The traveler will be responsible for testing the different functions developed by our technical team, and to detect and report any bugs in the system.

Besides that, thanks to his or her skills in UX, the traveler is encouraged to make suggestions as to how we can make our tool as user-friendly as possible.',
  duration:'15',
  skill:'Webmarketing',
  material:'We should be able to provide a computer (PC or Mac).',
  referent_first_name:'Nicolas',
  referent_last_name:'CAILLOUET',
  referent_role:'CEO',
  referent_phone:'+33(0)6.66.84.01.71',
  referent_email:'nicolas.caillouet@monkeymoney.fr',
  host_first_name:'Nicolas',
  host_last_name:'CAILLOUET',
  host_role:'CEO',
  host_phone:'+33(0)6.66.84.01.71',
  #Data pour hosting place
  description_hosting_place:'Couch in the living room of a beautiful, well-renovated apartment. Unfortunately, no curtains. But a great duvet!',
  address:'56 boulevard de l’hôpital',
  city:'Paris',
  zip_code:'75013',
  country:'FR',
  closest_metro_hosting_place:'Saint-Marcel (metro 5)',
  nb_min_ride:'25min by metro',
nb_min_to_center:'20min by metro',
kind_of_hosting:'Living room couch',
  other_comment:'',
  status:'online',
)
mission.save!

user = User.new(
  email: 'nicolas.caillouet@monkeymoney.fr',
  password: 'NovemberIsTheNewCool',
  role: 'crew',
  admin: false,
)
user.save!

crew = user.build_crew(
  name:'Monkey Money',
  mission:'This project came to life to enable complementary local currencies to develop.
These currencies, which are issued by citizens, have real social and environmental benefits. They foster short-circuits and local shops, boost the local economy while strengthening the social bound between the players that are active in a given area.',
  description:'Monkey Money creates digital tools to enable the structures animating local currencies to transition to the digital age. We offer a comprehensive solution based on three pillars: currency dematerialization, user experience, currency management.',
  cause:'Developing complementary local currencies',
creation_date:'2017',
  nb_collaborators:'3',
  average_age:'25',
  percentage_women:'0%',
  team_description:'We are a small, 3-people team: the two founding partners and an intern in programming. Our working environment is fun and easy-going! The three of us are rather curious and kindhearted people, which fosters a friendly and easy-to-work-in environment.',
  percentage_english:'100%',
  value1:'Going for it: getting out of your comfort zone.',
  value2:'Sharing: listening, exchanging, we all have something to learn from others.',
  value3:'Innovating: suggesting ideas and not being scared to talk rubbish.',
  quote:'',
  quote_author:'',
  phone:'',
  skype:'',
  twitter:'',
  facebook:'https://www.facebook.com/MonkeyMoneyFrance/',
  instagram:'',
  website:'www.monkeymoney.fr',
  newsletter: false,
  #Data pour la working place
  description_working_place:'Coworking space at the Village by CA incubator.',
  address:'55 rue la Boétie',
  city:'Paris',
  zip_code:'75008',
  country:'FR',
  closest_metro_working_place:'Miromesnil (metro 9 & 13)',
)
crew.save!

mission = crew.missions.new(
  title:'Test web tools and improve their UX.',
  context:'We are currently developing our numerical tool and are looking for a skilled professional to help us make the right decisions for our product\'s UX.',
  description:'The traveler will be responsible for testing the different functions developed by our technical team, and to detect and report any bugs in the system.

Besides that, thanks to his or her skills in UX, the traveler is encouraged to make suggestions as to how we can make our tool as user-friendly as possible.',
  duration:'15',
  skill:'Webmarketing',
  material:'We should be able to provide a computer (PC or Mac).',
  referent_first_name:'Nicolas',
  referent_last_name:'CAILLOUET',
  referent_role:'CEO',
  referent_phone:'+33(0)6.66.84.01.71',
  referent_email:'nicolas.caillouet@monkeymoney.fr',
  host_first_name:'Nicolas',
  host_last_name:'CAILLOUET',
  host_role:'CEO',
  host_phone:'+33(0)6.66.84.01.71',
  #Data pour hosting place
  description_hosting_place:'Couch in the living room of a beautiful, well-renovated apartment. Unfortunately, no curtains. But a great duvet!',
  address:'56 boulevard de l’hôpital',
  city:'Paris',
  zip_code:'75013',
  country:'FR',
  closest_metro_hosting_place:'Saint-Marcel (metro 5)',
  nb_min_ride:'25min by metro',
nb_min_to_center:'20min by metro',
kind_of_hosting:'Living room couch',
  other_comment:'',
  status:'online',
)
mission.save!

user = User.new(
  email: 'alex@coding-days.com',
  password: 'NovemberIsTheNewCool',
  role: 'crew',
  admin: false,
)
user.save!

crew = user.build_crew(
  name:'Coding Days',
  mission:'Coding Days was created to enable those who wish to learn computer code to do so, regardless of their social and cultural origins.',
  description:'We organize different types of training, from one to six days, to learn how to code. The first training is called “Understanding computer code” and is a first step to discovering code. We have two other trainings for more advanced level : “Creating a showcase website” and “Creating an e-commerce website”. ',
  cause:'Making computer code accessible to everyone',
creation_date:'2017',
  nb_collaborators:'8',
  average_age:'23',
  percentage_women:'50%',
  team_description:'We usually have a snack together at 4pm. We also have unlimited coffee and water :D',
  percentage_english:'60%',
  value1:'Be autonomous : being capable of working alone on a subject and find answers to your questions. Interacting with the good person if need be to work with other people on a subject.',
  value2:'Transparency : you’re allowed to access all information about the company : accounting, day offs. If you have questions on any matter, we will answer you with transparency :)',
  value3:'Always (inter)acting with benevolence : whoever the person, being benevolent means being able to listen to one another and always trying to understand the other’s viewpoint.',
  quote:'',
  quote_author:'',
  phone:'',
  skype:'',
  twitter:'',
  facebook:'https://www.facebook.com/codingdays/',
  instagram:'https://www.instagram.com/coding_days/',
  website:'www.coding-days.com',
  newsletter: false,
  #Data pour la working place
  description_working_place:'We work in a coworking space that has a kitchen and a terrace.',
  address:'3 rue Mazagran',
  city:'Paris',
  zip_code:'75010',
  country:'FR',
  closest_metro_working_place:'Bonne Nouvelle (metro 8 or 9)',
)
crew.save!

mission = crew.missions.new(
  title:'Creating static pages (without database) with Wordpress',
  context:'We already have a website on Wordpress and would like to add some pages.',
  description:'That’s why we need someone who can code one, two, or more pages with Wordpress, to add to our website. For example, we would like to add a page to talk about our values and a landing page to talk about a new (secret) offer. We don’t know exactly what other pages we might need by November but we can sort it out together. It’s better if you already know Wordpress but we’re open to other programmers who are motivated to learn Wordpress',
  duration:'15',
  skill:'Web Development',
  material:'We will provide a desk but it would be better if the Packer had his own computer',
  referent_first_name:'Alexandre',
  referent_last_name:'ZANA',
  referent_role:'CEO',
  referent_phone:'+33(0)6.22.21.42.15',
  referent_email:'alex@coding-days.com',
  host_first_name:'Alexandre',
  host_last_name:'ZANA',
  host_role:'CEO',
  host_phone:'+33(0)6.22.21.42.15',
  #Data pour hosting place
  description_hosting_place:'You will sleep on a the living room couch at Alexandre’s apartment, with curtains at the window.',
  address:'126 rue Saint Maur',
  city:'Paris',
  zip_code:'75011',
  country:'FR',
  closest_metro_hosting_place:'Rue St Maur (metro 3)',
  nb_min_ride:'30',
nb_min_to_center:'15min by metro',
kind_of_hosting:'Living room couch',
  other_comment:'',
  status:'online',
)
mission.save!

user = User.new(
  email: 'marine.melladoruiz@passeport-avenir.com',
  password: 'NovemberIsTheNewCool',
  role: 'crew',
  admin: false,
)
user.save!

crew = user.build_crew(
  name:'Etincelle',
  mission:'This project was created to enable young people from working-class backgrounds to discover an innovative mindset and to gain confidence in their capacity to create the world of the future.',
  description:'We create inspiring online content, animate workshops around 5 attitudes to develop one\'s innovative mindset (\'Diggin\'it\', Doing, Exploring, Disobeying, Sweating) and set up opportunities to meet up with working professionals (fablabs, incubators, livinglabs, ...)',
  cause:'Empowering young people from working-class backgrounds',
creation_date:'2005',
  nb_collaborators:'20',
  average_age:'28',
  percentage_women:'70%',
  team_description:'Nice, easygoing and laid back atmosphere. Meals shared for lunch. Jokes all through the day. And a restlessness and energy to go about and to work all over Paris - we have an adventurous mindset!',
  percentage_english:'80%',
  value1:'OPEN-MINDEDNESS: we pay a lot of attention to each team member and also to everyone else to innovate with people from very different backgrounds',
  value2:'GOODWILL: everyone is listened to and respected to foster a joyful and good spirit',
  value3:'ENJOYMENT: when you enjoy the things you do you do them well, so we think it\'s better to pick your assignments so that every day is a good day!',
  quote:'',
  quote_author:'',
  phone:'',
  skype:'',
  twitter:'',
  facebook:'http://www.facebook.com//etincellebypa',
  instagram:'www.instagram.com/etincellebypa',
  website:'www.passeport-avenir.com',
  newsletter: false,
  #Data pour la working place
  description_working_place:'Shared office between 7 people, bright lighting, kitchen, dining room, lively bars and terraces.',
  address:'194, Rue de Tolbiac',
  city:'Paris',
  zip_code:'75013',
  country:'FR',
  closest_metro_working_place:'Tolbiac (metro 7)',
)
crew.save!

mission = crew.missions.new(
  title:'Video format creator and sublimator',
  context:'We want to create a new (fun and dynamic) video format, in the form of tutorials of practical tools to innovate inspired by testimonials from an innovator during an inspiring event (eg journaling and noting your inspirations). This video format will then be used as a model and deployed on several topics by the Etincelle team.',
  description:'The assignment is to develop a deep understanding of our mission and then to test different innovative video formats. The end goal is to develop the one that has the most effect on a younger target when it comes to presenting practical tools, shot during an event during which an innovator testifies and then enhanced during post-production and editing. An Etincelle team member will follow the process to be able to implement the same video format on other videos on different topics and tools (eg: setting up a visualisation board).',
  duration:'15',
  skill:'Video',
  material:'We can provide : PC computer, semi-professional Sony camera, sound equipment, tripod, saddle bag, SD card',
  referent_first_name:'Marine',
  referent_last_name:'MELLADO RUIZ',
  referent_role:'In charge of the Etincelle Program',
  referent_phone:'+33(0)7.81.09.75.20',
  referent_email:'marine.melladoruiz@passeport-avenir.com',
  host_first_name:'Marine',
  host_last_name:'MELLADO RUIZ',
  host_role:'In charge of the Etincelle Program',
  host_phone:'',
  #Data pour hosting place
  description_hosting_place:'Couch in a very comfortable living room with blinds for intimacy.',
  address:'250 rue du Faubourg Saint-Antoine',
  city:'Paris',
  zip_code:'75012',
  country:'FR',
  closest_metro_hosting_place:'Nation (metro 1, 2, 6 & 9)',
  nb_min_ride:'20min by metro',
nb_min_to_center:'15min by metro',
kind_of_hosting:'Living room couch',
  other_comment:'',
  status:'online',
)
mission.save!


