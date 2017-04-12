class PagesController < ApplicationController
  def index
    @dividas = Divida.where(flag: true)
  end

  def info
  end
end
