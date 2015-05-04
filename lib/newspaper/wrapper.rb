require 'newspaper/wrapper/version'

class String
  def newspaper_wrap(length)
    new_str = []

    # Block the string out into {length} segments
    0.step(self.length, length) do |s|
      new_str.push self[s..s+length - 1]
    end

    # Now fix any words that need hypenations.
    # rules: if there are 4 characters or less, move them to the next line.
    # Otherwise, hyphenate.
    return_str = []
    new_str.each_with_index do |elem, index|
      if index == new_str.length - 1  # Last element
        return_str.push elem
        break
      end

      if elem[-1] != ' ' and new_str[index+1][0] != ' '
        if elem[-4..-1].include? ' '
          elem[-4..-1].rindex ' '
        end

        elem += '-'
        # puts elem[-1] + "' '" + new_str[index+1][0]

      end
      return_str.push elem
    end

    return_str #.join "\n"
  end
end
