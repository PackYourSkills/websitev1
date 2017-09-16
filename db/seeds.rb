# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#admin pour packer
admin = User.new(
  email: 'admin@packyourskills.com',
  password: '10max89',
  role: 'admin',
  admin: true,
)
admin.save!

fakepacker = User.new(
  email: 'packer@packyourskills.com',
  password: '10max89',
  role: 'packer',
  admin: false,
)
fakepacker.save!

packer = fakepacker.build_packer(
  first_name:'Packer',
  last_name:'Admin',
  sexe:'male',
  age:'27',
  nationality:'French',
  story:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  job:'Packer',
  value1:'Beer',
  value2:'Music',
  value3:'Mountain',
  quote:'Blablabla',
  quote_author:'myself',
  city:'Paris',
  country:'FR',
  address:'55 bd de Reuilly',
  zip_code:'75012',
  skype:'packer.admin',
  phone:'0689930381',
  website:'www.packyourskills.com',
  cv_link:'https://www.linkedin.com/in/maximebdb/',
  facebook:'https://www.facebook.com/Maxime.PackYourSkills',
  instagram:'https://www.facebook.com/Maxime.PackYourSkills',
  other_link:'http://www.lemonde.fr/',
  newsletter:false,
)
packer.save!


user = User.new(
  email: 'frateli@packyourskills.com',
  password: 'NovemberIsTheNewCool',
  role: 'crew',
  admin: false,
)
user.save!

crew = user.build_crew(
  name:'Frateli Lab/ Le Blender',
  mission:'was born from the merger of two major non-profit organizations that fight against unequal opportunities (”Frateli” & “Passeport Avenir”). Article 1 strives for a society where the choice of career, success in studies and integration into the world of work don’t depend on social, economical or cultural origins. For a society where success comes from social link and civic engagement.',
  description:'The coworking space “Le Blender” is one of the projects of Article 1. It is a laboratory of projects that aim at contributing to mutual understanding between peoples, through entrepreneurship. Our objective : be a place of information, meetings and development for entrepreneurs from all over the world.',
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
  phone:'',
  skype:'',
  twitter:'',
  facebook:'https://www.facebook.com/Le-Blender-Coworking-316269912117548/',
  instagram:'',
  website:'http://leblender.squarespace.com',
  newsletter:false,
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
  referent_phone:'',
  referent_email:'',
  host_first_name:'Arounie',
  host_last_name:'Cagnon',
  host_role:'Manager of Le Blender coworking space',
  host_phone:'',
  #Data pour hosting place
  description_hosting_place:'You will have your own studio apartment (located in the garden of my parents’ apartment block). It is based in Saint-Leu-la-forêt, 45 minutes away from Paris. You can go to Paris with “RER” (sort of subway) during the day, and take a Uber after 2am if you want to party.',
  address:'41 chemin d\'Appollon',
  city:'Saint Leu La Forêt',
  zip_code:'95320',
  country:'FR',
  closest_metro_hosting_place:'Saint Leu la Forêt (line H)',
  nb_min_ride:'60',
  other_comment:'',
  status:'online',
)
mission.save!


