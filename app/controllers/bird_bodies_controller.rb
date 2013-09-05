class BirdBodiesController < ApplicationController

	# PATCH/PUT /birds/1
  # PATCH/PUT /birds/1.json
  def update
  	@bird_body = BirdBody.find(params[:id])
    respond_to do |format|
      if @bird_body.update(params[:bird_body])
        format.html { redirect_to @bird_body.bird, notice: 'Bird was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bird.errors, status: :unprocessable_entity }
      end
    end
  end


end
