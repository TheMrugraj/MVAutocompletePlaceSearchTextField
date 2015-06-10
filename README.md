# MVAutocompletePlaceSearchTextField
iOS - Subclass of UITextField to achieve autocompletion for Place Search like Google Places, Uber and Much more apps having maps.


MVAutocompletePlaceSearchTextField is an extension (in actual case,Subclass) of a very popular Automcomplete Textfield class MLPAutoCompleteTextField. 

MVAutocompletePlaceSearchTextField is Drop-in Solution to achieve functionalities like Autpcomplete Search with Drop-down list of all suggestions related to Textual Query entered by user.(Like Google Maps, Uber, etc.)

Storyboard support it there, so user have to just Give classname to any UITextField and Bind its 'PlaceSearchTextFieldDelegate' to Delegate class.

With very simple Delegate methods developer can easily integrate and exploit This control.

# Requirement

Developer has to get an API Key from Google Api console for Google Places API Web Service.

# How to User?

- Bind 'MVPlaceSearchTextField' as Class for UITextField in the Storyboard.
- Also set its delegate named, placeSearchDelegate.
- And set your API Key as value of Property "strApiKey"

That's it !!


![Animated Demo](https://www.dropbox.com/s/m6angscdzxh7do7/MVPlaceSearch.gif?dl=1)


# Special Thanks
https://github.com/EddyBorja/MLPAutoCompleteTextField
