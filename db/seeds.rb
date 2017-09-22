# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  email: 'admin@packyourskills.com',
  password: 'admin',
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
  name:'Awa',
  mission:'Awa was created to centralize and promote individual, collective and environmental solutions that have been proved to be efficient and reproducible.',
  description:'To address this issue, we developed search engine, innovative educative audiovisual productions, a school and an accelerator for social entrepreneurship, and various products and services marrying positive impact and pedagogy.',
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
  website:'www.awa.education',
  newsletter: false,
  #Data pour la working place
  description_working_place:'NUMA the biggest free co-working space of Paris ! Cool people there !',
  address:'39, rue du Caire',
  city:'Paris',
  zip_code:'75002',
  country:'FR',
  closest_metro_working_place:'Sentier (metro 3)',
)
crew.save!

mission = crew.missions.new(
  title:'Building a demo version of our website',
  context:'We want to test our product and be able to show a demo version.',
  description:'That\’s why need someone to help us build a website demo for collecting knowledge, presenting solutions for the citizens (solutions hub) using filters and showing educative images.',
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
  host_phone:'06.46.81.74.70',
  description_hosting_place: '21 meter squares charming studio in the nice 3rd district, just upon the Marché des enfants rouges !
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

####################################
#########    CAUSONS     #########
###################################

user = User.new(
  email: 'cvernimmen@brainup.fr',
  password: 'NovemberIsTheNewCool',
  role: 'crew',
  admin: false,
)
user.save!

crew = user.build_crew(
  name:'Brain Up',
  mission:'Brain Up devises and rolls out health-promoting action nation-wide in France, to enable each individual to be the master of their own health on a daily basis.',
  description:'We roll out collective actions, in the form of workshops, conventions, trainings or seminars.',
  cause:'empowering individuals to master their health',
creation_date:'2009',
  nb_collaborators:'16 (11 in Paris)',
  average_age:'30',
  percentage_women:'40%',
  team_description:'We are a young, hard-working and dynamic team. We are fully committed and deeply convinced of the values and the impact of our missions. Some of use sometimes like to spent time together after work or for lunch. For instance, on Monday, we enjoy working out together.
We take part in the daily life of the co-working space and organize after-work drinks together on a regular basis.',
  percentage_english:'50% (some can also speak Italian)',
  value1:'Trust: trusting people and being trustworthy',
  value2:'A sense of anticipation: being thorough, being flexible',
  value3:'Positive attitude: being a good listener and showing empathy.',
  quote:'',
  quote_author:'',
  phone:'',
  skype:'',
  twitter:'',
  facebook:'',
  instagram:'',
  website:'www.brainup.fr',
  newsletter: false,
  #Data pour la working place
  description_working_place:'Co-working space, with a shared kitchen',
  address:'16 rue Abel',
  city:'Paris',
  zip_code:'75012',
  country:'FR',
  closest_metro_working_place:'Ledru-Rollin (metro 8)',
)
crew.save!

mission = crew.missions.new(
  title:'Creating thematic templates for printed posters in health sector',
  context:'We want to create communication tools to help our partners communication on the actions we jointly implement.',
  description:'The purpose is to create templates that we will use for our different communication campaigns. We need one template per health issue we are communicating about : food balance, memory, peaceful driving, etc. Those templates will then be used each time we launch a campaign, and will be printed on posters.',
  duration:'15',
  skill:'Graphic Design',
  material:'Ideally the traveler will come with his/her own computer with the Adobe Acrobat suite. Otherwise, we can discuss it together.',
  referent_first_name:'Charles',
  referent_last_name:'VERNIMMEN',
  referent_role:'President',
  referent_phone:'09.53.40.20.00',
  referent_email:'cvernimmen@brainup.fr',
  host_first_name:'Charles',
  host_last_name:'VERNIMMEN',
  host_role:'President',
  host_phone:'',
  #Data pour hosting place
  description_hosting_place:'It\'s a two-room apartment in the same building as the association\'s offices.',
  address:'16 rue Abel',
  city:'Paris',
  zip_code:'75012',
  country:'FR',
  closest_metro_hosting_place:'Ledru-Rollin (metro 8)',
  nb_min_ride:'0min',
  nb_min_to_center:'15min by metro',
  kind_of_hosting:'Your own studio',
  other_comment:'',
  status:'online',
)
mission.save!


####################################
#########       AWA       #########
###################################

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
  referent_phone:'07.88.37.44.00',
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


####################################
#########   CODING DAYS    #########
###################################


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
  title:'Creating a static website (without database) with Wordpress',
  context:'We’re developing a new website.',
  description:'That’s why we need someone who can create a static website (without database) with Wordpress.',
  duration:'15',
  skill:'Web Development',
  material:'We will provide a desk but it would be better if the Packer had his own computer',
  referent_first_name:'Alexandre',
  referent_last_name:'ZANA',
  referent_role:'CEO',
  referent_phone:'06.22.21.42.15',
  referent_email:'alex@coding-days.com',
  host_first_name:'Alexandre',
  host_last_name:'ZANA',
  host_role:'CEO',
  host_phone:'06.22.21.42.15',
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
