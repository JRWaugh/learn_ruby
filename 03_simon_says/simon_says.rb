#write your code here
def echo(message)
    message
end

def shout(message)
    message.upcase
end

def repeat(message, repeats = 2)
    ((message + " ") * repeats).strip
end

def start_of_word(message, index)
    message[0..index-1]
end

def first_word(message)
    message.split(" ").first
end

def titleize(message)
    little_words = ["the", "and", "over", "a", "or"]
    message.capitalize!
    new_message = message.split(" ").map {|string| 
        if little_words.include?(string)
            string
        else 
            string.capitalize
        end
    }.join(" ")
    new_message
end
        