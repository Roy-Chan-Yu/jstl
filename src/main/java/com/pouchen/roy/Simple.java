package com.pouchen.roy;

import java.util.ListResourceBundle;

public class Simple extends ListResourceBundle{

	@Override
	protected Object[][] getContents() {
		return contents;
	}
	
	static final Object[][] contents = {
			{
				"colour.Violet","Violet"
			},
			{
				"colour.Indigo","Indigo"
			},
			{
				"colour.Blue","Blue"
			}
	};
	
}
