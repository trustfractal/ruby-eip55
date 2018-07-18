module EIP55
  class InvalidAddressError < StandardError
  end

  class Address
    def initialize address
      @address = Util.prefix(address)
    end

    def valid?
      if !matches_any_format?
        false
      elsif not_checksummed?
        true
      else
        checksum_matches?
      end
    end

    def checksummed
      raise InvalidAddressError.new("Invalid address: #{address}") unless matches_any_format?

      cased = unprefixed.chars.zip(checksum.chars).map do |char, check|
        check.match?(/[0-7]/) ? char.downcase : char.upcase
      end

      Util.prefix(cased.join)
    end

    private

    attr_reader :address

    def checksum_matches?
      address == checksummed
    end

    def matches_any_format?
      address.match(/\A(?:0[xX])[a-fA-F0-9]{40}\z/)
    end

    def not_checksummed?
      all_uppercase? || all_lowercase?
    end

    def all_uppercase?
      address.match(/(?:0[xX])[A-F0-9]{40}/)
    end

    def all_lowercase?
      address.match(/(?:0[xX])[a-f0-9]{40}/)
    end

    def unprefixed
      Util.unprefix(address)
    end

    def checksum
      Util.encode_hex(Util.keccak256(unprefixed.downcase))
    end
  end
end
