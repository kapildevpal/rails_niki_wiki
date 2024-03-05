ActiveAdmin.register Product do
  permit_params :name, :price, :image

  index do
    selectable_column
    id_column
    column :name
    column :price
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :price
      f.input :image, as: :file
    end
    f.actions
  end
end
