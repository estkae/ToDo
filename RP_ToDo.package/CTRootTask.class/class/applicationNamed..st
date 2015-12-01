testing
applicationNamed: aString
  | application |
  application := CTApplication named: aString.
  application configuration addAncestor: WARenderLoopConfiguration new.
  application preferenceAt: #rootComponent put: self.
  ^application.