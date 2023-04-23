local dsWork = {}

-- // Require Modules \\ --
local dsWorkAPI = require(script.APIServices)
local dsWorkMisc = require(script.Miscellaneous)
local dsWorkDB = require(script.Database)

-- // Services \\ --
local playerService = game:GetService("Players")

-- // Debugging \\ --
throwError = function(what, func)
	if what == 0 then
		error("dsWork: invalid argument given (" .. func .. ")")
	else
		error("dsWork: error ? " .. func .. " / " .. what)
	end
end

-- // API Stuff \\ --
-- Users API
dsWork.getUserData = function(userId)
	return dsWorkAPI.UsersApi("", userId)
end

dsWork.getUserCreationDate = function(userId)
	return dsWorkAPI.UsersApi("created", userId)
end

dsWork.getUserDescription = function(userid)
	return dsWorkAPI.UsersApi("description", userid)
end

dsWork.getUserBannedState = function(userid)
	return dsWorkAPI.UsersApi("isBanned", userid)
end

dsWork.getUserFriendCount = function(userid)
	return dsWorkAPI.FriendsApi("count", userid)
end

dsWork.getUserFollowingCount = function(userid)
	return dsWorkAPI.FriendsApi("followingCount", userid)
end

dsWork.getUserFollowersCount = function(userid)
	return dsWorkAPI.FriendsApi("followersCount", userid)
end

dsWork.userHasVerifiedBadge = function(userid)
	return dsWorkAPI.UsersApi("hasVerifiedBadge", userid)
end

-- Group API
dsWork.getGroupData = function(groupid)
	return dsWorkAPI.GroupsApi("", groupid)
end

dsWork.getGroupName = function(groupid)
	return dsWorkAPI.GroupsApi("name", groupid)
end

dsWork.getGroupDescription = function(groupid)
	return dsWorkAPI.GroupsApi("description", groupid)
end

dsWork.getGroupOwner = function(groupid)
	return dsWorkAPI.GroupsApi("owner", groupid)
end

dsWork.getGroupCreationDate = function(groupid)
	return dsWorkAPI.GroupsApiV2("created", groupid)
end

dsWork.getGroupMemberCount = function(groupid)
	return dsWorkAPI.GroupsApi("memberCount", groupid)
end

dsWork.getGroupShoutData = function(groupid)
	return dsWorkAPI.GroupsApi("shout", groupid)
end

dsWork.groupHasVerifiedBadge = function(groupid)
	return dsWorkAPI.GroupsApi("hasVerifiedBadge", groupid)
end

dsWork.groupPublicEntryAllowed = function(groupid)
	return dsWorkAPI.GroupsApi("publicEntryAllowed", groupid)
end

-- Avatar API
dsWork.getAvatarData = function(userid)
	return dsWorkAPI.AvatarApi("", userid)
end

dsWork.getAvatarType = function(userid)
	return dsWorkAPI.AvatarApi("playerAvatarType", userid)
end

-- Badge API
dsWork.getBadgeData = function(badgeid)
	dsWorkAPI.BadgeApi("", badgeid)
end

dsWork.getBadgeName = function(badgeid)
	dsWorkAPI.BadgeApi("name", badgeid)
end

dsWork.getBadgeDescription = function(badgeid)
	dsWorkAPI.BadgeApi("description", badgeid)
end

dsWork.getBadgeState = function(badgeid)
	dsWorkAPI.BadgeApi("enabled", badgeid)
end

dsWork.getBadgeImageId = function(badgeid)
	dsWorkAPI.BadgeApi("iconImageId", badgeid)
end

dsWork.getBadgeCreationDate = function(badgeid)
	dsWorkAPI.BadgeApi("created", badgeid)
end

dsWork.getBadgeAwardedCount = function(badgeid)
	dsWorkAPI.BadgeApi("awardedCount", badgeid)
end

dsWork.getBadgeUniverseData = function(badgeid)
	dsWorkAPI.BadgeApi("awardingUniverse", badgeid)
end

-- Games API
dsWork.getUniverseIdFromPlaceId = function(placeid)
	return dsWorkAPI.GamesApi("universeId", placeid)
end

dsWork.getPlaceName = function(placeid)
	return dsWorkAPI.GamesApi("name", placeid)
end

dsWork.getPlaceDescription = function(placeid)
	return dsWorkAPI.GamesApi("description", placeid)
end

dsWork.getPlaceURL = function(placeid)
	return dsWorkAPI.GamesApi("url", placeid)
end

dsWork.getPlacePlayableState = function(placeid)
	return dsWorkAPI.GamesApi("isPlayable", placeid)
end

dsWork.getPlacePrice = function(placeid)
	return dsWorkAPI.GamesApi("price", placeid)
end

dsWork.placeHasVerifiedBadge = function(placeid)
	return dsWorkAPI.GamesApi("hasVerifiedBadge", placeid)
end

-- Universe API
dsWork.getUniverseOwnerType = function(universeid)
	return dsWorkAPI.UniverseApi("creator", universeid)
end

dsWork.getUniverseOwnerName = function(universeid)
	return dsWorkAPI.UniverseApi("name", universeid)
end

dsWork.getUniverseCreationDate = function(universeid)
	return dsWorkAPI.UniverseApi("created", universeid)
end

dsWork.getUniverseCreationDate = function(universeid)
	return dsWorkAPI.UniverseApi("created", universeid)
end

dsWork.getUniverseLastUpdatedDate = function(universeid)
	return dsWorkAPI.UniverseApi("updated", universeid)
end

dsWork.getUniversePlayingCount = function(universeid)
	return dsWorkAPI.UniverseApi("playing", universeid)
end

dsWork.getUniverseVisitsCount = function(universeid)
	return dsWorkAPI.UniverseApi("visits", universeid)
end

dsWork.getUniverseMaxPlayerCount = function(universeid)
	return dsWorkAPI.UniverseApi("maxPlayers", universeid)
end

dsWork.getUniverseFavoriteCount = function(universeid)
	return dsWorkAPI.UniverseApi("favoritedCount", universeid)
end

-- Thumbnail API
dsWork.getUserAvatarHeadshotThumb = function(userid)
	return dsWorkAPI.ThumbnailApi("headshot", userid)
end

dsWork.getUserAvatarThumb = function(userid)
	return dsWorkAPI.ThumbnailUserAvatar("avatar", userid)
end

dsWork.getUserAvatarBustThumb = function(userid)
	return dsWorkAPI.ThumbnailUserAvatarBust("bust", userid)
end

-- // DATASTORE API \\ --
-- Get Data
dsWork.getDatabaseData = function(dsKey, dataName, dataValue)
	return dsWorkDB.getData(dsKey, dataName, dataValue)
end

return dsWork
