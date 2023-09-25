function _tide_item_adb
    if test -n "$ANDROID_SERIAL"
        set -l detail (adb devices -l | rg $ANDROID_SERIAL | string replace -rf '(\S+).*product:(\S+).*' '$1 $2' | string trim)
        if test -z "$detail"
            _tide_print_item adb $tide_adb_icon' ' "$ANDROID_SERIAL offline"
        else
            _tide_print_item adb $tide_adb_icon' ' $detail
        end
    end
end
