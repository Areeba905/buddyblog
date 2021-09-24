ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    panel "Recent Posts" do
      table_for Post.order("id desc").limit(5) do
        column :id
        column :"Post Title",:title do |p|
          link_to p.title,[:admin,p]
        end
        column :category, :sortable => :category
        column :created_at
        column  :"Author", :admin_user
      end
      span (link_to "Show all Posts", [:admin,:posts])
    end

    panel "Categories" do
      table_for Category.order("id desc").limit(5) do
        column :id
        column :"Category Title",:name 
        column :created_at
      end
      span (link_to "Show all Categories", [:admin,:categories])
    end
  end # content

end
