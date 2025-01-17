/*
 * Copyright 2015 Canonical Ltd.
 *
 * Copyright 2023 Ivo Xavier
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.9
import Lomiri.Components 1.3

Column {
    id: templateSection
    spacing: units.gu(3)
    width: parent.width
    property string className
    property string title: className
    property string documentation: "Ubuntu.Components/%1.html".arg(className)

    Item {
        anchors.left: parent.left
        anchors.right: parent.right
        height: childrenRect.height

        Label {
            id: label
            text: templateSection.title
            textSize: Label.Large
            anchors.left: parent.left
        }

        WebLink {
            id: docLink
            anchors.verticalCenter: label.verticalCenter
            anchors.right: parent.right
            property string prefix: "https://api-docs.ubports.com/sdk/apps/qml/"
            label: title ? "API Documentation" : "%1 API Documentation".arg(className)
            url: prefix + documentation
            visible: documentation != ""
            textSize: Label.Small
        }
    }
}
