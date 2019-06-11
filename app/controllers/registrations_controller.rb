class RegistrationsController < Devise::RegistrationsController

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def update
    @user = current_user
    case set_step
    when "step1"
      params[:user][:category_ids].shift(1)
      categories = params[:user][:category_ids]
      categories.each do |category|
        UserCategory.create(user: @user, category: Category.find(category))
      end
      @user.save
      redirect_to step2_path
    when "step2"
      params[:user][:location_ids].shift(1)
      locations = params[:user][:location_ids]
      locations.each do |location|
        UserLocation.create(user: @user, location: Location.find(location))
      end
      @user.save
      redirect_to step3_path
    when "step3"
      params[:user][:company_type_ids].shift(1)
      companies = params[:user][:company_type_ids]
      companies.each do |company|
        UserCompanyType.create(user: @user, company_type: CompanyType.find(company))
      end
      @user.save
      redirect_to step4_path
    when "step4"
      @user.maximum_investment = params[:user][:maximum_investment]
      @user.save
      redirect_to projects_path
    end
  end

  private

  def set_step
    params[:user][:step]
  end
end
