require "digest"

module EIP55
  class Util
    class << self
      def encode_hex string
        string.unpack1("H*")
      end

      def keccak256 buffer
        Digest::SHA3.new(256).digest(buffer)
      end

      def prefix address
        address[0, 2] == "0x" ? address : "0x#{address}"
      end

      def unprefix address
        address[0, 2] == "0x" ? address[2..-1] : address
      end
    end
  end
end
