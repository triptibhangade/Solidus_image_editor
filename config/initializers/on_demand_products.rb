Spree::Backend::Config.configure do |config|

  config.class::ON_DEMAND_SETTINGS_TABS ||= [:on_demand_settings, :templates]

  config.menu_items << config.class::MenuItem.new(
                          config.class::ON_DEMAND_SETTINGS_TABS,
                          'file-image-o',
                          condition: -> { can?(:admin, Spree::Template) },
                          partial: 'spree/admin/shared/on_demand_settings_sub_menu',
                          url: :admin_templates_path
                        )

end
