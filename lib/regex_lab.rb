def starts_with_a_vowel?(word)
    if word.match(/\A[aeiou]/i)
        return true
    else
        return false
    end
end

def words_starting_with_un_and_ending_with_ing(text)
    un_ing_words = text.scan(/\bun\w+ing\b/)
    return un_ing_words
end

def words_five_letters_long(text)
   five_letter_words = text.scan(/\b\w{5}\b/)
   return five_letter_words
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    if text.match(/\A[A-Z][^\.\?!]*[\.\?!]\z/)
        return true
    else
        return false
    end
end

# def valid_phone_number?(phone)
#     digits = phone.gsub(/[e.\s]/,'')
#     if digits.match(/^\d{10,}$/)
#         return true
#     else
#         return false
#     end
# end

def valid_phone_number?(phone)
    digits = phone.gsub(/[^\d]/, '') 
    if digits.length == 10 
        return true
    else
        return false
    end
  end
