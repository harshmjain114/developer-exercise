class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str.split(" ").map do |word|
      if word[-1] =~ /[[:punct:]]/
          punctuation = word[-1]
          word = word[0...-1]
      else
          punctuation = ''
      end

      if word.length > 4
          replacement = word[0] == word[0].upcase ? "Marklar" : "marklar"
          replacement + punctuation
      else
          word + punctuation
      end
    end.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    return 0 if nth <= 0
    
    n1, n2 = 1, 1
    sum = 0

    (3..nth).each do |_|
      n = n1 + n2
      sum += n if n.even?
      n1, n2 = n2, n
    end

    sum
    end
end
