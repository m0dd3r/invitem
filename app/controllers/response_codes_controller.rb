class ResponseCodesController < ApplicationController
  # GET /response_codes
  # GET /response_codes.json
  def index
    @response_codes = ResponseCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @response_codes }
    end
  end

  # GET /response_codes/1
  # GET /response_codes/1.json
  def show
    @response_code = ResponseCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @response_code }
    end
  end

  # GET /response_codes/new
  # GET /response_codes/new.json
  def new
    @response_code = ResponseCode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @response_code }
    end
  end

  # GET /response_codes/1/edit
  def edit
    @response_code = ResponseCode.find(params[:id])
  end

  # POST /response_codes
  # POST /response_codes.json
  def create
    @response_code = ResponseCode.new(params[:response_code])

    respond_to do |format|
      if @response_code.save
        format.html { redirect_to @response_code, notice: 'Response code was successfully created.' }
        format.json { render json: @response_code, status: :created, location: @response_code }
      else
        format.html { render action: "new" }
        format.json { render json: @response_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /response_codes/1
  # PUT /response_codes/1.json
  def update
    @response_code = ResponseCode.find(params[:id])

    respond_to do |format|
      if @response_code.update_attributes(params[:response_code])
        format.html { redirect_to @response_code, notice: 'Response code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @response_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /response_codes/1
  # DELETE /response_codes/1.json
  def destroy
    @response_code = ResponseCode.find(params[:id])
    @response_code.destroy

    respond_to do |format|
      format.html { redirect_to response_codes_url }
      format.json { head :no_content }
    end
  end
end
