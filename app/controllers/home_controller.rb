class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @folders = current_user.folders
    @folder = Folder.new
  end

end