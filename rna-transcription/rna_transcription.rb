module Complement

VERSION = 3

  @dna_rna_map = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(dna_sequence)
    rna_sequence = []
    dna_sequence.split('').each do |nucleotide|
      if !@dna_rna_map.key? nucleotide
        raise ArgumentError
      end
      rna_sequence.push(@dna_rna_map[nucleotide])
    end
    rna_sequence.join('')
  end

end
