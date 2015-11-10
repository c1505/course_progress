# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 5.times do |i|
#   Course.create(title: "Course #{i}", curriculum_id: i)
# end

# 5.times do |i|
#   Curriculum.create(title: "Curriculum #{i}")
# end

# 5.times do |i|
#   Section.create(title: "Section #{i}", course_id: i)
# end

# 5.times do |i|
#   SubSection.create(title: "Sub_Section #{i}", section_id: i)
# end

Curriculum.create(title: "Web Development 101", time_estimate: 60)

Course.create(title: "The Basics", time_estimate: 5, curriculum_id: Curriculum.last.id)

Section.create(title: "1: How this Course Will Work ", time_estimate: 2, course_id: Course.last.id)
Section.create(title: "2: How Does the Web Work? ", time_estimate: 10, course_id: Course.last.id)
Section.create(title: "3: How Does Your Computer Work? ", time_estimate: 30, course_id: Course.last.id)
Section.create(title: "4: Terms to Know ", time_estimate: 10, course_id: Course.last.id)
Section.create(title: "Project: Installations", time_estimate: 240, course_id: Course.last.id)

Course.create(title: "The Front End", time_estimate: 23, curriculum_id: Curriculum.last.id)

Section.create(title: "1: Introduction to the Front End ", time_estimate: 30, course_id: Course.last.id)
Section.create(title: "2: HTML and CSS Basics ", time_estimate: 180, course_id: Course.last.id)
Section.create(title: "Project HTML/CSS ", time_estimate: 180, course_id: Course.last.id)
Section.create(title: "3: Javascript Basics", time_estimate: 390, course_id: Course.last.id)
Section.create(title: "4: jQuery Basics", time_estimate: 390, course_id: Course.last.id)
Section.create(title: "Project: Installations", time_estimate: 180, course_id: Course.last.id)

Course.create(title: "The Back End", time_estimate: 21, curriculum_id: Curriculum.last.id)

Section.create(title: "1: Introduction to the Back End ", time_estimate: 15, course_id: Course.last.id)
Section.create(title: "2: Ruby Basics – here’s where we implement the Ruby fix, which will take ~11hrs", time_estimate: 330, course_id: Course.last.id)
Section.create(title: "3: Testing Basics", time_estimate: 150, course_id: Course.last.id)
Section.create(title: "Project: Ruby (TestFirst)", time_estimate: 300, course_id: Course.last.id)
Section.create(title: "4: Databases ", time_estimate: 120, course_id: Course.last.id)


Course.create(title: "Web Development and Frameworks", time_estimate: 6, curriculum_id: Curriculum.last.id)

Section.create(title: "1: Introduction to Framework", time_estimate: 20, course_id: Course.last.id)
Section.create(title: "2: Ruby on Rails Basics", time_estimate: 120, course_id: Course.last.id)
Section.create(title: "Project: Ruby on Rails (Basic Blog App)", time_estimate: 300, course_id: Course.last.id)
Section.create(title: "3: Backbone.js – Skip this per my recommendation", course_id: Course.last.id) # time estimate unknown


Course.create(title: "Additional Important Topics", time_estimate: 23, curriculum_id: Curriculum.last.id)

Section.create(title: "1: Git Basics", time_estimate: 90, course_id: Course.last.id)
Section.create(title: "2: The Cloud, Hosting, and Software as a Service (SAAS)", time_estimate: 30, course_id: Course.last.id)
Section.create(title: "3: Security, SSL, and Best Practices", time_estimate: 30, course_id: Course.last.id)
Section.create(title: "4: FTP Basics", time_estimate: 15, course_id: Course.last.id)


Course.create(title: "tying it All Together", time_estimate: 23, curriculum_id: Curriculum.last.id)

Section.create(title: "1: How are Websites Built in the Real World?", time_estimate: 60, course_id: Course.last.id)
Section.create(title: "2: Princples of Good Programming", time_estimate: 30, course_id: Course.last.id)
Section.create(title: "3: Conclusion", time_estimate: 5, course_id: Course.last.id)


