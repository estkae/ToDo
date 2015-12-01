as yet unclassified
initialRequest: aRequest

	| myUrl |
	myUrl := aRequest url asString.
	
  super initialRequest: aRequest.
  ( ( myUrl last: 7) = 'expired' )
    ifTrue:
      [ aRequest redirectTo: '/RP_ToDo' ].