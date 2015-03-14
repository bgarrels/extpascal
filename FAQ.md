### How to debug an ExtPascal application in Object Pascal? ###
If you want to debug your ExtPascal application using Delphi/Lazarus/MSEide, it's very
simple. Put a break point somewhere in the code, in Home method by example. Then run your ExtPascal application from within IDE using debug mode. Open the browser and hit the URL address. If everything works fine, then the IDE will hold on the breakpoint. From there you could do whatever you need, run step by step, watching values, etc. During debugging, you
may forget the browser output because it should be off due the
response time out. But, your ExtPascal application is still running.

### How to catch JavaScript errors? ###
Requisites:
  1. Use Firefox to test your application.
  1. Compile your application using DEBUGJS conditional define. This define formats the JavaScript code making it easier to read and enables an ExtPascal window to capture errors in Ajax.

When an Ajax error occurs, ExtPascal automatically catch this error showing the JavaScript code, the message error and attempts to calculate the line number of the error within the window.

If the error occurs in a normal response (non-Ajax) Firefox shows a blank page, in this case press Ctrl+Shift+J to show the error console window, then click on the error link to see the JavaScript code.

For more resources to catch errors install Firebug.

### How to catch Ajax errors? ###
Override TExtThread.OnError method.

### How to use the refresh button of the browser? ###

In the beginning of Home method use:

```
procedure TMySession.Home; begin
  if not NewThread then begin <<< The Refresh button was pressed?
    Refresh;                  <<< Accept Browser Refresh freeing ExtPascal Objects
    NonExtObjects.Free;       <<< Free non ExtPascal Objects
  end;
  NonExtObjects := TNonExtObjects.Create; <<<< Create non ExtPascal Objects
  [: : :More code: : : : :]
end; 
```

### How to send all fields from several forms to server using Ajax? ###
For example:
```
Handler := AjaxForms(Server.Method, [AForm1, AForm2]);
```
Then all form values are serialized to server by the ExtJS framework itself. You don't need to parse manually on server side because all values are in the common name=value format
within the POST request content.

### How to mix HTML and ExtPascal? ###

Using the Html property of TExtPanel and subclasses.
For example:
```
  with TExtPanel.Create do begin
    RenderTo := 'body';
    Html     := '<table><td><a href=' + RequestHeader['SCRIPT_NAME'] + '/Proc target=blank><img src=' + ExtPath + '/examples/shared/screens/' + Gif + '.gif /></a></td><td>' + Desc + '</td></table>blabla</a></td></table>';
  end;
```

### How to shutdown an ExtPascal application? ###

ExtPascal has a specific method to do this, **Shutdown** method. This method requires a password: **extpascal**, that is hardcoded in ExtPascal source. To shutdown ExtPascalSamples3 by example use:
```
http://localhost/cgi-bin/ExtPascalSamples/shutdown?password=extpascal
```

### How to fix errors with this message? ###

```
**************************************************
Config Option: store:OAB
is refering a previous request,
it's not allowed in AJAX request or JS handler.
Use equivalent Public Property or Method instead.
**************************************************
```

This means that you were using a **Config Option** in Ajax, and this **is not allowed**! In the case "Store".

In ExtJS you can not use a Config Option in Ajax.

See the ExtJS documentation, there are distinctions between Config, public properties, public methods and events.

Config options are as **constructor parameters** in Pascal and can not be used after the creation of an object.

ExtPascal try to convert a Config option in a Public Method when possible.

For example for the Config "Title" are the method "SetTitle" and "GetTitle" and you should use them in Ajax instead of the "Title",
but ExtPascal have some intelligence, and in this case it accepts to use Title in Ajax. Converting automatically Title := 'bla'; to SetTitle('bla');
BUT for "Store" there is the method GetStore **but not** the method "SetStore".
So the assignment Store := DataStore; is not permitted in Ajax.
Then you MUST read the documentation and search the method that could do the same role.
In this case "Reconfigure" method should be used.

ExtPascal is not VCL/LCL based, it is ExtJS, so start reading the online documentation of ExtJS is very important.
ExtPascal just try to pascalize ExtJS. But, it never means that ExtJS's rules can be violated nor ignored, despite a bit intelligent within ExtPascal. So, understanding ExtJS as a GUI framework is a must before using ExtPascal. Even so, ExtPascal users must also understand RIA development i.e. Ajax, browser-server interaction, asynchronous communication, etc. Common Delphi knowledge which is very much desktop based app is not quite helpful in this regard.

### How to create controls at runtime? ###

There is this scenario in ExtPascalSamples.
http://extpascal.call.inf.br/cgi-bin/extpascalsamples.cgi/ShowAdvancedTabs.

Simply use an Ajax method and in it write.

```
TExtButton.AddTo(MyWindow.Items);
TExtBlaBla.AddTo(MyWindow.Items);
etc...
```

### How to adapt an ExtPascal app to iPhone? ###

Here's a screenshot of a Web app that adapts itself to the iPhone Simulator's screen size:

![http://web.me.com/macpgmr/ExtPascal/UnicodeLookup1.jpg](http://web.me.com/macpgmr/ExtPascal/UnicodeLookup1.jpg)

By designing or changing the page dimensions at runtime to be 320 pixels wide and including this tag in the page's 

&lt;head&gt;

 tag:



&lt;meta name="viewport" content="width=320; initial-scale=1.0; maximum- scale=1.0; user-scalable=0;"/&gt;



the page automatically expands to fit the screen's width exactly and prevents the user from slewing side to side. (That's the way special iPhone-oriented apps are usually done. See i.wund.com for an example.)

The only thing going to the iPhone with this app is HTML and JavaScript. The server app is Pascal, using ExtPascal. What you see in this screenshot is a TExtWindow.

You can make other adjustments for the iPhone too - just detect it by looking at the HTTP\_USER\_AGENT header that the browser sends to the server, which looks like something like this:

Mozilla/5.0 (iPod; U; CPU iPhone OS 3\_1\_3 like Mac OS X; en-us)
AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7E18 Safari/
528.16

Just search this string for "iPhone".

Source for this little Web app is here:

http://web.me.com/macpgmr/ExtPascal/UnicodeLookup1.zip

In creating this Web app I discovered that the Simulator's Safari can also access the host Mac's Apache server via "localhost". This means you can test a Web app without an actual iPhone OS device. And if your device is on your local network and your Mac has Web sharing turned on, the device can access the server via the Mac's IP on the network, for example http://10.0.1.4.

-Phil-

### Errata on ExtPascal-Advanced-Configuration doc ###

DocumentRoot "c:/Apache" in httpd-ssl.conf is wrong.

It should be: DocumentRoot ""c:/apache/www/"

As httpd.conf:
```
fastcgiexternalserver "c:/apache/www/webadmin" -host localhost:2015 -idle-timeout 3
```

CAUTION: Copy and pasting the conf from the PDF won't work - due to line wraps.