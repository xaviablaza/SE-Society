ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :first_name, :last_name, :username

  index do
    selectable_column
    id_column

    column :email
    column :first_name
    column :last_name
    column :username
    column :created_at
    column :updated_at

    actions
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :username
      f.input :password
      f.input :password_confirmation
    end

    f.actions
  end
end
