##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "powereasy" do
author "shang <s@suu.cc>" # 2014-07-2
version "0.1.2"
description "PowerEasy [Chinese] - Homepage: http://www.powereasy.net/"

# Examples #
examples %w| http://demo.powereasy.net/ http://www.counsellor.gov.cn/|

# Dorks #
dorks [
'"Powered By PowerEasy"'
]

# Matches #
matches [

  # url exists, i.e. returns HTTP status 200

  {:url=>"/Admin/Login.aspx",:text=>"PowerEasy"},
  {:url=>"js/jquery.peex.js",:text=>"powereasy"},
  {:text=>"/js/jquery.peex.js"},
  {:text=>"/powereasy/"},
]



end