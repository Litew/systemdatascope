import QtQuick 2.2
import Sailfish.Silica 1.0

Page {

    property string headerText: ""
    property string mainText: ""

    allowedOrientations : Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height + Theme.paddingLarge

        Column {
            id: column

            anchors.margins: Theme.horizontalPageMargin
            anchors.left: parent.left
            anchors.right: parent.right

            spacing: Theme.paddingLarge

            PageHeader {
                title: headerText
            }

            Label {
                text: mainText
                wrapMode: Text.WordWrap
                width: column.width
                //color: Theme.highlightColor
                //textFormat: Text.RichText
            }
        }
    }


}

