require 'bitcoin-client'
class Mastercoin::Client < ::Bitcoin::Client

  # Simple send allows a Master Protocol currency to be transferred from address
  # to address in a one-to-one transaction.
  def sendMP(sendaddress, recipaddress, propertyid, amount, redeemaddress = nil)
    @api.request 'omni_send', sendaddress, recipaddress, propertyid, amount, redeemaddress
  end

  # Obtaining a Master Protocol balance
  def getbalanceMP(address, propertyid)
    @api.request 'omni_getbalance', address, propertyid
  end

  # Obtaining all Master Protocol balances for an address
  def getallbalancesforaddressMP(address)
    @api.request 'omni_getallbalancesforaddress', address
  end

  # Obtaining all Master Protocol balances for a property ID
  def getallbalancesforidMP(propertyid)
    @api.request 'omni_getallbalancesforid', propertyid
  end

  # Retrieving a Master Protocol Transaction
  def gettransactionMP(transactionid)
    @api.request 'omni_gettransaction', transactionid
  end

  # Listing Historical Transactions
  # Optional parameters can be combined as follows listtransactions_MP "*" 50 100
  # to list the 50 most recent transactions across all addresses in the wallet,
  # skipping the first 100.

  # Optional parameters can be combined as follows listtransactions_MP "*" 99999 0 301000 302000
  # to list the 99999 most recent transactions across all addresses in the wallet between blocks 301000 and 302000.
  def listtransactionsMP(address = nil, count = nil, skip = nil, startblock = nil, endblock = nil)
    @api.request 'omni_listtransactions', address, count, skip, startblock, endblock
  end

  # Retrieving information about a Master Protocol property
  def getpropertyMP(propertyid)
    @api.request 'omni_getproperty', propertyid
  end

  # Listing Master Protocol properties
  def listpropertiesMP
    @api.request 'omni_listproperties'
  end

  # Retrieving information for a Master Protocol crowdsale
  def getcrowdsaleMP(propertyid, verbose = nil)
    @api.request 'omni_getcrowdsale', propertyid, verbose
  end

  # Listing currently active crowdsales
  def getactivecrowdsalesMP
    @api.request 'omni_getactivecrowdsales'
  end

  # Broadcasting a Send to Owners transaction
  def sendtoownersMP(senderaddress, propertyid, amount)
    @api.request 'omni_sendsto', senderaddress, propertyid, amount
  end

  # Listing currently active DeX sell offers
  # You may pass in (1) parameter, which is the address to filter by/on.
  def getactivedexsellsMP(parameter = nil)
    @api.request 'getactivedexsells_MP', parameter
  end

  # Get grant/revoke info for a property ID
  def getgrantsMP(propertyid)
    @api.request 'omni_getactivedexsells', propertyid
  end

  # Return all Master Protocol transactions in a block
  def listblocktransactionsMP(height)
    @api.request 'omni_listblocktransactions', height
  end

  # Returns hash of block in best-block-chain at <index>; index 0 is the genesis block
  def getblockhash(index)
    @api.request 'getblockhash', index
  end

  alias send_MP sendMP
  alias getbalance_MP getbalanceMP
  alias getallbalancesforaddress_MP getallbalancesforaddressMP
  alias getallbalancesforid_MP getallbalancesforidMP
  alias gettransaction_MP gettransactionMP
  alias listtransactions_MP listtransactionsMP
  alias getproperty_MP getpropertyMP
  alias listproperties_MP listpropertiesMP
  alias getcrowdsale_MP getcrowdsaleMP
  alias getactivecrowdsales_MP getactivecrowdsalesMP
  alias sendtoowners_MP sendtoownersMP
  alias getactivedexsells_MP getactivedexsellsMP
  alias getgrants_MP getgrantsMP
  alias listblocktransactions_MP listblocktransactionsMP
end
