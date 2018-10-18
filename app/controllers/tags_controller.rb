class TagsController < ApplicationController
  before_action :load_tag, only: [:show, :destroy]
  def index
    @tags = Tag.all
  end

  def show; end

  def destroy
    @tag.destroy

    flash.notice = 'Tag Deleted!'

    redirect_to tags_path
  end

  private

  def load_tag
    @tag = Tag.find(params[:id])
  end
end
