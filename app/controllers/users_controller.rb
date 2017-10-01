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
  	sh = Shopkeeper.new;
  	sh.setVerificationCode("anirudh1234")
  	if (sh.verifyVerificationCode(params["verification_code"]) == true)
	  	shopName = params["shop_name"]
	  	address = params["address"]
	  	ownerName = params["owner_name"]
	  	contact = params["phone_number"]
	  	shopkeeper = Shopkeeper.where(contact: contact).first

	  	if shopkeeper
	  		return redirect_to '/'
	  	else
	  		shopkeeper = Shopkeeper.new
	  		shopkeeper.shopName = shopName
	  		shopkeeper.ownerName = ownerName
	  		shopkeeper.address = address
	      	shopkeeper.contact = contact
	  		if(shopkeeper.save)
		  		repairs = Repair.new
		  		if(params["tvRepair"] == "on")
		  			repairs.tv = true
				else
					repairs.tv = false
				end
		  		if(params["laptopRepair"] == "on")
		  			repairs.laptop = true
		  		else
					repairs.laptop = false
				end
		  		if(params["washingMachineRepair"] == "on")
		  			repairs.washingMachine = true
		  		else
					repairs.washingMachine = false
				end
		  		if(params["refrigeratorRepair"] == "on")
		  			repairs.refrigerator = true
		  		else
					repairs.refrigerator = false
				end
		  		if(params["geyserRepair"] == "on")
		  			repairs.geyser = true
		  		else
					repairs.geyser = false
				end
		  		if(params["acRepair"] == "on")
		  			repairs.ac = true
		  		else
					repairs.ac = false
				end
		  		if(params["lightsRepair"] == "on")
		  			repairs.lights = true
		  		else
					repairs.lights = false
				end
		  		if(params["invertorRepair"] == "on")
		  			repairs.invertor = true
		  		else
					repairs.invertor = false
				end
				if(params["houseWiringRepair"] == "on")
		  			repairs.houseWiring = true
		  		else
					repairs.houseWiring = false
				end
				repairs.Shopkeeper_id = shopkeeper.id
				repairs.save
			end
	  		return redirect_to '/'
	  	end
	  else
	  		return redirect_to '/'
  	end
  end


end
