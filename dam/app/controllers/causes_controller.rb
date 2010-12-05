class CausesController < ApplicationController
  # GET /causes
  # GET /causes.xml
  def index
    @causes = Cause.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @causes }
    end
  end

  # GET /causes/1
  # GET /causes/1.xml
  def show
    @cause = Cause.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cause }
    end
  end

  # GET /causes/new
  # GET /causes/new.xml
  def new
    @cause = Cause.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cause }
    end
  end

  # GET /causes/1/edit
  def edit
    @cause = Cause.find(params[:id])
  end

  # POST /causes
  # POST /causes.xml
  def create
    @cause = Cause.new(params[:cause])

    respond_to do |format|
      if @cause.save
        format.html { redirect_to(@cause, :notice => 'Cause was successfully created.') }
        format.xml  { render :xml => @cause, :status => :created, :location => @cause }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cause.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /causes/1
  # PUT /causes/1.xml
  def update
    @cause = Cause.find(params[:id])

    respond_to do |format|
      if @cause.update_attributes(params[:cause])
        format.html { redirect_to(@cause, :notice => 'Cause was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cause.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /causes/1
  # DELETE /causes/1.xml
  def destroy
    @cause = Cause.find(params[:id])
    @cause.destroy

    respond_to do |format|
      format.html { redirect_to(causes_url) }
      format.xml  { head :ok }
    end
  end
end
