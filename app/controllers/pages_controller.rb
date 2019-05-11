class PagesController < ApplicationController
  before_action :authenticate_entreprise!, only: [:recruter]
  before_action :authenticate_candidat!, only: [:candidater]

  def index
  end

  def recruter
  end

  def candidater
  end

end
