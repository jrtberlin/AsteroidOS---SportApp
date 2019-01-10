import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.LocalStorage 2.0
import 'DatabaseJS.js' as DatabaseJS

Item {
    anchors.fill: parent

    Component.onCompleted: {
        DatabaseJS.db_checkProfile();
    }
}
