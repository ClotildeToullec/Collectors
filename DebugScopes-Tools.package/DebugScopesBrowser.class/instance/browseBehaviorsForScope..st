behaviors - building
browseBehaviorsForScope: selectedScope
	| adaptationBrowser wrapperBrowser |
	adaptationBrowser := self behaviorBrowser.
	wrapperBrowser := GLMTabulator new.
	wrapperBrowser column: #theOuterPane.
	wrapperBrowser transmit
		fromOutsideEntityPort;
		to: #theOuterPane;
		andShow: [ :a | a custom: adaptationBrowser ].
	^ wrapperBrowser startOn: #()