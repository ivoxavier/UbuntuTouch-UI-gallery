/*
 * Copyright 2012 Canonical Ltd.
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

Template {
    objectName: "progressBarsTemplate"

    TemplateSection {
        title: i18n.tr("Progress Bar")
        className: "ProgressBar"
        documentation: "Ubuntu.Components/%1.html".arg(className)

        TemplateRow {
            title: i18n.tr("Standard")

            ProgressBar {
                id: progress
                objectName: "progressbar_standard"
                width: parent.width

                SequentialAnimation on value {
                    loops: Animation.Infinite
                    NumberAnimation {
                        from: progress.minimumValue
                        to: progress.maximumValue
                        duration: 2000
                    }
                    PauseAnimation {duration: 1000}
                }
            }
        }

        TemplateRow {
            title: i18n.tr("Infinite")

            ProgressBar {
                objectName: "progressbar_indeterminate"
                width: parent.width
                indeterminate: true
            }
        }

        TemplateRow {
            title: progressTypeFlip.indeterminate ? i18n.tr("Infinite") : i18n.tr("Standard")

            ProgressBar {
                id: progressTypeFlip
                objectName: "progressbar_nolabel"
                anchors.verticalCenter: parent.verticalCenter
                width: parent.width - (switchBox.width + label.width + 2 * parent.spacing)

                SequentialAnimation on value {
                    loops: Animation.Infinite
                    NumberAnimation {
                        from: progress.minimumValue
                        to: progress.maximumValue
                        duration: 2000
                    }
                    PauseAnimation {duration: 1000}
                }
            }
            Switch {
                id: switchBox
                checked: progressTypeFlip.indeterminate
                onTriggered: progressTypeFlip.indeterminate = !progressTypeFlip.indeterminate
            }
            Label {
                id: label
                text: progressTypeFlip.indeterminate ? i18n.tr("to standard") : i18n.tr("to infinite")
            }
        }
    }

    TemplateSection {
        title: i18n.tr("Activity Indicator")
        className: "ActivityIndicator"

        TemplateRow {
            title: i18n.tr("Standard")

            ActivityIndicator {
                objectName: "activityindicator_standard"
                anchors.leftMargin: units.gu(10)
                running: true
            }
        }
    }
}
