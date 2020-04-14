local metadata =
{
	plugin =
	{
		format = "jar",
		manifest =
		{
			permissions = {},
			usesPermissions =
			{
				"android.permission.INTERNET",
				"android.permission.ACCESS_NETWORK_STATE",
			},
			usesFeatures =
			{
			},
			applicationChildElements =
			{
				-- Array of strings
				[[
					<activity android:configChanges="keyboard|keyboardHidden|orientation|screenSize"
                  android:name="com.apptracker.android.module.AppModuleActivity"
                  android:hardwareAccelerated="false">
        </activity>
				]]
			},
		},
	},
  coronaManifest = {
        dependencies = {
            ["shared.android.support.v4"] = "com.coronalabs",
        },
    },
}

return metadata
