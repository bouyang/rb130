class Text
  def initialize(text)
    @text = text
  end

  def swap(letter_one, letter_two)
    @text.gsub(letter_one, letter_two)
  end

  def word_count
    @text.split.count
  end
end

#p Text.new('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed vulputate ipsum.').swap('a', 'e')
# Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.

# p Text.new('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed vulputate ipsum.
#   Suspendisse commodo sem arcu. Donec a nisi elit. Nullam eget nisi commodo, volutpat
#   quam a, viverra mauris. Nunc viverra sed massa a condimentum. Suspendisse ornare justo
#   nulla, sit amet mollis eros sollicitudin et. Etiam maximus molestie eros, sit amet dictum
#   dolor ornare bibendum. Morbi ut massa nec lorem tincidunt elementum vitae id magna. Cras
#   et varius mauris, at pharetra mi.').word_count