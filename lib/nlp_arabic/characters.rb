module NlpArabic

# Stop List
  STOP_LIST = ["\u0648","\u064a\u0643\u0648\u0646","\u0644\u064A\u0633","\u0648\u0644\u064a\u0633","\u0648\u0643\u0627\u0646","\u0643\u0630\u0644\u0643","\u0627\u0644\u062a\u064a","\u0648\u0628\u064a\u0646",
              "\u0639\u0644\u064a\u0647\u0627","\u0639\u0644\u064A","\u0645\u0633\u0627\u0621","\u0627\u0644\u0630\u064a","\u0648\u0643\u0627\u0646\u062a","\u0644\u0643\u0646","\u0648\u0644\u0643\u0646","\u0648\u0627\u0644\u062a\u064a",
              "\u062a\u0643\u0648\u0646","\u0627\u0644\u064a\u0648\u0645","\u0627\u0644\u0644\u0630\u064a\u0646","\u0639\u0644\u064a\u0647","\u0643\u0627\u0646\u062a",
              "\u0644\u0630\u0644\u0643","\u0623\u0645\u0627\u0645","\u0647\u0646\u0627","\u0647\u0646\u0627\u0643","\u0645\u0646\u0647\u0627","\u0645\u0627\u0632\u0627\u0644","\u0644\u0627\u0632\u0627\u0644",
              "\u0644\u0627\u064a\u0632\u0627\u0644","\u0645\u0627\u064a\u0632\u0627\u0644","\u0627\u0635\u0628\u062d","\u0623\u0635\u0628\u062d","\u0623\u0645\u0633\u0649",
              "\u0627\u0645\u0633\u0649","\u0623\u0636\u062d\u0649","\u0627\u0636\u062d\u0649","\u0645\u0627\u0628\u0631\u062d","\u0645\u0627\u0641\u062a\u0626","\u0645\u0627\u0627\u0646\u0641\u0643",
              "\u0644\u0627\u0633\u064a\u0645\u0627","\u0648\u0644\u0627\u064a\u0632\u0627\u0644","\u0627\u0644\u062d\u0627\u0644\u064a","\u0627\u0644\u064a\u0647\u0627","\u0627\u0644\u0630\u064a\u0646","\u0641\u0627\u0646\u0647",
              "\u0648\u0627\u0644\u0630\u064a","\u0648\u0647\u0630\u0627","\u0644\u0647\u0630\u0627","\u0641\u0643\u0627\u0646","\u0633\u062a\u0643\u0648\u0646","\u0627\u0644\u064a\u0647",
              "\u064a\u0645\u0643\u0646","\u0628\u0647\u0630\u0627","\u0627\u0644\u0630\u0649","\u0641\u0649","\u0641\u064a","\u0643\u0644","\u0644\u0645","\u0644\u0646","\u0644\u0647","\u0645\u0646","\u0647\u0648",
              "\u0643\u0645\u0627","\u0644\u0647\u0627","\u0645\u0646\u0630","\u0642\u062F","\u0648\u0642\u062F","\u0648\u0644\u0627","\u0648\u0642\u0627\u0644","\u0648\u0642\u0627\u0644\u062A",
              "\u0644\u0644\u0627\u0645\u0645","\u0641\u064A\u0647","\u0643\u0644\u0645","\u0648\u0641\u064A","\u0648\u0642\u0641","\u0648\u0644\u0645","\u0648\u0645\u0646","\u0648\u0647\u0648","\u0648\u0647\u064A",
              "\u062D\u064A\u062B","\u0627\u0643\u062F","\u0627\u0644\u0627","\u0627\u0645\u0627","\u0627\u0645\u0633","\u0627\u0644\u0633\u0627\u0628\u0642","\u0627\u0644\u062A\u0649","\u0627\u0643\u062B\u0631",
              "\u0627\u064A\u0627\u0631","\u0627\u064A\u0636\u0627","\u0627\u0644\u0630\u0627\u062A\u064A","\u0627\u0644\u0627\u062E\u064A\u0631\u0629","\u0627\u0644\u0627\u0646","\u0627\u0645\u0627\u0645","\u0627\u064A\u0627\u0645", 
              "\u062E\u0644\u0627\u0644","\u062D\u0648\u0627\u0644\u0649","\u0630\u0644\u0643","\u062F\u0648\u0646","\u062D\u0648\u0644","\u062D\u064A\u0646","\u0627\u0644\u0641","\u0627\u0644\u0649","\u0648\u062A\u0645",
              "\u0627\u0646\u0647","\u0627\u0648\u0644","\u0636\u0645\u0646","\u0627\u0646\u0647\u0627","\u062C\u0645\u064A\u0639","\u0627\u0644\u0645\u0627\u0636\u064A","\u0627\u0644\u0648\u0642\u062A",
              "\u0627\u0644\u0645\u0642\u0628\u0644","\u0644\u0627","\u0645\u0627","\u0645\u0639","\u0647\u0630\u0627","\u0648\u0627\u062D\u062F","\u0641\u0627\u0646","\u0642\u0627\u0644","\u0643\u0627\u0646",
              "\u0644\u062F\u0649","\u0646\u062D\u0648","\u0647\u0630\u0647","\u0648\u0627\u0646","\u0648\u0627\u0643\u062F","\u0639\u0634\u0631","\u0639\u062F\u062F","\u0639\u062F\u0629","\u0639\u0634\u0631\u0629","\u0639\u062F\u0645", 
              "\u0639\u0627\u0645","\u0639\u0627\u0645\u0627","\u0639\u0646","\u0639\u0646\u062F","\u0639\u0646\u062F\u0645\u0627","\u0639\u0644\u0649","\u0633\u0646\u0629","\u0633\u0646\u0648\u0627\u062A","\u062A\u0645","\u0636\u062F",
              "\u0628\u0639\u062F","\u0628\u0639\u0636","\u0627\u0639\u0627\u062F\u0629","\u0627\u0639\u0644\u0646\u062A","\u0628\u0633\u0628\u0628","\u062D\u062A\u0649","\u0627\u0630\u0627","\u0627\u062D\u062F","\u0645\u0645\u0646",
              "\u0627\u062B\u0631","\u063A\u062F\u0627","\u0634\u062E\u0635\u0627","\u0635\u0628\u0627\u062D","\u0627\u0637\u0627\u0631","\u0627\u0631\u0628\u0639\u0629","\u0627\u062E\u0631\u0649","\u0628\u0627\u0646", 
              "\u0627\u062C\u0644","\u063A\u064A\u0631","\u0628\u0634\u0643\u0644","\u062D\u0627\u0644\u064A\u0627","\u0628\u0646","\u0628\u0647","\u062B\u0645","\u0627\u0641","\u0627\u0646","\u0627\u0648","\u0627\u064A",
              "\u0628\u0647\u0627","\u0635\u0641\u0631","\u0627\u0644\u062B\u0627\u0646\u064A","\u0627\u0644\u062B\u0627\u0646\u064A\u0629","\u0627\u062F\u0627","\u0627\u0648\u0644\u0627","\u0648\u0644\u0643\u0646\u0647",
              "\u0627\u0644\u0627\u0648\u0644","\u0627\u0644\u0627\u0648\u0644\u0649","\u0628\u064A\u0646","\u0630\u0644\u0643","\u0645\u0645\u0627","\u0631\u063A\u0645","\u0628\u064A","\u0644\u0627\u0646","\u0647\u0644","\u0644\u0648",
              "\u0628\u0645\u0627","\u0627\u0646\u0627","\u062A\u064A","\u0628\u0644\u0627","\u0642\u0628\u0644","\u0627\u0644\u0646","\u064A\u0627\u0647","\u0644\u062F\u064A","\u0628\u0644","\u0644\u0646\u0627","\u0627\u0645",
              "\u0627\u0646\u0646\u0627","\u0644\u0642\u062F","\u062D\u064A\u062A","\u0627\u0630\u0646","\u0627\u0644\u064A","\u0628\u0630\u0644\u0643","\u062E\u0644\u0644","\u062D\u0648\u0644","\u0644\u0643","\u062A\u0645\u0627",
              "\u0644\u0645\u0646","\u0644\u0646\u0647","\u0627\u0644\u0627","\u0627\u064A\u0646","\u0639\u0645\u0627","\u0628\u0643\u0644","\u0648\u0647\u0646\u0627\u0643","\u0646\u0647\u0627",
              "\u0648\u0647\u0630\u0647","\u0648\u0645\u0627","\u0647\u0645\u0627","\u0648\u0647\u0645","\u0644\u0647\u0630\u0647","\u0639\u0646\u0647","\u0645\u062A\u0646","\u0644\u0645\u0627","\u0643\u0645","\u0645\u062A\u0649",
              "\u0647\u0643\u0630\u0627","\u0627\u064A\u0647","\u0644\u0643\u0646\u0647","\u062A\u0645","\u0644\u064A\u0643","\u0648\u0644\u0643","\u0644\u0645\u0630\u0627","\u062C\u062F","\u0641\u0641\u064A","\u062F\u064A","\u0625\u064A",
              "\u0635\u0641\u0631","\u0648\u0627\u062D\u062F","\u0627\u062B\u0646\u0627\u0646","\u062B\u0644\u0627\u062B\u0629","\u0623\u0631\u0628\u0639\u0629","\u062E\u0645\u0633\u0629","\u0633\u062A\u0629","\u0633\u0628\u0639\u0629",
              "\u062B\u0645\u0627\u0646\u064A\u0629","\u062A\u0633\u0639\u0629","\u0639\u0634\u0631\u0629","\u0639\u0634\u0631","\u0623\u062D\u062F",
              "\u0627\u062B\u0646\u0627","\u062B\u0644\u0627\u062B\u0629","\u0623\u0631\u0628\u0639\u0629","\u062E\u0645\u0633\u0629","\u0633\u062A\u0629",
              "\u0633\u0628\u0639\u0629","\u062B\u0645\u0627\u0646\u064A\u0629","\u062A\u0633\u0639\u0629","\u0639\u0634\u0631\u0648\u0646","\u062B\u0644\u0627\u062B\u0648\u0646",
              "\u0623\u0631\u0628\u0639\u0648\u0646","\u062E\u0645\u0633\u0648\u0646","\u0633\u062A\u0648\u0646","\u0633\u0628\u0639\u0648\u0646","\u062B\u0645\u0627\u0646\u0648\u0646","\u062A\u0633\u0639\u0648\u0646","\u0645\u0626\u0629",
              "\u0645\u0627\u0626\u0629","\u0623\u0646\u0627","\u0627\u0646\u062A","\u0627\u0646\u062A\u064E","\u0627\u0646\u062A\u0649","\u0627\u0646\u062A\u0650","\u0647\u0648","\u0647\u064A","\u0646\u062D\u0646","\u0623\u0646\u062A\u0645\u0627",
              "\u0647\u0645\u0627","\u0623\u0646\u062A\u0645","\u0623\u0646\u062A\u0646","\u0647\u0645","\u0647\u0646"].freeze

