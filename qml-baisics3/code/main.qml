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


    Rectangle
    {
        id:r1
        width: 100
        height: 100
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 25
        anchors.leftMargin: 10
        color: "red"
    }
    Rectangle
    {
        id:r2
        width: 100
        height: 100
        anchors.left: r1.right
        anchors.top: parent.top
        anchors.topMargin: 25
        anchors.leftMargin: 10
        color: "blue"
    }
    Rectangle
    {
        id:r3
        width: 100
        height: 100
        anchors.top: parent.top
        anchors.left: r2.right
        anchors.leftMargin: 10
        anchors.topMargin: 25
        color: "yellow"
    }


}
