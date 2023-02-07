local frame = CreateFrame("Frame")

frame:RegisterEvent("AUCTION_HOUSE_SHOW_NOTIFICATION")
frame:RegisterEvent("AUCTION_HOUSE_SHOW_FORMATTED_NOTIFICATION")
frame:SetScript("OnEvent", function(self, event, notificationType, details, auctionID)
  -- Assumes it is an AUCTION_HOUSE_SHOW_NOTIFICATION or similar event
  if notificationType == Enum.AuctionHouseNotification.AuctionSold and not C_PlayerInteractionManager.IsInteractingWithNpcOfType(Enum.PlayerInteractionType.Auctioneer) then
    Chat_AddSystemMessage(ERR_AUCTION_SOLD_S:format(details))
  end
end)
