module ApplicationHelper

  def breadcrumb()
    PoliceInventory::Application::MODELS.each{|k,v| PoliceInventory::Application::MODELS[k] = 'deactive'}
    if(params[:controller] == 'admin/users')
      PoliceInventory::Application::MODELS['user'] = 'active'
    elsif(params[:controller] == 'admin/dashboard')
      PoliceInventory::Application::MODELS['dashboard'] = 'active'
    elsif(params[:controller] == 'admin/items')
      PoliceInventory::Application::MODELS['item'] = 'active'
    else
      PoliceInventory::Application::MODELS['requisition'] = 'active'
    end
    return PoliceInventory::Application::MODELS
  end

end
