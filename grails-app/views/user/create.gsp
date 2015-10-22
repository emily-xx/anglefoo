<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<g:javascript>
            var app = angular.module("anglefoo", []);
            // app.controller("userController", function ($scope, $http) {
            //     $http.get("users.json").success( function (data) {
            //         $scope.users = data;
            //     });
            // });
        </g:javascript>
	</head>
	<body>
		<a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-user" ng-app="anglefoo" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${this.user}">
			<ul class="errors" role="alert">
				<g:eachError bean="${this.user}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form name="userSave" action="save">
				<fieldset class="form">
					<div class="fieldcontain required">
						<label for="email">Email
							<span class="required-indicator">*</span>
						</label><input name="email" value="" ng-required="true" id="email" type="text">
					</div>
					<div class="fieldcontain required">
						<label for="givenName">Given Name
						<span class="required-indicator">*</span>
						</label><input name="givenName" value="" ng-required="true" id="givenName" type="text">
					</div>
					<div class="fieldcontain required">
					  <label for="login">Login
						<span class="required-indicator">*</span>
					  </label><input name="login" value="" ng-required="true" id="login" type="text">
					</div>
					<div class="fieldcontain required">
					  <label for="password">Password
						<span class="required-indicator">*</span>
					  </label><input name="password" value="" ng-required="true" id="password" type="text">
					</div>
					<div class="fieldcontain required">
					  <label for="surname">Surname
						<span class="required-indicator">*</span>
					  </label><input name="surname" value="" ng-required="true" id="surname" type="text">
					</div>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" ng-disabled="userSave.email.$invalid"/>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
