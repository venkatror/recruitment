ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end
section "Newly Updated" do
    table_for Applicant.order("updated_at desc").limit(5) do
        column :name do |applicant|
            link_to applicant.name, [:admin, applicant]
        end    
        column :role
        column "Schedule Of Interview",:scheduleofinterview
        column "Interviewers",:interviewers
        column "CV" do |applicant|
      link_to 'My CV',applicant.cv.url 
    end
        column "Created At",:created_at
    end
    strong{ link_to "View All Applicants",admin_applicants_path}
end
section "Newly Added" do
    table_for Applicant.order("created_at desc").limit(5) do
        column :name do |applicant|
            link_to applicant.name, [:admin, applicant]
        end    
        column :role
        column "Schedule Of Interview",:scheduleofinterview
        column "Interviewers",:interviewers
        column "CV" do |applicant|
      link_to 'My CV',applicant.cv.url 
    end
        column "Created At",:created_at
    end
    strong{ link_to "View All Applicants",admin_applicants_path}
end
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
