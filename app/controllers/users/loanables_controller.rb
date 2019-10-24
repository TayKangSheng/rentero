class Users::LoanablesController < ApplicationController
  before_action :authenticate_user
  before_action :set_loanable, only: [:show, :edit, :update, :destroy]

  # GET /loanables
  # GET /loanables.json
  def index
    @loanables = current_user.loanables.all
  end

  # GET /loanables/1
  # GET /loanables/1.json
  def show
  end

  # GET /loanables/new
  def new
    @loanable = current_user.loanables.new
  end

  # GET /loanables/1/edit
  def edit
  end

  # POST /loanables
  # POST /loanables.json
  def create
    @loanable = current_user.loanables.new(loanable_params)

    respond_to do |format|
      if @loanable.save
        format.html { redirect_to users_loanable_path(@loanable), notice: 'Loanable was successfully created.' }
        format.json { render :show, status: :created, location: @loanable }
      else
        format.html { render :new }
        format.json { render json: @loanable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loanables/1
  # PATCH/PUT /loanables/1.json
  def update
    respond_to do |format|
      if @loanable.update(loanable_params)
        format.html { redirect_to @loanable, notice: 'Loanable was successfully updated.' }
        format.json { render :show, status: :ok, location: @loanable }
      else
        format.html { render :edit }
        format.json { render json: @loanable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loanables/1
  # DELETE /loanables/1.json
  def destroy
    @loanable.destroy
    respond_to do |format|
      format.html { redirect_to users_loanables_url, notice: 'Loanable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loanable
      @loanable = current_user.loanables.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loanable_params
      params.require(:loanable).permit(:title, :description, :location, :contact, :end)
    end
end
