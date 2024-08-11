Feature: Test Registro
Background:
 * url urlBase
 * def requestSignUp = read('requestSignUp.json')
 Scenario: Create new user
  Given path 'singup'
  And set requestSignUp.username = "testjoselin"
  And set requestSignUp.password  = "dGVzdGpvc2VsaW4="
  * print "Se envia peticion"
  * print  requestSignUp
  And request requestSignUp
  When method post
  Then status 200

