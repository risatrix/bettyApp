class ClientsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :get_current_user

  def get_current_user
    @user = current_user
  end
  # GET /clients
  # GET /clients.json
  def index
    @clients = @user.clients.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clients }
    end
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
    @client = @user.clients.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @client }
    end
  end

  # GET /clients/new
  # GET /clients/new.json
  def new
    @client = @user.clients.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @client }
    end
  end

  # GET /clients/1/edit
  def edit
    @client = @user.clients.find(params[:id])
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = @user.clients.new(params[:client])
    respond_to do |format|
      if @client.save
        format.html { redirect_to user_clients_url, notice: 'Client was successfully created.' }
        format.json { render json: @client, status: :created, location: @client }
      else
        format.html { render action: "new" }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clients/1
  # PUT /clients/1.json
  def update
    @client = @user.clients.find(params[:id])

    respond_to do |format|
      if @client.update_attributes(params[:client])
        format.html { redirect_to user_clients_url, notice: 'Client was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client = @user.clients.find(params[:id])
    @client.destroy

    respond_to do |format|
      format.html { redirect_to user_clients_url, notice: 'Client removed from list.' }
      format.json { head :no_content }
    end
  end
end
