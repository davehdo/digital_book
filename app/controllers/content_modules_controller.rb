class ContentModulesController < ApplicationController
  
  # GET /content_modules
  # GET /content_modules.json
  def index
    # @content_modules = ContentModule.all
    # 
    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render json: @content_modules }
    # end
  end

  # GET /content_modules/1
  # GET /content_modules/1.json
  def show
    @content_module = ContentModule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_module }
    end
  end

  # GET /content_modules/new
  # GET /content_modules/new.json
  def new
    @content_module = ContentModule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_module }
    end
  end

  # GET /content_modules/1/edit
  def edit
    @content_module = ContentModule.find(params[:id])
  end

  # POST /content_modules
  # POST /content_modules.json
  def create
    @content_module = ContentModule.new(params[:content_module])

    respond_to do |format|
      if @content_module.save
        format.html { redirect_to @content_module, notice: 'Content module was successfully created.' }
        format.json { render json: @content_module, status: :created, location: @content_module }
      else
        format.html { render action: "new" }
        format.json { render json: @content_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_modules/1
  # PUT /content_modules/1.json
  def update
    @content_module = ContentModule.find(params[:id])

    respond_to do |format|
      if @content_module.update_attributes(params[:content_module])
        format.html { redirect_to @content_module, notice: 'Content module was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_modules/1
  # DELETE /content_modules/1.json
  def destroy
    @content_module = ContentModule.find(params[:id])
    @content_module.destroy

    respond_to do |format|
      format.html { redirect_to content_modules_url }
      format.json { head :no_content }
    end
  end
end
