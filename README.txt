= ruberl

http://poolpartyrb.com

== DESCRIPTION:

A quick and easy way you can easily talk to your gen_tcp/gen_server erlang server

== SYNOPSIS:

  require 'ruberl'
  
  class TestClass < Ruberl::Base
  end
  
  @tc = TestClass.new
  @tc.host = "host"
  @tc.port = "8091"
  @tc.messenger_send!("message with args")
  
  OR
  
  TestClass.new("host", "8091").messenger_send!("message with args")

== INSTALL:

  gem install auser-ruberl

== LICENSE:

(The MIT License)

Copyright (c) 2008 Ari Lerner

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.