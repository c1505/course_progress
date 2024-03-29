class SubSectionsController < ApplicationController
  before_action :set_sub_section, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: "dhh", password: (Rails.application.secrets.basic_auth), except: [:index, :show]

  # GET /sub_sections
  # GET /sub_sections.json
  def index
    @sub_sections = SubSection.all
  end

  # GET /sub_sections/1
  # GET /sub_sections/1.json
  def show
  end

  # GET /sub_sections/new
  def new
    @sub_section = SubSection.new
  end

  # GET /sub_sections/1/edit
  def edit
  end

  # POST /sub_sections
  # POST /sub_sections.json
  def create
    @sub_section = SubSection.new(sub_section_params)

    respond_to do |format|
      if @sub_section.save
        format.html { redirect_to @sub_section, notice: 'Sub section was successfully created.' }
        format.json { render :show, status: :created, location: @sub_section }
      else
        format.html { render :new }
        format.json { render json: @sub_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_sections/1
  # PATCH/PUT /sub_sections/1.json
  def update
    respond_to do |format|
      if @sub_section.update(sub_section_params)
        format.html { redirect_to @sub_section, notice: 'Sub section was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_section }
      else
        format.html { render :edit }
        format.json { render json: @sub_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_sections/1
  # DELETE /sub_sections/1.json
  def destroy
    @sub_section.destroy
    respond_to do |format|
      format.html { redirect_to sub_sections_url, notice: 'Sub section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_section
      @sub_section = SubSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_section_params
      params.require(:sub_section).permit(:time_estimate, :time_completed, :complete, :title, :section_id)
    end
end
