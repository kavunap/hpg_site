class ServicesController < ApplicationController
  def discount
  end

  def shipping
  end

  def motor_loan
  end

  def products
  end

  def contact
  end
  def services
  end

  def responsive
    @posts = Post.all
  end
end
