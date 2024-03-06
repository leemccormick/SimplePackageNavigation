# Simple Package Navigation
- This project was created by AndrewBrehmAtDialexa.
- Learn about Navigation between packages.

## Branch : run-micro-apps-on-main-app 
- Learn how to run mutiple micro app using Xcode Project from Main App. (Step 1 - 4)
- Learn how to set up or pass enviroment data between micro app using Xcode Project from Main App. (Step 5 - 6)
  
<img width="700" height="400" alt="Demo" src="https://github.com/leemccormick/SimplePackageNavigation/assets/57606580/1f5b5069-1e74-45d1-85a4-9808ed77f54e">

- Step 1 : Set up enviroments on Main App
  
<img width="600" height="400" alt="MainApp_Configurations_Step1" src="https://github.com/leemccormick/SimplePackageNavigation/assets/57606580/f8f0bde2-eec2-4b0c-9c73-297d036f4f5b">

<img width="600" height="400" alt="MainApp_Swift_Custom_Flags" src="https://github.com/leemccormick/SimplePackageNavigation/assets/57606580/f9458843-fb86-4abb-b7f0-2189034f82ee">

<img width="600" height="400" alt="MainApp_Product_Name_Bundle_Identifier" src="https://github.com/leemccormick/SimplePackageNavigation/assets/57606580/be2b73b0-cc73-4dff-8772-2eca315e0b5a">

- Step 2 : Edit Scheme on Each Micro App
  
<img width="600" height="400" alt="Edit_Scheme_Enviroment Variables" src="https://github.com/leemccormick/SimplePackageNavigation/assets/57606580/1598b261-3128-47b0-a33b-d550498a2646">

<img width="600" height="400" alt="Edit_Scheme_Build_Configuration_Executable" src="https://github.com/leemccormick/SimplePackageNavigation/assets/57606580/b77f4355-0c91-4913-b420-629756044bf3">

- Step 3 : Implement the enviroment on Main App Window to show the view based on environment
- Step 4 : Run and Test Each Micro App And Each Enviroment.

- Step 5 : on Info.plist, add configuration following example below...
  
<img width="600" height="400"  alt="Info Configuration" src="https://github.com/leemccormick/SimplePackageNavigation/assets/57606580/6a0f7cd5-df0f-4bc7-80b0-c469fdcf997d">

- Step 6 : Create AppConfig Package to read enviroment data from info.plist
  
<img width="600" height="400"  alt="AppConfig Package" src="https://github.com/leemccormick/SimplePackageNavigation/assets/57606580/13890476-2d1e-4806-abcc-687960c5adf8">

- Step 7 : Import AppConfig on MicroApp1, MicroApp2 and Main App to test the enviroment data such as base url...
  
## Sources
- https://github.com/AndrewBrehmAtDialexa/SimplePackageNavigation
- https://sarunw.com/posts/how-to-set-up-ios-environments/
 
### Test Project by Lee McCormick
Learning Switf, Xcode and SwiftUI is my passion. This project was built by following the tutorial and source code online.
