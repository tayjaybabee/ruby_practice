# Write your code for the 'Two Fer' exercise in this file. Make the tests in
# `two_fer_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/two-fer` directory.

# Concatenates a string using an optional command-
# line parameter.
class TwoFer

  # Returns a string with your optional parameter
  #
  # @param [String] name A name for the other person
  # @return [String]
  def self.two_fer(name = 'you')
    "One for #{name}, one for me."
  end

end
