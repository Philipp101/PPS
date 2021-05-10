class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      flash.notice = "Document added"
      redirect_to document_path
    else
      render :new
    end
  end

  def destroy
    document = Document.find(params[:id])
    document.destroy
    redirect_to document_path
  end

  private

  def document_params
    params.require(:document).permit(:title)
  end
end
