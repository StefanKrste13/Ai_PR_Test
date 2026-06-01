import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import App.Backend 1.0

ApplicationWindow {
    visible: true
    width: 400
    height: 300

    TextProcessor {
        id: processor
    }

    Rectangle {
        anchors.fill: parent

        ColumnLayout {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            spacing: 10

            TextField {
                id: inputField
                placeholderText: "Enter text"
                Layout.fillWidth: true
            }

            Button {
                text: "Process"
                onClicked: {
                    processor.processText(inputField.text)
                }
            }

            Text {
                text: processor.resultText
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }
}
