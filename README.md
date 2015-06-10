Lesson 2.2
Setting Up Scenes
Introduction to Storyboards by setting up three scenes.  In this lesson, you’ll learn the fundamentals of storyboards and see how to add UI components to scenes.

* Resize scenes to iPhone 4.7" (iPhone 6)
* Tab Bar Controller doesn't need to be resized because it isn't visible to the user
* Name Scene 1 and 2 with meaningful names - Activity & Performance
* To create the third scene, we're going to create a copy of an existing scene 
* Open the Document Outline
* Drag the 2nd scene onto the storyboard, which creates a copy (scene 3)
* Add third scene
* scene 3 will be on top of scene 2.  Drag it over to see it.
* Change the main label on scene 3 to "Add Activity"
* Remove labels from scene 1
* Add a Picker View to scene 1 and adjust width to each margin of scene 1
* This Picker View will contain our listing of activities
* Add a label to scene 1 below the picker.  This is out countdown label.  Adjust the font size to 38
* Drag a button below the label.  Stretch width to each scene margin.
* Go to scene 2 (Performance Scene).  Remove the labels just like we did in scene 1.
* Drag a tableview onto scene 2 from the object library.  Adjust tableview width to scene width.  Adjust height so status bar at the top and tab bar at the bottom are visible
* In scene 3, remove these labels as well
* Drag a label onto scene 3 and adjust width to scene margins
* Drag a text field onto scene 3 below the label and adjust width to margins as well
* Drag a button below the text field and adjust width to margins
* Change the button text to "Save Activity"
* Select iPhone 6 from the run menu and run the app
* You can switch between the two tabs and see the UI elements we've added
* Notice scene 3 is not yet there.  We will wire it up in the next lesson