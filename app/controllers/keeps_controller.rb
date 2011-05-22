class KeepsController < ApplicationController
  # GET /keeps
  # GET /keeps.xml
  def index
    @keeps = Keep.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @keeps }
    end
  end

  # GET /keeps/1
  # GET /keeps/1.xml
  def show
    @keep = Keep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @keep }
    end
  end

  # GET /keeps/new
  # GET /keeps/new.xml
  def new
    @keep = Keep.new
    col_select
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @keep }
    end
  end

  # GET /keeps/1/edit
  def edit
    @keep = Keep.find(params[:id])
    col_select
  end

  # POST /keeps
  # POST /keeps.xml
  def create
    @keep = Keep.new(params[:keep])

    respond_to do |format|
      if @keep.save
        format.html { redirect_to(@keep, :notice => 'Keep was successfully created.') }
        format.xml  { render :xml => @keep, :status => :created, :location => @keep }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @keep.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /keeps/1
  # PUT /keeps/1.xml
  def update
    @keep = Keep.find(params[:id])

    respond_to do |format|
      if @keep.update_attributes(params[:keep])
        format.html { redirect_to(@keep, :notice => 'Keep was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @keep.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /keeps/1
  # DELETE /keeps/1.xml
  def destroy
    @keep = Keep.find(params[:id])
    @keep.destroy

    respond_to do |format|
      format.html { redirect_to(keeps_url) }
      format.xml  { head :ok }
    end
  end

  private
  def col_select
    @boards = Board.all
    @users = User.all
  end
end
