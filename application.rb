require "sinatra"

FIRST = [
  "LAZY",
  "STUPID",
  "INSECURE",
  "IDIOTIC",
  "SLIMY",
  "SLUTTY",
  "SMELLY",
  "POMPOUS",
  "COMMUNIST",
  "DICKNOSE",
  "PIE-EATING",
  "RACIST",
  "ELITIST",
  "WHITE TRASH",
  "DRUG-LOVING",
  "BUTTERFACE",
  "TONE DEAF",
  "UGLY",
  "CREEPY"
]

SECOND = [
  "DOUCH",
  "ASS",
  "TURD",
  "RECTUM",
  "BUTT",
  "COCK",
  "SHIT",
  "CROTCH",
  "BITCH",
  "TURD",
  "PRICK",
  "SLUT",
  "TAINT",
  "FUCK",
  "DICK",
  "BONER",
  "SHART",
  "NUT",
  "SPHINCTER"
]

THIRD = [
  "PILOT",
  "CANOE",
  "CAPTAIN",
  "PIRATE",
  "HAMMER",
  "KNOB",
  "BOX",
  "JOCKEY",
  "NAZI",
  "WAFFLE",
  "GOBLIN",
  "BLOSSUM",
  "BISCUIT",
  "CLOWN",
  "SOCKET",
  "MONSTER",
  "HOUND",
  "DRAGON",
  "BALLOON"
]

get "/" do
  @insult = "#{FIRST.sample} #{SECOND.sample} #{THIRD.sample}"
  erb :index
end

get "/insult" do
  "#{FIRST.sample} #{SECOND.sample} #{THIRD.sample}"
end

