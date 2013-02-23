ActiveAdmin.register User do

  form do |f|
    f.inputs "Details" do
      f.input :username
      f.input :email
      f.input :roles
    end
    f.buttons 
  end

  index do
    column :id      
    column :username
    column :email   
    default_actions
  end

end
