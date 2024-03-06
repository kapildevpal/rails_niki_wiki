ActiveAdmin.register Product do
  permit_params :name, :price, images: []

  index do
    selectable_column
    id_column
    column :name
    column :price
    column "Images" do |product|
      product.images.each do |image|
        span do
          image_tag url_for(image), width: 100
        end
      end
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :price
      f.input :images, as: :file, input_html: { multiple: true }
      f.input :images, as: :file, input_html: { multiple: true }

    end
    f.actions
  end



  show do
    attributes_table do
      row :id
      row :name
      row :price
      row "Images" do |product|
        product.images.each do |image|
          span do
            image_tag url_for(image), width: 100
          end
        end
      end
    end
  end

  # Customize the filter options
  filter :name
  filter :price

  # Define custom filters for images
  filter :images
end
