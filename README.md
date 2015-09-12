# Updated with New GoogleMaps SDK for iOS
Control is now updated to use with iOS API Keys (Earlier it was using NSURLConnection along with Browser key from Google APIs).Its now fully supported with Google's standard classes like GMSPlace, so that it can be easily used along with Google Maps


# MVAutocompletePlaceSearchTextField
iOS - Subclass of UITextField to achieve autocompletion for Place Search like Google Places, Uber and Much more apps having maps.


MVAutocompletePlaceSearchTextField is an extension (in actual case,Subclass) of a very popular Automcomplete Textfield class MLPAutoCompleteTextField. 

MVAutocompletePlaceSearchTextField is Drop-in Solution to achieve functionalities like Autpcomplete Search with Drop-down list of all suggestions related to Textual Query entered by user.(Like Google Maps, Uber, etc.)

Storyboard support it there, so user have to just Give classname to any UITextField and Bind its 'PlaceSearchTextFieldDelegate' to Delegate class.

With very simple Delegate methods developer can easily integrate and exploit This control.

# Requirement

Developer has to get an API Key from Google Api console for Google Places API Web Service.

EDIT: As per the latest updates, You will need to integrate GoogleMaps SDK. For that you may head out to [Google iOS SDK Integration (Step 3)](https://developers.google.com/places/ios-api/start#step-3-install-the-api-using-cocoapods)

# How to Use?

- Bind 'MVPlaceSearchTextField' as Class for UITextField in the Storyboard.
- Also set its delegate named, placeSearchDelegate.
- And set your API Key as value of Property "strApiKey"
Create iOS Key to use it here from Google Console, for [more info](https://console.developers.google.com/flows/enableapi?apiid=placesios,maps_ios_backend&keyType=CLIENT_SIDE_IOS)

or refer Step 4 from
https://developers.google.com/places/ios-api/start#get-key

That's it !!


![Animated Demo](https://www.dropbox.com/s/m6angscdzxh7do7/MVPlaceSearch.gif?dl=1)


# Special Thanks
https://github.com/EddyBorja/MLPAutoCompleteTextField
