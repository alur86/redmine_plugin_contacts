Redmine::Plugin.register :contacts do
  name 'Contacts plugin'
  author 'Alexander Urov'
  description 'This is  Contact plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/alur86'
  author_url 'http://www.aurov.com/'
  menu :application_menu, :contacts, { :controller => 'contacts', :action => 'index' }, :caption => 'Contacts'
end
