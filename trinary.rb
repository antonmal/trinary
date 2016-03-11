require 'pry'

class Trinary
  attr_accessor :trinary_str

  def initialize(trinary_str)
    @trinary_str = trinary_str
  end

  def to_decimal
    return 0 if trinary_str =~ /[^0123]/
    digits = trinary_str.split('').map(&:to_i).reverse
    decimal = 0
    digits.each_with_index do |digit, index|
      decimal += digit * (3 ** index)
    end
    decimal
  end
end
