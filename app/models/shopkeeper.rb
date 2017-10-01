class Shopkeeper < ActiveRecord::Base
	def setVerificationCode(newCode)
		@verificationCodeForForm = newCode
	end
	def verifyVerificationCode(userCode)
		if userCode == @verificationCodeForForm
			return true
		else
			return false
		end
	end
	private
		@verificationCodeForForm
end