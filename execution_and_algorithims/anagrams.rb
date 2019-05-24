class String
  def first_anagram?(string)
    possible_combinations = self.chars.permutation.to_a
    possible_combinations.map! {|sub_array| sub_array.join("")}
    possible_combinations.include?(string)
  end
  
  def second_anagram?(string)
   chars_arr = self.chars
    chars_arr.each do |chars|
      index = chars_arr.find_index(chars)
      string[index] = ""
    end  
  
    str_indicies = []
    string.each_char do |char|
      str_indicies << char.index
      return true if char == "" && str_indicies.length == string
    end
    
  end







end

p "elvis".second_anagram?("lives") #["e","l","v","i", "s"] 

