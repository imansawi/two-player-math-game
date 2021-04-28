class Question
  attr_accessor :first_num, :second_num

  def initialize
    @first_num = rand(19) + 1
    @second_num = rand(19) + 1
  end

  def ask
    "What does #{self.first_num} plus #{self.second_num} equal?"
  end

  def check_result(result)
    result == self.first_num + self.second_num
  end

end