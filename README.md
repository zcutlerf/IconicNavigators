#  Iconic Navigators
##  SwiftUI Navigation Workshop

A team of developers has been working on coding their story about iconic navigators. The four chapters are:
1. Lincoln Navigator
2. Prince Henry the Navigator
3. Navi from Zelda
4. Apple's MapKit

Each team member has finished coding their portion of the story, but now they need to connect each page together using `NavigationStack`s and `TabView`s.

Use this annotated hi-fi prototype to inform you on how each screen should connect using navigation:
![A hi-fi prototype of the Iconic Navigators story. There is a tab view with 4 tabs in this story. The first tab shows the Lincoln Navigator car. The second tab shows Prince Henry the Navigator, with 3 Navigation Links that lead to pictures of places he has travelled: Madeira, The Azores, and Cabo Blanco. The third tab shows Navi, a character from Zelda. The fourth tab shows Apple's MapKit centered on Detroit.](IconicNavigatorsannotatedhifi.png)


### How to get started
* Clone the `main` branch of this repo.
* Use the documentation (`Command+Shift+0` in Xcode) to learn about SwiftUI's `NavigationStack` and `TabView`.
* Complete the tasks outlined in the hi-fi prototype above.
* Stretch goals:
    * Is there a better way to organize our files in this project?
    * MadieraView, AzoresView, and CaboBlancoView all have the same format. How could we refactor these into one reusable view? Also, could we avoid writing 3 `NavigationLink`s in a row, and use some sort of loop instead?
    * Could we have the Map view start at the user's location?
