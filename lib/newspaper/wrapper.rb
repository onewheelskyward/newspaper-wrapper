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
    push_forward = ''

    new_str.each_with_index do |elem, index|
      unless push_forward.empty?
        elem = push_forward + elem
        push_forward = ''
      end

      if index == new_str.length - 1  # Last element
        return_str.push elem
        break
      end

      if elem.length > length
        return_str.push elem
        next
      end

      if elem[-1] != ' ' and new_str[index+1][0] != ' '
        if elem[-4..-1].include? ' '    # Check the last 4 characters for a space
          spacey = (elem[-4..-1].rindex(' ')).to_i * -1      # If we found one, let's find it and split the word.
          new_elem = elem[0..(spacey - 1)]
          push_forward = elem[(spacey + 1)..-1]
          elem = new_elem
          puts "elem: #{elem} Push forward #{push_forward}"
        else
          elem += '-'
        end

        # puts elem[-1] + "' '" + new_str[index+1][0]

      end
      return_str.push elem
    end

    return_str #.join "\n"
  end
end
