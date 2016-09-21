require 'date'

module Const
  # ログディレクトリ
  LOG_DIR = "log"
  # ログファイル名
  LOG_FILE = "company-" + Date.today.strftime("%F") + ".log"

  MAPPING_FILE = "mapping.yml"

  MODIFIED_BY = "company_test"
end
