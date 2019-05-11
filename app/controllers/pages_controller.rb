class PagesController < ApplicationController
  before_action :authenticate_entreprise!, only: [:recruter]

  def index
  end

  def recruter
  end

end
