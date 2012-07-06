class LinksController < ApplicationController
  def new
  	@link = Link.new
  end

  def index
  	@links = Link.all
  end

  def show
  	@link = Link.find(params[:id])
  end

  def create
  	@link = Link.new(params[:link])
  	if @link.save
  		redirect_to links_path, :notice => "Link added!"
  	else
  		render "new"
  	end
  end

  def edit
  	@link = Link.find(params[:id])
  end

  def update
  	@link = Link.find(params[:id])
  	@link.update_attributes(params[:link])

  	redirect_to link_path, :notice => "Link has been updated!"
  end

  def destroy
  	@link = Link.find(params[:id])
  	@link.destroy
  	redirect_to links_path, :notice => "Link Deleted."
  end
end
