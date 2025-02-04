Export/Import Tool (V4.9) for OpenCart 2.x
==========================================

The Import/Export Tool allows the admin user to do a bulk export
of categories, products, options, attributes, filters and customers to an Excel spreadsheet file.
The spreadsheet file can be edited offline and then be re-imported to the OpenCart database.

New features include:

    The Import can be incremental, that is, data is updated or added to the OpenCart server. 
    Or it can be non-incremental which means all old data is first deleted before the Import.

    The Export can be limited to certain data ranges only for products and categories.

    Multiple languages are supported, too.



Requirements and Limitations
============================

PHP Version 7.2 or higher is required.

Memory requirements can be quite high.

Not every shared web hosting account supports a high process memory usage. 
Therefore, if you use a basic shared web hosting account, 
no more than a few thousand products can be exported or imported at a time. 
Use a more dedicated web hosting account if a higher number of products 
are to be processed in one go. Or export and import multiple times in smaller batches.


Installation
============

Before installation, make sure the OpenCart Extension Installer is correctly
configured, especially for the FTP settings, including the FTP Root.
See <http://docs.opencart.com/extension/installer/> for more details!

In the OpenCart admin backend, do the following steps:

Step 1)
	Go to Extensions > Extension Installer

Step 2)
	Upload the opencart-2-x-export-import-multilingual-3-x.ocmod.zip

Step 3)
	Go to Extensions > Modifications
	You should see an entry for this Export/Import tool

Step 4)
	Click on the Refresh button (top right of the page)

Step 5)
	Go to System > Users > User Group > Edit Administrator

Step 6)
	Set access and modify permissions for 'tool/export_import'

That's it!

If during the install you get an error saying "Could not connect as ......" 
while uploading this zipped extension via the Extension Installer, 
you probably have the FTP support disabled from your hosting. 
In that case you may try the following OpenCart Extension Installer fix first:

<http://www.opencart.com/index.php?route=extension/extension/info&extension_id=18892>




Further help and customized versions
====================================

This tool has been successfully tested for a standard OpenCart 2.x versions.
Don't use other Opencart versions with this module.

If you need a customized version of the Export/Import Tool,
let us know and we can create one for a charge.

You can contact us at <http://www.mhccorp.com>

