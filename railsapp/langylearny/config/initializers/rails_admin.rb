RailsAdmin.config do |config|

  config.authenticate_with do
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['ADMIN_USER'] &&
      password == ENV['ADMIN_PASSWORD']
    end
  end


  config.model Category do
    edit do
      # For RailsAdmin >= 0.5.0
      field :content, :ck_editor
      field :name
      field :is_grammar_categ
      # For RailsAdmin < 0.5.0
      # field :description do
      #   bootstrap_wysihtml5 true
      # end
    end
  end


  config.model CategoryItem do
    
  end
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
