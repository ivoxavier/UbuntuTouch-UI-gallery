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
import Lomiri.Components.Popups 1.3

Template {
    objectName: "dialogsTemplate"

    TemplateSection {
        className: "Dialog"
        documentation: "Ubuntu.Components.Popups/%1.html".arg(className)

        TemplateRow {
            title: i18n.tr("Dialog")

            Button {
                text: i18n.tr("Open")
                width: units.gu(16)
                onClicked: PopupUtils.open(dialog, null)
            }
        }

        Component {
            id: dialog
            Dialog {
                id: dialogue

                title: "Sample Dialog"
                text: "Descriptive text goes here"

                TextField {
                    placeholderText: "Type like your lifes depends on it"
                }

                Row {
                    id: row
                    width: parent.width
                    spacing: units.gu(1)
                    Button {
                        width: parent.width/2 - row.spacing/2
                        text: "Cancel"
                        onClicked: PopupUtils.close(dialogue)
                    }
                    Button {
                        width: parent.width/2 - row.spacing/2
                        text: "Confirm"
                        color: LomiriColors.green
                        onClicked: PopupUtils.close(dialogue)
                    }
                }
            }
        }
    }
}
