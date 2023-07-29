import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

//window containing the application
ApplicationWindow {

    Material.theme: Material.Dark
    Material.accent: Material.Purple

    visible: true

    //title of the application
    title: qsTr("Hello World")
    width: 640
    height: 480

    MyR
    {
        id:abc
        onHelloWorld:
        {
            console.log("hello from outside.........")
        }

    }

    Timer {
        interval: 50; running: true; repeat: true
        onTriggered:
        {
          //  abc.fade();

        }
    }

}
