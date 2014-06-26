class SerachWordsController < ApplicationController
  # GET /serach_words
  # GET /serach_words.json
  def index
    @serach_words = SerachWord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @serach_words }
    end
  end

  # GET /serach_words/1
  # GET /serach_words/1.json
  def show
    @serach_word = SerachWord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @serach_word }
    end
  end

  # GET /serach_words/new
  # GET /serach_words/new.json
  def new
    @serach_word = SerachWord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @serach_word }
    end
  end

  # GET /serach_words/1/edit
  def edit
    @serach_word = SerachWord.find(params[:id])
  end

  # POST /serach_words
  # POST /serach_words.json
  def create
    @serach_word = SerachWord.new(params[:serach_word])

    respond_to do |format|
      if @serach_word.save
        format.html { redirect_to @serach_word, notice: 'Serach word was successfully created.' }
        format.json { render json: @serach_word, status: :created, location: @serach_word }
      else
        format.html { render action: "new" }
        format.json { render json: @serach_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /serach_words/1
  # PUT /serach_words/1.json
  def update
    @serach_word = SerachWord.find(params[:id])

    respond_to do |format|
      if @serach_word.update_attributes(params[:serach_word])
        format.html { redirect_to @serach_word, notice: 'Serach word was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @serach_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serach_words/1
  # DELETE /serach_words/1.json
  def destroy
    @serach_word = SerachWord.find(params[:id])
    @serach_word.destroy

    respond_to do |format|
      format.html { redirect_to serach_words_url }
      format.json { head :no_content }
    end
  end
end
