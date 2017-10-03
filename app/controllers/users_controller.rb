class UsersController < ApplicationController
  def about_us
  end

  def contact_us
  end

  def home
  end

  def join_us
  end

  def join_us_submit
  	verificationCodeForFormSubmission = "Qtaskers@123"
  	if (params["verification_code"] == verificationCodeForFormSubmission)
	  	shopName = params["shop_name"]
	  	address = params["address"]
	  	ownerName = params["owner_name"]
	  	contact = params["phone_number"]
	  	shopkeeper = Shopkeeper.where(contact: contact).first
	  	if (shopkeeper || shopName == "" || ownerName == "" || address == "" || contact == "")
	  		return redirect_to '/'
	  	else
	  		shopkeeper = Shopkeeper.new
	  		shopkeeper.shopName = shopName
	  		shopkeeper.ownerName = ownerName
	  		shopkeeper.address = address
      	shopkeeper.contact = contact
	  		if(params["tvRepair"] == "on")
	  			shopkeeper.tv = true
				else
					shopkeeper.tv = false
				end
		  		if(params["laptopRepair"] == "on")
		  			shopkeeper.laptop = true
		  		else
					shopkeeper.laptop = false
				end
		  		if(params["washingMachineRepair"] == "on")
		  			shopkeeper.washingMachine = true
		  		else
					shopkeeper.washingMachine = false
				end
		  		if(params["refrigeratorRepair"] == "on")
		  			shopkeeper.refrigerator = true
		  		else
					shopkeeper.refrigerator = false
				end
		  		if(params["geyserRepair"] == "on")
		  			shopkeeper.geyser = true
		  		else
					shopkeeper.geyser = false
				end
		  		if(params["acRepair"] == "on")
		  			shopkeeper.ac = true
		  		else
					shopkeeper.ac = false
				end
		  		if(params["lightsRepair"] == "on")
		  			shopkeeper.lights = true
		  		else
					shopkeeper.lights = false
				end
		  		if(params["invertorRepair"] == "on")
		  			shopkeeper.invertor = true
		  		else
					shopkeeper.invertor = false
				end
				if(params["houseWiringRepair"] == "on")
		  			shopkeeper.houseWiring = true
		  		else
					shopkeeper.houseWiring = false
				end
				shopkeeper.save
		  		return redirect_to '/'
		  	end
	  	else
	  		return redirect_to '/'
  	end
  end


end
