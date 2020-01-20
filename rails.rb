# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'

user1_selected_language = "fr"
user2_selected_language = "zh"
user3_selected_language = "dc"

def hello_world lang_code = "en"
    if lang_code == "en"
        "Hello, World"
    elsif lang_code == "es"
        "Hola Mundo"
    elsif lang_code == "zh"
        "你好 世界"
    elsif lang_code == "fr"
        "Bonjour le monde"
    else
        "Hello, World!"
    end
end

puts hello_world user1_selected_language
puts hello_world user2_selected_language  
puts hello_world user3_selected_language  
       

# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

student1_grade = 98
student2_grade = 85
student3_grade = 42

def assign_grade num
    case num
    when 90...100
        "A"
    when 80..89
        "B"
    when 70..79
        "C"
    when 60..69
        "D"
    when 0..60
        "FAILED"
    end
end

puts assign_grade student1_grade
puts assign_grade student2_grade
puts assign_grade student3_grade


# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.

def assign_grade2 num
    case num
    when 90...100
        "A"
    when 80..89
        "B"
    when 70..79
        "C"
    when 60..69
        "D"
    when 0..60
        "FAILED"
    end
    if num < 0
        "You reeeaaaallly failed"
    elsif num > 100
        "You are a super nerd. Good work."
    end
end

puts assign_grade2 (101)
puts assign_grade2 (-12)

# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'

def pluralizer num, noun
    if num == 1
        "#{num} #{noun}"
    else
        "#{num} #{noun}s"
    end
end

puts pluralizer(5, "koala")
puts pluralizer(1, "zebra")
puts pluralizer(0, "cow")

# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.
