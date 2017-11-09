ActiveAdmin.register PageInfo do
  permit_params :about_us, :contact_us, :contact_address, :contact_phone,
                :contact_email, :hours

end
