ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" 

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
       column do
         panel "Info" do
           para "Willkommen zu ActiveAdmin!"
           para "Hier kannst du Dinertypes, Mealtypes und User verwalten."   
         end
       end
     end
  end # content
end
