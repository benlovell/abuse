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
  "DOUCHE",
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

__END__

@@ index
<html>
  <head>
    <style>
    h1 { font-family: helvetica; font-size: 10em; }
    body { background-color: yellow; }
    </style>
    <title>Insults</title>
  </head>
  <body>
    <h1><%= @insult %></h1>
  </body>
</html>
