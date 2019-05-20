class Book
    
    def initialize()
        @title = ""
    end

    def title
        @title
    end

    def title=(input)
        little_words = ["the", "and", "over", "a", "or", "in", "of", "an"]
        input.capitalize!
        @title = input.split(" ").map {|string| 
        if little_words.include?(string)
            string
        else 
            string.capitalize
        end
    }.join(" ")
    end
end
