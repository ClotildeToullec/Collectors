main menu
buildCollectorsMenuOn: aBuilder
	| context |
	context := SugsAbstractContext contextFor: aBuilder model.
	self collectInstVarIn: context on: aBuilder.
	self collectReceiverIn: context on: aBuilder.
	self collectTempVarIn: context on: aBuilder.
	self collectResultIn: context on: aBuilder