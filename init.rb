require 'redmine'

Redmine::Plugin.register :redmine_home_page_redirector do
  name 'Home Page Redirector'
  author 'Jean-Marc Lagac'
  description 'When a user is signed-in. The Home link sends to My Page. Gdy użytkownik jest zalogowany. Link strona główna kieruje do strony projekty . '
  version '2.0.0'
  url 'https://github.com/jmlagace/redmine_home_page_redirector'
  author_url 'http://m2i3.com'
  delete_menu_item :top_menu, :my_page

  requires_redmine :version => '5.0.0'..'5.1.99' 
end

require File.dirname(__FILE__) + '/lib/home_page_redirector.rb'
