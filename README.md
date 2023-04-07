# tv_app
Tv app flutter challenge

In this app i used the setState for state control, but following some guidelines of bloc
because thats the state management that im most familiar with.

The app is structured in the following folders logic:
components -> The widgets files that are under every page file
constants  -> Design and text parameters that are constans truth the system.
models     -> The model classes of the program.
pages      -> The Page files of the program.
servs      -> The servs that comunicates with the api.
states     -> The state files that are called by the view (pages and widgets) to grab info from the servs

- To run the app, make sure you have the flutter and a compatible ide installed (visual studio code, android studio).
- clone the repositori
- in the terminal, run flutter pub get command
- in the terminal with your device connected, run flutter run or ask the ide to create a launch.json file