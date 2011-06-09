module DywNavigation
  class NavBoxesController < ApplicationController
    # GET /nav_boxes
    # GET /nav_boxes.json
    def index
      @nav_boxes = NavBox.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @nav_boxes }
      end
    end
  
    # GET /nav_boxes/1
    # GET /nav_boxes/1.json
    def show
      @nav_box = NavBox.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @nav_box }
      end
    end
  
    # GET /nav_boxes/new
    # GET /nav_boxes/new.json
    def new
      @nav_box = NavBox.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @nav_box }
      end
    end
  
    # GET /nav_boxes/1/edit
    def edit
      @nav_box = NavBox.find(params[:id])
    end
  
    # POST /nav_boxes
    # POST /nav_boxes.json
    def create
      @nav_box = NavBox.new(params[:nav_box])
  
      respond_to do |format|
        if @nav_box.save
          format.html { redirect_to @nav_box, notice: 'Nav box was successfully created.' }
          format.json { render json: @nav_box, status: :created, location: @nav_box }
        else
          format.html { render action: "new" }
          format.json { render json: @nav_box.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /nav_boxes/1
    # PUT /nav_boxes/1.json
    def update
      @nav_box = NavBox.find(params[:id])
  
      respond_to do |format|
        if @nav_box.update_attributes(params[:nav_box])
          format.html { redirect_to @nav_box, notice: 'Nav box was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @nav_box.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /nav_boxes/1
    # DELETE /nav_boxes/1.json
    def destroy
      @nav_box = NavBox.find(params[:id])
      @nav_box.destroy
  
      respond_to do |format|
        format.html { redirect_to nav_boxes_url }
        format.json { head :ok }
      end
    end
  end
end