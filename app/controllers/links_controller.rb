class LinksController < ApplicationController
  def new
  	@link = Link.new
  end

  def index
  	@links = Link.all
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
end
