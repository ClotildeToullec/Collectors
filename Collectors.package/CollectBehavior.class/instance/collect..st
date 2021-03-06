collecting
collect: anArrayOfReifications
	| collector object |
	collector := anArrayOfReifications first.
	object := anArrayOfReifications second.
	collector isInReplayMode
		ifTrue: [ ^ self ].
	((collector mustCollect: anArrayOfReifications) ifNil:[false])
		ifFalse: [ collector trashDeepCollectedItems.
			^ self ].
	collector collectObject: object.
	collector isOmniscient
		ifFalse: [ ^ self ].
	self omniscientCollect: object in: collector withReifications: anArrayOfReifications