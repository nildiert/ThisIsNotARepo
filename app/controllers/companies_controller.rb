class CompaniesController < ApplicationController
  before_action :authenticate_user!
  def index
    @companies = Company.all
  end

  def show
    @company = Company.where(id: params[:id]).first
  end

  def new
    @company = Company.new
  end
  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to @company, notice: 'Company was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @company = Company.where(id: params[:id]).first
  end
  def update
    @company = Company.where(id: params[:id]).first
    if @company.update(company_params)
      redirect_to @company, notice: 'Company was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @company = Company.where(id: params[:id]).first
    @company.destroy

    redirect_to "/companies", status: :see_other, notice: 'Company was successfully destroyed.'
  end


  private

  def company_params
    params.require(:company).permit(:name, :subdomain)
  end
end