# Diacritics
  DIACRITICS = "[\u064b\u064c\u064d\u064e\u064f\u0650\u0651\u0652\u0640]"

# Alifs
  # Initial Alifs
  ALIFS  = "[\u0622\u0623\u0625\u0671]"

  # Hamzaas
  HAMZAAS = "[\u0621\u0624\u0626]"

# Affix sets
  # Prefixes of length three
  P3 = ["\u0643\u0627\u0644", "\u0628\u0627\u0644", "\u0648\u0644\u0644", "\u0648\u0627\u0644"]
  
  # Prefixes of length two
  P2 = ["\u0627\u0644", "\u0644\u0644"].freeze
  
  # Prefixes of length one
  P1 = ["\u0644", "\u0628", "\u0641", "\u0633", "\u0648","\u064a", "\u062a", "\u0646", "\u0627"].freeze

  # Suffixes of length three
  S3 = ["\u062a\u0645\u0644", "\u0647\u0645\u0644","\u062a\u0627\u0646", "\u062a\u064a\u0646","\u0643\u0645\u0644"].freeze
  
  # Suffixes of length two
  S2 = ["\u0648\u0646", "\u0627\u062a", "\u0627\u0646","\u064a\u0646", "\u062a\u0646", "\u0643\u0645","\u0647\u0646", "\u0646\u0627", "\u064a\u0627",
        "\u0647\u0627", "\u062a\u0645", "\u0643\u0646","\u0646\u064a", "\u0648\u0627", "\u0645\u0627","\u0647\u0645"].freeze
  
  # Suffixes of length one
  S1 = ["\u0629", "\u0647", "\u064a", "\u0643", "\u062a","\u0627", "\u0646"].freeze

# Patterns and roots
  # Pattern of length four
  PR4 = { 0 => ["\u0645"], 
          1 => ["\u0627"],
          2 => ["\u0627", "\u0648", "\u064A"], 
          3 => ["\u0629"]}.freeze

  # Pattern of length five and length three roots
  PR53 = {0 => ["\u0627", "\u062a"],
          1 => ["\u0627", "\u064a", "\u0648"],
          2 => ["\u0627", "\u062a", "\u0645"],
          3 => ["\u0645", "\u064a", "\u062a"],
          4 => ["\u0645", "\u062a"],
          5 => ["\u0627", "\u0648"],
          6 => ["\u0627", "\u0645"]}.freeze

  # Letters
  DOUBLE_WAW  = "\u0648\u0648"
  ALEF        = "\u0627"
  MEEM        = "\u0645"
  TEH_MARBUTA = "\u0629"
  TEH         = "\u062a"
  NOON        = "\u0646"
  YEH         = "\u064a"
  WAW         = "\u0648"
  YEH_WITH_HAMZA_ABOVE = "\u0626"

  #STEMS
  IST         = "\u0627\u0633\u062a" 
  MST         = "\u0645\u0633\u062a"
  MT          = "\u0645\u062a"

end
