class Trinary
  attr_reader :trinary_str

  def initialize(trinary_str)
    @trinary_str = trinary_str
  end

  def to_decimal
    return 0 if trinary_str =~ /[^0123]/
    digits = trinary_str.split('').map(&:to_i).reverse
    digits.each_with_index.map { |d, i| d * (3 ** i) }.inject(:+)
  end
end
