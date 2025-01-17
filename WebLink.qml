/*
 * Copyright 2013 Canonical Ltd.
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

Label {
    id: webLink

    property string label: url
    property url url

    textFormat: Text.StyledText
    text: "<a href=\"%1\">%2</a>".arg(webLink.url).arg(webLink.label)
    linkColor: LomiriColors.orange
    onLinkActivated: Qt.openUrlExternally(link)
    MouseArea {
        anchors.fill: webLink
        cursorShape: Qt.PointingHandCursor
        acceptedButtons: Qt.NoButton
   }
}
