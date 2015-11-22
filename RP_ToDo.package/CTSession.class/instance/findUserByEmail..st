accessing
findUserByEmail: anEmail

	|  my_user |
	my_user := self database findUserByEmail: anEmail.
	^ my_user.