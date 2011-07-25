module DywNavigation
  class NavBoxesController < ApplicationController
		def move_left
			current_box = NavBox.find(params[:id])
			left_box = current_box.previous_box
			current_position = current_box.position
			left_position = left_box.position
			left_box.update_attributes(:position => 'foo')			
			current_box.update_attributes(:position => left_position)
			left_box.update_attributes(:position => current_position)
  		Rails.cache.clear
			redirect_to root_path
		end

		def move_right
			current_box = NavBox.find(params[:id])
			right_box = current_box.next_box
			current_position = current_box.position
			right_position = right_box.position
			right_box.update_attributes(:position => 'foo')			
			current_box.update_attributes(:position => right_position)
			right_box.update_attributes(:position => current_position)			
  		Rails.cache.clear
			redirect_to root_path
		end
    # GET /nav_boxes
    # GET /nav_boxes.json
    def index
      @nav_boxes = NavBox.find(:all, :order => 'position')
  
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
			#WIP, for route selection!!
			@routes = VanVught::Application.routes.routes
  
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
			last_nav_box = NavBox.find(:all, :order => 'position').last
			if last_nav_box.nil?
				last_position = 0
			else
				last_position = last_nav_box.position.to_i
			end

      @nav_box = NavBox.new(params[:nav_box])
			@nav_box.position = last_position + 1 
  
      respond_to do |format|
        if @nav_box.save
					Rails.cache.clear
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
					Rails.cache.clear
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
  		Rails.cache.clear

      respond_to do |format|
        format.html { redirect_to nav_boxes_url }
        format.json { head :ok }
      end
    end
  end
end
