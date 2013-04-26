TestPilot
=========
------

Unit-testing Cocoa just got easy. Your one-stop shop for unit testing iOS and OS X applications. Just one [Pod](http://cocoapods.org/), one header import and you're good to go.

**NB: Very initial alpha release.**

------

##What's New

###v0.0.4

* Cocoapods-based master project.
* UIKit animation overrides.
* Date string matchers.
* URL string matchers.
* `TPProxy` - logs and ignores all messages.
* `OCUnit` convenience macros.

###v0.0.4

* Convenience assertion macros, `assertTrue()`, `assertFalse()`, `assertNil()`, `assertNotNil()`
* `nil`-safe equality macro `TPIsEqual(x,y)`, whereby `(nil == nil) == YES`.

###v0.0.2/3

* Initial releases.


##Features

###Incorporated Libraries

* [OCMock](http://ocmock.org/), mock objects framework.
* [OCHamcrest](http://hamcrest.org/OCHamcrest/), pattern matchers library.
* [OCMockito](https://github.com/jonreid/OCMockito), another mock object framework.
* [Stubbilino](https://github.com/robb/Stubbilino), and library for method stubbing and swizzling.
* [Kiwi](https://github.com/allending/Kiwi), a behavioural driven development library.

###Built-in (Some upcoming)

* Easy stubbing of common framework classes (`UIApplication`, `UIApplicationDelegate`...)
* More testable `NSNotificationCentre`
* Manipulate `+[NSDate date]`
* Make `UIView` subclasses testable in the simulator
* And more...!

##Installation
This project is 100% intended for installation via [CocoaPods](http://cocoapods.org/). 

1. Example installation in your `Podfile` for a mixed iOS/OS X library project:

		target :MyLibraryOSXTests do
			platform :osx
			pod 'TestPilot'
		end
		
		target :MyLibraryiOSTests do
			platform :ios
			pod 'TestPilot'
		end
2. Import the header file `TestPilot.h` to your project - preferably into your test bundle `.pch` file and you're good to go!

3. Get testing with the provided frameworks.

4. You may wish to add the `inhibit_all_warnings!` to your `Podfile` to quieten your builds.

##Notes to self
* Install Doxygen?
* Have to turn on code coverage?
* Prevent use with main bundle (main.m detection)
* Warning:

		[!] The target `FooTests [Debug - Release]' overrides the `FRAMEWORK_SEARCH_PATHS' build setting defined in `Pods/Pods-FooTests.xcconfig'.
    		- Use the `$(inherited)' flag, or
    		- Remove the build settings from the target.


##Contact
[joncrooke@gmail.com](mailto:joncrooke@gmail.com)
