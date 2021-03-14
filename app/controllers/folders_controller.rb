class FoldersController < ApplicationController
  before_action :authenticate_user!

  def show
    @folder = Folder.find(params[:id])
  end

  def create
    folder = current_user.folders.new(folder_params)
    if folder.save
      redirect_to folder_path(folder)
    else
      redirect_to root_path
    end
  end

  private

  def folder_params
    params.require(:folder).permit(:name)
  end

end