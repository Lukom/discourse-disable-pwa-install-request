class DisablePwaInstall
  def self.modify_application_hbs
    hbs_path = "#{Rails.root}/app/assets/javascripts/discourse/app/templates/application.hbs"
    hbs_content = File.read(hbs_path)
    if hbs_content.include?('PwaInstallBanner')
      fixed_content = hbs_content.remove(%r{\s*<PwaInstallBanner />})
      File.open(hbs_path, 'w') { |f| f.write(fixed_content) }
    end
  end
end
