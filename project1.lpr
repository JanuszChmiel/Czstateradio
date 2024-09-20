program project1;
{$mode objfpc}
uses
  BrowserApp,JS,Classes,SysUtils,Web,webwidget,htmlwidgets;
type
TMyApplication=class(TBrowserApplication)
protected
procedure DoRun; override;
procedure stopp(_Sender:TObject;_Event:TJSEvent);
procedure butInput(_Sender:TObject;_Event:TJSEvent);
procedure but2Input(_Sender:TObject;_Event:TJSEvent);
procedure but3Input(_Sender:TObject;_Event:TJSEvent);
procedure but4Input(_Sender:TObject;_Event:TJSEvent);
procedure but5Input(_Sender:TObject;_Event:TJSEvent);
procedure but6Input(_Sender:TObject;_Event:TJSEvent);
public
curr_track : TJSHTMLAudioElement;
end;
procedure TMyApplication.DoRun;
var
  wp: TWebPage;
 tex: TTextWidget;
  stop: TButtonWidget;
  but: TButtonWidget;
  but2: TButtonWidget;
  but3: TButtonWidget;
  but4: TButtonWidget;
  but5: TButtonWidget;
  but6: TButtonWidget;
begin
wp:=TWebPage.Create(Self);
wp.Parent:=TViewPort.Create(Nil);
tex:=TTextWidget.Create(Self);
tex.Parent:=wp;
tex.Text:=' Zvolte si prosím rozhlasovou stanici kliknutím na příslušné tlačítko s názvem stanice.';
tex.Refresh;
stop:=TButtonWidget.Create(Self);
stop.Parent:=wp;
stop.OnClick:=@stopp;
stop.Text:='Stop';
stop.Refresh;
but:=TButtonWidget.Create(Self);
but.Parent:=wp;
but.OnClick:=@butInput;
but.Text:='Radiožurnál';
but.Refresh;
but2:=TButtonWidget.Create(Self);
but2.Parent:=wp;
but2.OnClick:=@but2Input;
but2.Text:='Dvojka';
but2.Refresh;
but3:=TButtonWidget.Create(Self);
but3.Parent:=wp;
but3.OnClick:=@but3Input;
but3.Text:='Vltava';
but3.Refresh;
but4:=TButtonWidget.Create(Self);
but4.Parent:=wp;
but4.OnClick:=@but4Input;
but4.Text:='Plus';
but4.Refresh;
but5:=TButtonWidget.Create(Self);
but5.Parent:=wp;
but5.OnClick:=@but5Input;
but5.Text:='Radiožurnál Sport';
but5.Refresh;
but6:=TButtonWidget.Create(Self);
but6.Parent:=wp;
but6.OnClick:=@but6Input;
but6.Text:='D-dur';
but6.Refresh;
  curr_track:=TJSHTMLAudioElement(document.createElement('audio'));
wp.Refresh;
end;
procedure TMyApplication.stopp(_Sender: TObject;_Event: TJSEvent);
begin
  curr_track.pause();
end;
procedure TMyApplication.butInput(_Sender: TObject;_Event: TJSEvent);
begin
           curr_track.src :='http://rozhlas.stream/radiozurnal_mp3_128.mp3';
  curr_track.load();
  curr_track.pause();
  curr_track.play();
end;
procedure TMyApplication.but2Input(_Sender: TObject;_Event: TJSEvent);
begin
           curr_track.src :='http://rozhlas.stream/dvojka_mp3_128.mp3';
  curr_track.load();
  curr_track.pause();
  curr_track.play();
end;
procedure TMyApplication.but3Input(_Sender: TObject;_Event: TJSEvent);
begin
           curr_track.src :='http://rozhlas.stream/vltava_mp3_128.mp3';
  curr_track.load();
  curr_track.pause();
  curr_track.play();
end;
procedure TMyApplication.but4Input(_Sender: TObject;_Event: TJSEvent);
begin
           curr_track.src :='http://rozhlas.stream/plus_mp3_128.mp3';
  curr_track.load();
  curr_track.pause();
  curr_track.play();
end;
procedure TMyApplication.but5Input(_Sender: TObject;_Event: TJSEvent);
begin
           curr_track.src :='http://rozhlas.stream/sport_mp3_128.mp3';
  curr_track.load();
  curr_track.pause();
  curr_track.play();
end;
procedure TMyApplication.but6Input(_Sender: TObject;_Event: TJSEvent);
begin
           curr_track.src :='http://rozhlas.stream/ov_mp3_128.mp3';
  curr_track.load();
  curr_track.pause();
  curr_track.play();
end;
var
Application:TMyApplication;
begin
Application:=TMyApplication.Create(nil);
Application.Initialize;
Application.Run;
end.
