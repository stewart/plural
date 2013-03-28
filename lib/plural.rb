require "plural/version"

module Plural
  def self.rules
    @rules ||= [
      [/(z)ombies$/i, "\\1ombies"],
      [/(z)ombie$/i, "\\1ombies"],
      [/k(?i)ine$/, "kine"],
      [/K(?i)ine$/, "Kine"],
      [/c(?i)ow$/, "kine"],
      [/C(?i)ow$/, "Kine"],
      [/(m)oves$/i, "\\1oves"],
      [/(m)ove$/i, "\\1oves"],
      [/(s)exes$/i, "\\1exes"],
      [/(s)ex$/i, "\\1exes"],
      [/(c)hildren$/i, "\\1hildren"],
      [/(c)hild$/i, "\\1hildren"],
      [/(m)en$/i, "\\1en"],
      [/(m)an$/i, "\\1en"],
      [/(p)eople$/i, "\\1eople"],
      [/(p)erson$/i, "\\1eople"],
      [/(quiz)$/i, "\\1zes"],
      [/^(oxen)$/i, "\\1"],
      [/^(ox)$/i, "\\1en"],
      [/^(m|l)ice$/i, "\\1ice"],
      [/^(m|l)ouse$/i, "\\1ice"],
      [/(matr|vert|ind)(?:ix|ex)$/i, "\\1ices"],
      [/(x|ch|ss|sh)$/i, "\\1es"],
      [/([^aeiouy]|qu)y$/i, "\\1ies"],
      [/(hive)$/i, "\\1s"],
      [/(?:([^f])fe|([lr])f)$/i, "\\1\\2ves"],
      [/sis$/i, "ses"],
      [/([ti])a$/i, "\\1a"],
      [/([ti])um$/i, "\\1a"],
      [/(buffal|tomat)o$/i, "\\1oes"],
      [/(bu)s$/i, "\\1ses"],
      [/(alias|status)$/i, "\\1es"],
      [/(octop|vir)i$/i, "\\1i"],
      [/(octop|vir)us$/i, "\\1i"],
      [/^(ax|test)is$/i, "\\1es"],
      [/s$/i, "s"],
      [/$/, "s"]
    ]
  end

  def self.uncountables
    @uncountables ||= %w(equipment information rice money
                         species series fish sheep jeans police)
  end
end

class String
  def plural
    result = self.dup

    if self.empty? || Plural.uncountables.any? { |i| result =~ /\b#{i}\Z/i }
      result
    else
      Plural.rules.each { |(rule, replacement)| break if result.gsub!(rule, replacement) }
      result
    end
  end
end
