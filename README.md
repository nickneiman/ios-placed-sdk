# Placed Affiliate SDK

## Introduction

The Placed SDK for iOS is designed to help you add Placed location gathering to your app. It exposes simple public API calls that can be used to turn location gathering on.

The SDK has been designed for easy setup and integration with both new and existing mobile applications.

## Setup

The preferred method for installing the Placed SDK in your app is using CocoaPods. CocoaPods is dependency management system for Objective-C development. You can learn more about it at [http://cocoapods.org/](http://cocoapods.org/).

1. Add the following line to your project's Podfile  
    ```
    pod 'Placed', :git => 'https://github.com/placed/ios-placed-sdk.git'
    ```

2. Celebrate!

If you are not using CocoaPods, you can integrate the Placed.framework and Placed.bundle directly in your project.

## Location Permission

As outlined in Section 5 of the [Placed Affiliate Agreement](https://affiliate.placed.com/placed-affiliate-agreement/), you must satisfy two requirements prior to registering a user with the Placed SDK:

1. *Gather Express Consent for User Data Collection via Opt-in Dialog*  
In addition having a legally compliant privacy policy describing Placed’s collection of location and device information, you must include a discrete opt-in dialog which gathers express consent for data collection. This dialog appears prior to the fine location permission prompt, and includes:  
    - The language: “*Aggregated device data, including location, is measured for the purposes of market research by Placed, Inc.*”
    - Links to the Placed [Terms of Service](https://www.placed.com/terms-of-service) and [Privacy Policy](https://www.placed.com/privacy-policy)
    - Buttons to “Accept” or “Cancel” 


2. *Prompt for Background Location Permission*  
    Under the “Required background modes” `UIBackgroundModes` key in your app’s main plist file, you will need to add:  
    ```
    App registers for location updates
    ```
    In addition, you must provide all of the following location usage descriptions in your app's plist:
    ```
    NSLocationAlwaysAndWhenInUseUsageDescription
    NSLocationWhenInUseUsageDescription 
    NSLocationAlwaysUsageDescription
    NSLocationUsageDescription
    ```

For an example of the opt-in dialog and location permission prompt, please refer to the sample app. We have also provided a [gallery for inspiration](./gallery) on how you can better integrate the opt-in experience into your app.

**These permissions are very important to the Placed SDK.** If your app does not currently use background location permission, please contact a Placed representative.

## Integration

1. Add `#import <Placed/PlacedAgent.h>` to your main AppDelegate.

2. Initialize the agent in your AppDelegate's `application:didFinishLaunchingWithOptions:`.

    - Call `[PlacedAgent createWithAppKey:@"<Application Key>" andDelegate:nil];` providing the app key you received from Placed. Optionally, you may provide a `PlacedAgentDelegate` to this method but it is not required.

3. Call `[PlacedAgent registerUser]` to register a new user for location collection by the Placed SDK. This method should only be called once in the user's lifecycle. If you have EULA or terms of service that the user is required to accept before tracking, call this method after the user accepts those terms. You may find the method `[PlacedAgent isUserRegistered]` useful for checking if `registerUser` has already been called before.

## How to join
Please contact your Placed representative to find out how to register your account. If you do not have a representative yet, please email [affiliate@placed.com](mailto:affiliate@placed.com).

## Support
For further guidance, please contact [affiliate@placed.com](mailto:affiliate@placed.com).
