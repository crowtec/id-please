module IdPlease
  module ES
    class Validator
      DNI_alphabet = 'TRWAGMYFPDXBNJZSQVHLCKE'

      REGEX = {
        dni: /^(\d{8})([#{DNI_alphabet}])$/,
        nie: /^([XYZ])(\d{7})([#{DNI_alphabet}])$/,
        cif: /^([ABCDEFGHJKLMNPQRSUVW])(\d{7})(\d)$/
      }

      def check id
        REGEX.each do |k, v|
          return send("validate_#{k}", id.upcase) unless id.upcase.match(v).nil?
        end

        raise "Invalid ID"
      end

      def validate_dni id
        DNI_alphabet[id[0..7].to_i % 23] == id[8]
      end

      def validate_nie id
        validate_dni("#{'XYZ'.index(id[0])}#{id[1..8]}")
      end

      def validate_cif id #TODO
        raise "TODO"
      end

    end
  end
end
