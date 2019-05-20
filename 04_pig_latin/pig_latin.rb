#write your code here
def translate(words)
    vowels = ['a', 'e', 'i', 'o', 'u']
    words.split(" ").map {|word|
        if vowels.include?(word[0])
            word + "ay"
        else
            index = word.index(/[aeiou]/)
            if word[index-1] == 'q'
                word[index+1..-1] + word[0..index] + "ay"
            else
                word[index..-1] + word[0..index-1] + "ay"
            end
    end
    }.join(" ")
end