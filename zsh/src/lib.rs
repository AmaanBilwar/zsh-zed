use zed_extension_api as zed;

struct ZshExtension;

impl zed::Extension for ZshExtension {
    fn new() -> Self {
        ZshExtension
    }
}

zed::register_extension!(ZshExtension);
