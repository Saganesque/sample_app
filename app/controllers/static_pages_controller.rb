class StaticPagesController < ApplicationController
=begin
  StaticPagesController is a Ruby class, but because it inherits from ApplicationController the behavior of its methods is specific to Rails: when visiting the URL /static_pages/home, Rails looks in the Static Pages controller and executes the code in the home action, and then renders the view
=end



  def home
  end

  def help
  end

  def about

  end
end
