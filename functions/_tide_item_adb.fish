function _tide_item_adb
    if test -n "$ANDROID_SERIAL"
        _tide_print_item adb $tide_adb_icon' ' $ANDROID_SERIAL
    end
end
