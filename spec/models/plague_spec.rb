# == Schema Information
#
# Table name: plagues
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  descripcion         :text(255)
#  tipoPlaga           :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  danio               :text
#

require 'spec_helper'

describe Plague do
  pending "add some examples to (or delete) #{__FILE__}"
end
