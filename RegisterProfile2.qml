import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.LocalStorage 2.0
import 'DatabaseJS.js' as DatabaseJS

Item {
    id: parentObject

    Column {

        anchors.fill: parent

        spacing: 2

        Row {
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 2
            Label {
                id: ageLabel
                text: 'Please set your current age:'
            }
        }

        Row {
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 2

            TextField {
                id: ageTextField
                width: 100
            }
        }   
    }

        Button {
            id: saveButton
            text: 'PROCEED' // SAVE
            width: parent.width
            height: 50

            anchors {
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }

            onClicked: {
                DatabaseJS.db_saveProfile2();
            }
        }
}