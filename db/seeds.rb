10.times do |blog|
  Blog.create!(
    title: "Bee movie script #{blog}", body: 
    "According to all known laws of aviation, there is no way a bee should be able to fly. 
    Its wings are too small to get its fat little body off the ground. The bee, of course,
    flies anyway because bees don't care what humans think is impossible. Yellow, black.
    Yellow, black. Yellow, black. Yellow, black. Ooh, black and yellow!
    Let's shake it up a little. Barry! "
    )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}"
    )
  end
  
  puts "5 skills created"
  
  4.times do |portfolio_item|
    Portfolio.create!(
      title: "Your lie in April is so amazing #{portfolio_item}" ,
      subtitle: "YLIA" ,
      body: "A rainbow is never formed by chance, the blossoming colors always dance, In a whirlwind of a thousand hues.
   Under the brilliant crimson sky! I was falling so hard and I knew that my world was you.
   Its not a moment you can capture on film even so I'll never let it disappear. You are a song and every last note is carved into my heart!
   This is a rainbow coloured symphony! Every day a symphony! A beautiful song no one will never know a melody no one can play alone.
   Crying, Laughing from hello, Do-Re-Mi-Fa-So all of our..emotions form a symphony
   I breathe a sigh and watch the sky as it collects this little hopleless puff of air
   There are a thousand cherry blossoms twirling up to a silent song up there
   I spin around, and around, and around, and then spin right around!
   I'm waiting patiently for spring but I dont know if I can bare it without you around",
      main_image: "http://placehold.it/600x400"
      )
        end
        
        5.times do |portfolio_item|
    Portfolio.create!(
      title: "Full Metal Alchemist Brotherhood is amazing #{portfolio_item}" ,
      subtitle: "FMAB" ,
      body: "Alchemy. The science of understanding, deconstructing and reconstructing matter.
      However, it is not an all powerful art. It is impossible to create something out of nothing.
      If one wishes to obtain something, something of equal value must be given. This is the law of
      equivalent exchange. The basis of all alchemy. In accordance with this law, there is a taboo among
      alchemists. Human transmutation is strictly forbidden. For what could equal the value of a human soul?",
      main_image: "http://placehold.it/600x400",
      )
        end
  1.times do |portfolio_item|
  Portfolio.create!(
    title: "I love the Free!!! Dub #{portfolio_item}",
    subtitle: ".//^//.",
    body: "Hi my name is Makoto Tachibana....
    I've got backstrokes for days...
    and triceps just as long")

  puts "10 portfolios created" 
  
end