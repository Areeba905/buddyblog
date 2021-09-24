ActiveAdmin.register Post do

  menu:label => "Blog Posts"

  index do
    column :title
    column "Author", :admin_user
    column :category
    column :created_at
    actions
  end

  controller do
    def permitted_params
      params.permit post: [:title, :body, :category_id, :admin_user_id]
    end
  end
  
end
