class Complement

  def self.of_dna(genes)
    each_gene = genes.split("")
    each_gene.inject("") { |sum, gene| sum += find_complement(gene) }
  end

  def self.of_rna(genes)
    each_gene = genes.split("")
    each_gene.inject("") { |sum, gene| sum += find_complement(gene, false) }
  end

  def self.find_complement(gene, dna=true)
    case gene
    when "G" then "C"
    when "C" then "G"
    when "A" then dna ? "U" : "T"
    when "U", "T" then "A"
    end
  end
  
end
