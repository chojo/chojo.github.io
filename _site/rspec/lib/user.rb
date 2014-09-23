
class User 
  attr_accessor :name, :occupation

  def greeting
    case @occupation
    when 'Astronaut'
      "Ola #{@name}! When do you visiting ISS again?"
    when 'Engineer'
      "Bonjour #{@name}! What are you building next?"
    else
      "Hey #{@name}! What are you gonna read next?"
    end
  end
end
