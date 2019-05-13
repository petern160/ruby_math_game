
class Questions
  attr_accessor :answer, :output

  def initialize
    @ran_num1 = rand(1..20)
    @ran_num2 = rand(1..20)
    @answer = @ran_num1 + @ran_num2
    @output = "What does #{@ran_num1 } + #{@ran_num2} equals to?"
  end
end

