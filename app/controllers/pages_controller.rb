class PagesController < ApplicationController
before_action :authenticate_user!, :check_signed_in, only: [ :acheter_des_cryptomonaies]

  def home
  end

  def qui_sommes_nous
  end

  def acheter_des_cryptomonaies
  end

  def contact

  end

end
