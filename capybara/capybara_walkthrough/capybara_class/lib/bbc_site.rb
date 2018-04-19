require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_signpage'

class Bbc_site
 def bbc_homepage
 	BbcHomepage.new
 end
 def bbc_signin
 	Signinpage.new
 end
end