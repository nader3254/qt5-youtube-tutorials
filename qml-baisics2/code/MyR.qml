import QtQuick 2.0
import QtQml 2.15

Rectangle
{
    id:hello
    width: 100
    height: 100
    color: "red"
   // opacity: 0
    anchors.centerIn: parent
    property bool state1: false
    signal helloWorld

    radius: 30
    function fade()
    {
        let a=hello.opacity
        if(state1==false)
        {
            if(a<1)
            {
                a=a+0.1;
                hello.opacity=a

            }
            else
            {
                state1=true;
            }
        }
        else
        {
            if(a>0)
            {
                a=a-0.1;
                hello.opacity=a

            }
            else
            {
                state1=false;
            }
        }
    }


    MouseArea
    {
       width: parent.width
       height: parent.height
       onClicked: {
           console.log("clicked.....")
           helloWorld()

       }
       onPressed:
       {

           hello.color="blue"
       }
       onReleased:
       {
           hello.color="red"
       }
    }


}
