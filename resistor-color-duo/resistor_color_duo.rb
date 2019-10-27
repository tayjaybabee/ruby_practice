=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

# @author Taylor-Jayde Blackstone <t.blackstone@inspyre.tech>
# Class to determine the resistance of a resistor via
# color coding.
class ResistorColorDuo

  # A hash containing colors and their corresponding
  # numbers.
  @color_to_value = {
    black:  0,
    brown:  1,
    red:    2,
    orange: 3,
    yellow: 4,
    green:  5,
    blue:   6,
    violet: 7,
    grey:   8,
    white:  9
  }

  # Function to translate colored bands found on resistors
  # to an actual numerical value
  #
  # @param [Array] colors An array of colors to translate
  #   to a resistance measurement
  # @return [Integer]
  def self.value(colors)
    nums = [] # set up empty array to contain results

    # Start a loop that iterates through the first two
    # strings of the array to search for the numerical
    # value
    colors[0..1].each do |c|
      c.downcase # downcase the search query

      # search the hash for the color, return the
      # value
      res = @color_to_value[c.to_sym]

      # Put the result in the 'nums' array
      nums << res

    end

    # return the 'nums' array to the caller as an
    # integer
    nums.join('').to_i
  end
end
