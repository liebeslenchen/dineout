class DinersController < ApplicationController
  load_and_authorize_resource 
  # GET /diners
  # GET /diners.json
  def index
    @diners = Diner.order('name ASC').all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @diners }
    end
  end

  # GET /diners/1
  # GET /diners/1.json
  def show
    @diner = Diner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @diner }
    end
  end

  # GET /diners/new
  # GET /diners/new.json
  def new
    @diner = Diner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @diner }
    end
  end

  # GET /diners/1/edit
  def edit
    @diner = Diner.find(params[:id])
  end

  # POST /diners
  # POST /diners.json
  def create
    @diner = Diner.new(params[:diner])

    respond_to do |format|
      if @diner.save
        format.html { redirect_to @diner, notice: 'Diner was successfully created.' }
        format.json { render json: @diner, status: :created, location: @diner }
      else
        format.html { render action: "new" }
        format.json { render json: @diner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /diners/1
  # PUT /diners/1.json
  def update
    params[:diner][:mealtype_ids] ||=[]
    @diner = Diner.find(params[:id])

    respond_to do |format|
      if @diner.update_attributes(params[:diner])
        format.html { redirect_to @diner, notice: 'Diner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @diner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diners/1
  # DELETE /diners/1.json
  def destroy
    @diner = Diner.find(params[:id])
    @diner.destroy

    respond_to do |format|
      format.html { redirect_to diners_url }
      format.json { head :no_content }
    end
  end
end
