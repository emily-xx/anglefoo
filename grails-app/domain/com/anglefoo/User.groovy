package com.anglefoo

class User {

	String login
	String password
	String email
	String givenName
	String surname

    static constraints = {
    }

    static transients = ['fullName']

    def getFullName() {
    	"${givenName} ${surname}"
    }
}