course_progress_hash = [{"time_estimate"=>107,"model"=>"Curriculum","title"=>"Course 3: Ruby Programming – 83-133hrs"},
{"time_estimate"=>12,"model"=>"Course","title"=>"Basic Ruby – 10-14hrs"},
{"time_estimate"=>15,"model"=>"Section","title"=>"1: How this Course Will Work – 15min"},
{"time_estimate"=>120,"model"=>"Section","title"=>"2: Ruby Building Blocks – Start from step 6 because of the Ruby fix earlier. Should take 2hrs."},
{"time_estimate"=>180,"model"=>"Section","title"=>"Projects: Ruby Building Blocks (various Ruby scripts) – 3hrs"},
{"time_estimate"=>30,"model"=>"Section","title"=>"3: Advanced Ruby Building Blocks – 30min if you get the Code Quizzes right, per my Ruby fix."},
{"time_estimate"=>360,"model"=>"Section","title"=>"Project: Advanced Building Blocks (sorting algorithms) – 4-8hrs"},
{"time_estimate"=>34,"model"=>"Course","title"=>"Intermediate Ruby – 33-36hrs"},
{"time_estimate"=>390,"model"=>"Section","title"=>"1: Object Oriented Programming – 5-8hrs"},
{"time_estimate"=>480,"model"=>"Section","title"=>"Project: OOP (Tic-tac-toe) – Because I add the AI to this project, it took like 16hrs, and this is even with skipping Mastermind."},
{"time_estimate"=>120,"model"=>"Section","title"=>"2: Files and Serialization – 2hrs"},
{"time_estimate"=>360,"model"=>"Section","title"=>"Project: Serialization and Working with Files – 10hrs, though I spent time adding an AI to the Hangman too (to guess the word based on letter frequency and knowledge of the dictionary)"},
{"time_estimate"=>9.5,"model"=>"Course","title"=>"Ruby on the Web – 7-12hrs"},
{"time_estimate"=>90,"model"=>"Section","title"=>"1: Bringing Ruby Online – 1-2hrs"},
{"time_estimate"=>480,"model"=>"Section","title"=>"Project: Ruby on the Web (Twitter Spambot and Web Server) – 6-10hrs"},
{"time_estimate"=>11.5,"model"=>"Course","title"=>"A Bit of Computer Science – 8-15hrs"},
{"time_estimate"=>45,"model"=>"Section","title"=>"1: A Very Brief Intro to CS – 0.5-1hr"},
{"time_estimate"=>45,"model"=>"Section","title"=>"2: Recursive Methods – 0.5-1hr"},
{"time_estimate"=>180,"model"=>"Section","title"=>"Project: Recursion (Fibbonachi, Merge Sort) – 2-4hrs"},
{"time_estimate"=>60,"model"=>"Section","title"=>"3: Common Data Structures and Algorithms – 1hr"},
{"time_estimate"=>360,"model"=>"Section","title"=>"Project: Data Structures and Algorithms (Binary Trees, Knights Travails) – 4-8hrs"},
{"time_estimate"=>11,"model"=>"Course","title"=>"Testing Ruby with RSpec - 11hrs"},
{"time_estimate"=>60,"model"=>"Section","title"=>"1: Introduction to RSpec – 1hr"},
{"time_estimate"=>600,"model"=>"Section","title"=>"Project: Testing Ruby (Past tests, Connect Four) – 10hrs"},
{"time_estimate"=>3.5,"model"=>"Course","title"=>"Git - 2-5hrs"},
{"time_estimate"=>120,"model"=>"Section","title"=>"1: A Deeper Look at Git – 1-3hrs"},
{"time_estimate"=>90,"model"=>"Section","title"=>"2: Using Git in the Real World – 1-2hrs"},
{"time_estimate"=>30,"model"=>"Course","title"=>"Conclusion – 12-40hrs"},
{"time_estimate"=>900,"model"=>"Section","title"=>"Project: Ruby Final Project – I haven’t actually done this one yet, it’s on the to-do list. But 12-20hrs looks right. Maybe +10-20hrs if you add an AI. ;)"},
{"time_estimate"=>5,"model"=>"Section","title"=>"1: Conclusion – 5min"}]


