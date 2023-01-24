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

Rectangle {
    id: circle

    color: LomiriColors.orange
    width: radius
    height: radius
    radius: units.gu(12)
    antialiasing: true
    gradient: Gradient {
        GradientStop { position: 0.0; color: Qt.lighter(circle.color, 1.3) }
        GradientStop { position: 1.0; color: circle.color }
    }
}
