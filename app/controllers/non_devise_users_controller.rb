class NonDeviseUsersController < ApplicationController
  before_action :set_non_devise_user, only: %i[ show edit update destroy ]

  # GET /non_devise_users or /non_devise_users.json
  def index
    @non_devise_users = NonDeviseUser.all
  end

  # GET /non_devise_users/1 or /non_devise_users/1.json
  def show
  end

  # GET /non_devise_users/new
  def new
    @non_devise_user = NonDeviseUser.new
  end

  # GET /non_devise_users/1/edit
  def edit
  end

  # POST /non_devise_users or /non_devise_users.json
  def create
    @non_devise_user = NonDeviseUser.new(non_devise_user_params)

    respond_to do |format|
      if @non_devise_user.save
        format.html { redirect_to @non_devise_user, notice: "Non devise user was successfully created." }
        format.json { render :show, status: :created, location: @non_devise_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @non_devise_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /non_devise_users/1 or /non_devise_users/1.json
  def update
    respond_to do |format|
      if @non_devise_user.update(non_devise_user_params)
        format.html { redirect_to @non_devise_user, notice: "Non devise user was successfully updated." }
        format.json { render :show, status: :ok, location: @non_devise_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @non_devise_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /non_devise_users/1 or /non_devise_users/1.json
  def destroy
    @non_devise_user.destroy
    respond_to do |format|
      format.html { redirect_to non_devise_users_url, notice: "Non devise user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_non_devise_user
      @non_devise_user = NonDeviseUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def non_devise_user_params
      params.require(:non_devise_user).permit(:username, :password)
    end
end