rest_of_hash = [{"model"=>"Curriculum", "title"=>"Course 4: Introduction to Rails ", "time_estimate"=>9180}, {"model"=>"Course", "title"=>"Introduction to Rails ", "time_estimate"=>40}, {"model"=>"Section", "title"=>"1: How this Course Will Work ", "time_estimate"=>5}, {"model"=>"Section", "title"=>"Project: Getting Your Feet Wet (Hartl Tutorial) ", "time_estimate"=>4040}, {"model"=>"Section", "title"=>"2: A Railsy Web Refresher ", "time_estimate"=>5}, {"model"=>"Section", "title"=>"Projects that are part of the Hartl tutorial omitted ", "time_estimate"=>0}, {"model"=>"Course", "title"=>"Databases and Active Record ", "time_estimate"=>780}, {"model"=>"Section", "title"=>"1: Databases and SQL ", "time_estimate"=>1}, {"model"=>"Section", "title"=>"Project: SQL (SQLZoo) ", "time_estimate"=>240}, {"model"=>"Section", "title"=>"2: Active Record Basics ", "time_estimate"=>60}, {"model"=>"Section", "title"=>"Project: Building With Active Record (Reddit) ", "time_estimate"=>360}, {"model"=>"Course", "title"=>"Forms and Authentication ", "time_estimate"=>420}, {"model"=>"Section", "title"=>"1: Form Basics ", "time_estimate"=>60}, {"model"=>"Section", "title"=>"Project: Forms ", "time_estimate"=>240}, {"model"=>"Section", "title"=>"2: Sessions, Cookies, and Authentication ", "time_estimate"=>60}, {"model"=>"Section", "title"=>"Projects that are part of the Hartl tutorial omitted", "time_estimate"=>0}, {"model"=>"Course", "title"=>"Advanced Forms and Active Record ", "time_estimate"=>1380}, {"model"=>"Section", "title"=>"1: Active Record Queries ", "time_estimate"=>120}, {"model"=>"Section", "title"=>"2: Active Record Associations ", "time_estimate"=>120}, {"model"=>"Section", "title"=>"Project: Associations ", "time_estimate"=>360}, {"model"=>"Section", "title"=>"3: Active Record Callbacks ", "time_estimate"=>120}, {"model"=>"Section", "title"=>"Projects that are part of the Hartl tutorial omitted", "time_estimate"=>0}, {"model"=>"Course", "title"=>"4: Advanced Forms ", "time_estimate"=>120}, {"model"=>"Section", "title"=>"Project: Advanced Forms (Flight Booker) ", "time_estimate"=>360}, {"model"=>"Course", "title"=>"APIs, Mailers and Advanced Topics ", "time_estimate"=>4080}, {"model"=>"Section", "title"=>"1: APIs and Building Your Own ", "time_estimate"=>60}, {"model"=>"Section", "title"=>"2: Working With External APIs ", "time_estimate"=>60}, {"model"=>"Section", "title"=>"Projects: Building and Using APIs (Kitten API) ", "time_estimate"=>360}, {"model"=>"Section", "title"=>"3: Mailers ", "time_estimate"=>60}, {"model"=>"Section", "title"=>"Project: Ruby on Rails Mailers ", "time_estimate"=>180}, {"model"=>"Section", "title"=>"4: Advanced Topics ", "time_estimate"=>180}, {"model"=>"Section", "title"=>"Project: Ruby on Rails Final Project!!! ", "time_estimate"=>3000}, {"model"=>"Section", "title"=>"5: Conclusion ", "time_estimate"=>60}, {"model"=>"Curriculum", "title"=>"Course 5: HTML5 and CSS3 ", "time_estimate"=>1860}, {"model"=>"Course", "title"=>"Basic HTML Page Structure ", "time_estimate"=>300}, {"model"=>"Section", "title"=>"1: How This Course Will Work ", "time_estimate"=>5}, {"model"=>"Section", "title"=>"2: HTML5 Basics ", "time_estimate"=>60}, {"model"=>"Section", "title"=>"3: Linking Internal and External Pages ", "time_estimate"=>15}, {"model"=>"Section", "title"=>"4: Working with Images, Video and Other Media ", "time_estimate"=>15}, {"model"=>"Section", "title"=>"Project: Embedding Images and Video ", "time_estimate"=>0}, {"model"=>"Section", "title"=>"5: What’s New in HTML5 ", "time_estimate"=>0}, {"model"=>"Course", "title"=>"Displaying and Inputting Data ", "time_estimate"=>1380}, {"model"=>"Section", "title"=>"1: Tables in HTML ", "time_estimate"=>15}, {"model"=>"Section", "title"=>"2: Ordered and Unordered Lists ", "time_estimate"=>15}, {"model"=>"Section", "title"=>"3: Forms for Collecting Data ", "time_estimate"=>15}, {"model"=>"Section", "title"=>"Project: HTML Forms (with Mint) ", "time_estimate"=>120}, {"model"=>"Course", "title"=>"CSS3 ", "time_estimate"=>3240}, {"model"=>"Section", "title"=>"1: CSS3 Basics ", "time_estimate"=>60}, {"model"=>"Section", "title"=>"2: The Box Model ", "time_estimate"=>45}, {"model"=>"Section", "title"=>"3: Floats and Positioning ", "time_estimate"=>45}, {"model"=>"Section", "title"=>"Project: Positioning anx Mloating Elements ", "time_estimate"=>120}, {"model"=>"Section", "title"=>"4: Best Practices ", "time_estimate"=>30}, {"model"=>"Section", "title"=>"5: Backgrounds and Gradients ", "time_estimate"=>15}, {"model"=>"Section", "title"=>"Project: Building with Backgrounds and Gradients ", "time_estimate"=>120}, {"model"=>"Course", "title"=>"Design and UX ", "time_estimate"=>1320}, {"model"=>"Section", "title"=>"1: Introduction to Design and UX ", "time_estimate"=>960}, {"model"=>"Section", "title"=>"2: Fonts and Typography ", "time_estimate"=>30}, {"model"=>"Section", "title"=>"3: CSS Grids ", "time_estimate"=>60}, {"model"=>"Section", "title"=>"Project: Design Teardown ", "time_estimate"=>180}, {"model"=>"Course", "title"=>"Responsive Design and CSS Frameworks ", "time_estimate"=>4500}, {"model"=>"Section", "title"=>"1: Responsive Design ", "time_estimate"=>30}, {"model"=>"Section", "title"=>"Project: Building with Responsive Design ", "time_estimate"=>180}, {"model"=>"Section", "title"=>"2: CSS Frameworks like Bootstrap and Foundation ", "time_estimate"=>1}, {"model"=>"Section", "title"=>"Project: Using Bootstrap ", "time_estimate"=>180}, {"model"=>"Course", "title"=>"Advanced CSS3 ", "time_estimate"=>1980}, {"model"=>"Section", "title"=>"1: Animations, Subtle Effects and Compatibility ", "time_estimate"=>30}, {"model"=>"Section", "title"=>"2: Using CSS Preprocessors to Save Time ", "time_estimate"=>45}, {"model"=>"Section", "title"=>"Project: Design Your Own Grid-Based Framework ", "time_estimate"=>180}, {"model"=>"Section", "title"=>"3: Conclusion ", "time_estimate"=>5}, {"model"=>"Curriculum", "title"=>"Course 6: JavaScript and jQuery ", "time_estimate"=>6180}, {"model"=>"Course", "title"=>"The Basics and the Browser ", "time_estimate"=>3000}, {"model"=>"Section", "title"=>"1: How This Course Will Work ", "time_estimate"=>5}, {"model"=>"Section", "title"=>"2: Javascript Basics ", "time_estimate"=>2}, {"model"=>"Section", "title"=>"Project: On Screen Calculator ", "time_estimate"=>180}, {"model"=>"Section", "title"=>"3: jQuery Basics ", "time_estimate"=>15}, {"model"=>"Section", "title"=>"Project: Manipulating the DOM with jQuery (Restaurant Page) ", "time_estimate"=>120}, {"model"=>"Section", "title"=>"4: Organizing Your Code and More ", "time_estimate"=>60}, {"model"=>"Course", "title"=>"Events, Effects, and Widgets ", "time_estimate"=>780}, {"model"=>"Section", "title"=>"1: Working with Events and Effects ", "time_estimate"=>45}, {"model"=>"Section", "title"=>"Project: jQuery and the DOM (Snake) ", "time_estimate"=>420}, {"model"=>"Section", "title"=>"2: Using jQuery UI to Build Widgets ", "time_estimate"=>75}, {"model"=>"Section", "title"=>"Project: Creating an Image Carousel/Slider in Javascript ", "time_estimate"=>180}, {"model"=>"Course", "title"=>"My JavaScript Fix ", "time_estimate"=>2745780}, {"model"=>"Course", "title"=>"Better Forms with jQuery and AJAX ", "time_estimate"=>720}, {"model"=>"Section", "title"=>"1: Validating Form Inputs Using jQuery ", "time_estimate"=>60}, {"title" => "Loading by Using AJAX ", "time_estimate"=>60}, {"model"=>"Section", "title"=>"Project: Infinite Scroll and Submitting a Form with AJAX ", "time_estimate"=>300}, {"model"=>"Course", "title"=>"Linking to APIs and Your Rails Back End ", "time_estimate"=>660}, {"model"=>"Section", "title"=>"1: Working with Javascript APIs ", "time_estimate"=>120}, {"model"=>"Section", "title"=>"Project: Putting Google Maps Onto Your Site ", "time_estimate"=>120}, {"model"=>"Section", "title"=>"2: Using Ruby on Rails For Your Back End ", "time_estimate"=>120}, {"model"=>"Section", "title"=>"Project: Where’s Waldo (A Photo Tagging App) ", "time_estimate"=>300}, {"model"=>"Course", "title"=>"Server Side Javascript and Javascript Frameworks ", "time_estimate"=>1800}, {"model"=>"Section", "title"=>"1: Node.js and Server-Side Javascript ", "time_estimate"=>120}, {"model"=>"Section", "title"=>"Personal Note.js Project ", "time_estimate"=>660}, {"model"=>"Section", "title"=>"2: Using Templates ", "time_estimate"=>60}, {"model"=>"Section", "title"=>"3: Javascript MV Frameworks Like Angular.js and Backbone.js ", "time_estimate"=>60}, {"model"=>"Section", "title"=>"Angular and Backbone Tutorials ", "time_estimate"=>540}, {"model"=>"Section", "title"=>"4: Workflow Tools, Tech Stacks and Dependency Management ", "time_estimate"=>180}, {"model"=>"Course", "title"=>"Finishing Up with JavaScript ", "time_estimate"=>120}, {"model"=>"Section", "title"=>"1: Javascript Testing with Jasmine ", "time_estimate"=>120}, {"model"=>"Section", "title"=>"Project: Final Project ", "time_estimate"=>2400}, {"model"=>"Section", "title"=>"2: Conclusion ", "time_estimate"=>5}]

course_progress_hash.each do |f|
    if f["model"] == "Section"
        Section.create(title: f["title"].slice(0...(f["title"].index("–"))), time_estimate: f["time_estimate"].to_i, course_id: Course.last.id)
    elsif f["model"] == "Course"
        Course.create(title: f["title"], time_estimate: f["time_estimate"].to_i, curriculum_id: Curriculum.last.id)
    else
        Curriculum.create(title: f["title"].slice(0...(f["title"].index("–"))), time_estimate: f["time_estimate"].to_i)
        
    end
end

rest_of_hash.each do |f|
    unless f["time_estimate"].nil?
        if f["model"] == "Section"
            Section.create(title: f["title"], time_estimate: f["time_estimate"], course_id: Course.last.id)
        elsif f["model"] == "Course"
            Course.create(title: f["title"], time_estimate: f["time_estimate"], curriculum_id: Curriculum.last.id)
        else
            Curriculum.create(title: f["title"], time_estimate: f["time_estimate"])
            
        end
    end
end



