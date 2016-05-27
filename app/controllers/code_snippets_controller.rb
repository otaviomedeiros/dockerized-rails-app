class CodeSnippetsController < ApplicationController
  before_action :set_code_snippet, only: [:show, :edit, :update, :destroy]

  def index
    @code_snippets = CodeSnippet.all
  end

  def show
  end

  def new
    @code_snippet = CodeSnippet.new
  end

  def edit
  end

  def create
    @code_snippet = CodeSnippet.new(code_snippet_params)

    respond_to do |format|
      if @code_snippet.save
        CodeHighlighterWorker.perform_async(@code_snippet.id)
        format.html { redirect_to @code_snippet, notice: 'Code snippet was successfully created.' }
        format.json { render :show, status: :created, location: @code_snippet }
      else
        format.html { render :new }
        format.json { render json: @code_snippet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @code_snippet.update(code_snippet_params)
        CodeHighlighterWorker.perform_async(@code_snippet.id)
        format.html { redirect_to @code_snippet, notice: 'Code snippet was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_snippet }
      else
        format.html { render :edit }
        format.json { render json: @code_snippet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @code_snippet.destroy
    respond_to do |format|
      format.html { redirect_to code_snippets_url, notice: 'Code snippet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_code_snippet
      @code_snippet = CodeSnippet.find(params[:id])
    end

    def code_snippet_params
      params.require(:code_snippet).permit(:description, :code)
    end
end
