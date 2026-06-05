import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import App.Backend 1.0

ApplicationWindow {
    visible: true
    width: 450
    height: 600
    title: "Pro Text Processor"
    color: "#f8fbff"

    TextProcessor { id: processor }

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 15

        // Header Section
        Rectangle {
            Layout.fillWidth: true
            height: 60
            color: "#1e88e5"
            radius: 12

            Text {
                anchors.centerIn: parent
                text: "Text Transformation Suite"
                color: "white"
                font.pixelSize: 20
                font.bold: true
            }
        }

        // Status Indicator
        RowLayout {
            Layout.fillWidth: true
            spacing: 10
            Rectangle {
                width: 12; height: 12
                radius: 6
                color: processor.resultText ? "#4caf50" : "#ff9800"
            }
            Text {
                text: processor.resultText ? "System Ready" : "Waiting for input..."
                color: "#546e7a"
            }
        }

        // Input Area
        TextField {
            id: inputField
            placeholderText: "Type something to process..."
            Layout.fillWidth: true
            height: 50
            background: Rectangle {
                radius: 8
                border.color: inputField.activeFocus ? "#1e88e5" : "#cfd8dc"
                border.width: 2
            }
        }

        // Advanced Options Row
        RowLayout {
            Layout.fillWidth: true
            spacing: 10
            CheckBox { text: "Uppercase"; checked: true }
            CheckBox { text: "Trim Space" }
        }

        // Main Action Button
        Button {
            id: processBtn
            text: "EXECUTE PROCESS"
            Layout.fillWidth: true
            height: 50
            background: Rectangle {
                radius: 8
                color: processBtn.pressed ? "#1565c0" : "#1e88e5"
            }
            contentItem: Text {
                text: processBtn.text
                color: "white"
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            onClicked: processor.processText(inputField.text)
        }

        // Output Display Area
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            radius: 10
            color: "#ffffff"
            border.color: "#e3f2fd"
            border.width: 1

            ScrollView {
                anchors.fill: parent
                anchors.margins: 10
                Text {
                    text: processor.resultText || "Output will be displayed here..."
                    color: processor.resultText ? "#263238" : "#b0bec5"
                    width: parent.width
                    wrapMode: Text.WordWrap
                }
            }
        }

        testteete

        // Footer Info
        Text {
            Layout.alignment: Qt.AlignHCenter
            text: "v1.0.0 | BlueTheme Engine"
            color: "#90a4ae"
            font.pixelSize: 10
        }
    }
}
