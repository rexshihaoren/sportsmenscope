# Be sure to restart your server when you modify this file.

# Sportsmenscope::Application.config.session_store :cookie_store, key: '_sportsmenscope_session'
Sportsmenscope::Application.config.session_store :active_record_store
ActiveRecord::SessionStore::Session.attr_accessible :data, :session_id