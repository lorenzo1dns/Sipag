# == Schema Information
#
# Table name: sicks
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  descripcion         :text
#  familia             :string(255)
#  danio               :text
#  created_at          :datetime
#  updated_at          :datetime
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

require 'spec_helper'

describe Sick do
  pending "add some examples to (or delete) #{__FILE__}"
end
