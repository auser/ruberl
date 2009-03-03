module Ruberl
  class Base
    attr_accessor :host, :port, :recv_timeout
    def initialize(host="localhost", port=7050)
      @host = host
      @port = port
      
      @recv_timeout = 3
    end
    def with_socket(&block)
      begin
        socket = TCPSocket.open(@host, @port)
        out = yield(socket)
        socket.close
        out
      rescue Exception => e
      end
    end
    def with_udp(&block)
      out,sock = nil,nil
      begin
        socket = UDPSocket.open
        out = yield(socket)
      rescue IOError, SystemCallError
      ensure
        socket.close if socket
      end
      out
    end
    def messenger_cast!(cmd)
      with_udp do |sock|
        sock.send(cmd, 0, @host, @port)
        @resp = if select([sock], nil, nil, @recv_timeout)
          sock.recvfrom(65536)
        end
        @resp[0] = @resp[0][4..-1] if @resp
      end
      @resp ? @resp[0] : nil
    end
    def messenger_send!(msg="get_current_load cpu")
      with_socket do |sock|
        sock.send(msg, 0)
        @str = sock.recv(2000)      
      end
      @str
    end
    # def messenger_cast!(msg="force_reconfig")
    #   with_socket do |sock|
    #     sock.send(msg, 0)
    #   end
    # end
  end
end