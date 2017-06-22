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
  
  9.times do |portfolio_item|
    Portfolio.create!(
      title: "Your lie in April is so amazing #{portfolio_item}" ,
      subtitle: "No seriously it is awesome" ,
      body: "A rainbow is never formed by chance, the blossoming colors always dance, In a whirlwind of a thousand hues.
   Under the brilliant crimson sky! I was falling so hard and I knew that my world was you.
   Its not a moment you can capture on film even so I'll never let it disappear. You are a song and every last note is carved into my heart!
   This is a rainbow coloured symphony! Every day a symphony! A beautiful song no one will never know a melody no one can play alone.
   Crying, Laughing from hello, Do-Re-Mi-Fa-So all of our..emotions form a symphony
   I breathe a sigh and watch the sky as it collects this little hopleless puff of air
   There are a thousand cherry blossoms twirling up to a silent song up there
   I spin around, and around, and around, and then spin right around!
   I'm waiting patiently for spring but I dont know if I can bare it without you around",
      main_image: "http://placehold.it/600x400",
      thumb_image: "http://placehold.it/350x200"
      )
        end
  
  puts "9 portfolios created" 