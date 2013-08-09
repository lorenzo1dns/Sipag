module EntriesHelper

	def beneficiario(id)

		
		@beneficiario = Beneficiary.find(id)
	end
end
