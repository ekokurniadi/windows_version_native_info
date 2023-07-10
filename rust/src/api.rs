use os_info::*;
use tokio::*;

#[derive(Debug, Clone)]
pub struct WindowsOSInfo {
    pub os_type: String,
    pub version: String,
    pub edition: String,
    pub code_name: String,
    pub bitness: String,
    pub architecture: String,
}

impl WindowsOSInfo {
    fn new(
        os_type: String,
        version: String,
        edition:String,
        code_name: String,
        bitness: String,
        architecture: String,
    ) -> Self {
        WindowsOSInfo {
            os_type,
            version,
            edition,
            code_name,
            bitness,
            architecture,
        }
    }
}

#[main]
pub async fn get_windows_info() -> Result<WindowsOSInfo, Box<dyn std::error::Error>>{
    let info = get();

    println!("{:?}",info);

    let windows_info = WindowsOSInfo::new(
        info.os_type().to_string(),
        info.version().to_string(),
        info.edition().unwrap_or("unknown").to_string(),
        info.codename().unwrap_or("unknown").to_string(),
        info.bitness().to_string(),
        info.architecture().unwrap_or("unknown").to_string(),
    );

    Ok(windows_info)
}
