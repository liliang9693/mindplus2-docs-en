# 3.1.3.6 Sensing

Sensing blocks are used to detect the state or external conditions during program execution, such as determining whether a button is pressed, whether an object is touched, sound volume, or coordinate changes, providing data support for logical judgment and response.

| col1                                                                                                                               | col2                                                                                                                       |
| ---------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| ![image](./3136Sensing.assets/pic_1780552200962.png) | This condition applies when the character touches the "mouse pointer" or "stage edge" position; otherwise, it does not.    |
| ![image](./3136Sensing.assets/pic_1780552211401.png) | This condition is met when the character encounters a color (color can be chosen at will); otherwise, it does not.         |
| ![image](./3136Sensing.assets/pic_1780552222048.png) | This condition applies when a character's color encounters another color; otherwise, it does not.                          |
| ![image](./3136Sensing.assets/pic_1780552233647.png) | Return the distance between the character and the mouse pointer, and note that the mouse needs to be on stage.             |
| ![image](./3136Sensing.assets/pic_1780552242908.png) | The stage displays the input box and waits, used by the keyboard to allow users to input information through the keyboard. |
| ![image](./3136Sensing.assets/pic_1780552250577.png) | Returns the result of the previous input; check the box to display it on the stage.                                        |
| ![image](./3136Sensing.assets/pic_1780553953746.png) | This condition is true when a key on the computer keyboard is pressed; otherwise, it is false.                             |
| ![image](./3136Sensing.assets/pic_1780553962265.png) | This condition is true when the mouse button is pressed; otherwise, it is false.                                           |
| ![image](./3136Sensing.assets/pic_1780553972469.png) | Get the x-coordinate of the mouse's position on the stage.                                                                 |
| ![image](./3136Sensing.assets/pic_1780553979001.png) | Get the y-coordinate of the mouse's position on the stage.                                                                 |
| ![image](./3136Sensing.assets/pic_1780553986284.png) | Set the character's drag mode to "Dragable" or "Not Dragable."                                                             |
| ![image](./3136Sensing.assets/pic_1780553999921.png) | Get the volume level of your computer's microphone; check the box to display it on stage.                                  |
| ![image](./3136Sensing.assets/pic_1780554006127.png) | The timer will automatically increase from 0 as time passes; check the box to display it on the stage.                     |
| ![image](./3136Sensing.assets/pic_1780554023349.png) | Reset the timer.                                                                                                           |
| ![image](./3136Sensing.assets/pic_1780554030000.png) | Retrieve the stage's "background ID," "background name," and the volume set in "Sound."                                    |
| ![image](./3136Sensing.assets/pic_1780554036837.png) | Retrieve the "year," "month," "day," "day of the week," "hour," "minute," and "second" of the current time.                |
| ![image](./3136Sensing.assets/pic_1780554046236.png) | Get the number of days from 2000 to the present.                                                                           |
