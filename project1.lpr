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
procedure but7Input(_Sender:TObject;_Event:TJSEvent);
procedure but8Input(_Sender:TObject;_Event:TJSEvent);
procedure but9Input(_Sender:TObject;_Event:TJSEvent);
procedure but10Input(_Sender:TObject;_Event:TJSEvent);
procedure but11Input(_Sender:TObject;_Event:TJSEvent);
procedure but12Input(_Sender:TObject;_Event:TJSEvent);
procedure but13Input(_Sender:TObject;_Event:TJSEvent);
procedure but14Input(_Sender:TObject;_Event:TJSEvent);
procedure but15Input(_Sender:TObject;_Event:TJSEvent);
procedure but16Input(_Sender:TObject;_Event:TJSEvent);
procedure but17Input(_Sender:TObject;_Event:TJSEvent);
procedure but18Input(_Sender:TObject;_Event:TJSEvent);
procedure but19Input(_Sender:TObject;_Event:TJSEvent);
procedure but20Input(_Sender:TObject;_Event:TJSEvent);
procedure but21Input(_Sender:TObject;_Event:TJSEvent);
procedure but22Input(_Sender:TObject;_Event:TJSEvent);
procedure but23Input(_Sender:TObject;_Event:TJSEvent);
procedure but24Input(_Sender:TObject;_Event:TJSEvent);
procedure but25Input(_Sender:TObject;_Event:TJSEvent);

procedure playurl(url: string);
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
but7: TButtonWidget;
but8: TButtonWidget;
but9: TButtonWidget;
but10: TButtonWidget;
but11: TButtonWidget;
but12: TButtonWidget;
but13: TButtonWidget;
but14: TButtonWidget;
but15: TButtonWidget;
but16: TButtonWidget;
but17: TButtonWidget;
but18: TButtonWidget;
but19: TButtonWidget;
but20: TButtonWidget;
but21: TButtonWidget;
but22: TButtonWidget;
but23: TButtonWidget;
but24: TButtonWidget;
but25: TButtonWidget;
begin
wp:=TWebPage.Create(Self);
wp.Parent:=TViewPort.Create(Nil);
tex:=TTextWidget.Create(Self);
tex.Parent:=wp;
tex.Text:=' Zvolte si prosím rozhlasovou stanici kliknutím na příslušné tlačítko s jejim názvem.';
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
but5.Text:='D dur';
but5.Refresh;
but6:=TButtonWidget.Create(Self);
but6.Parent:=wp;
but6.OnClick:=@but6Input;
but6.Text:='Jazz';
but6.Refresh;
but7:=TButtonWidget.Create(Self);
but7.Parent:=wp;
but7.OnClick:=@but7Input;
but7.Text:='Radio Wave';
but7.Refresh;
but8:=TButtonWidget.Create(Self);
but8.Parent:=wp;
but8.OnClick:=@but8Input;
but8.Text:='Junior';
but8.Refresh;
but9:=TButtonWidget.Create(Self);
but9.Parent:=wp;
but9.OnClick:=@but9Input;
but9.Text:='Rádio Pohoda';
but9.Refresh;
but10:=TButtonWidget.Create(Self);
but10.Parent:=wp;
but10.OnClick:=@but10Input;
but10.Text:='Rádio Praha';
but10.Refresh;
but11:=TButtonWidget.Create(Self);
but11.Parent:=wp;
but11.OnClick:=@but11Input;
but11.Text:='Brno';
but11.Refresh;
but12:=TButtonWidget.Create(Self);
but12.Parent:=wp;
but12.OnClick:=@but12Input;
but12.Text:='České Budějovice';
but12.Refresh	;
but13:=TButtonWidget.Create(Self);
but13.Parent:=wp;
but13.OnClick:=@but13Input;
but13.Text:='Hradec Králové';
but13.Refresh;
but14:=TButtonWidget.Create(Self);
but14.Parent:=wp;
but14.OnClick:=@but14Input;
but14.Text:='Karlovy Vary';
but14.Refresh;
but15:=TButtonWidget.Create(Self);
but15.Parent:=wp;
but15.OnClick:=@but15Input;
but15.Text:='Liberec';
but15.Refresh;
but16:=TButtonWidget.Create(Self);
but16.Parent:=wp;
but16.OnClick:=@but16Input;
but16.Text:='Olomouc';
but16.Refresh;
but17:=TButtonWidget.Create(Self);
but17.Parent:=wp;
but17.OnClick:=@but17Input;
but17.Text:='Ostrava';
but17.Refresh;
but18:=TButtonWidget.Create(Self);
but18.Parent:=wp;
but18.OnClick:=@but18Input;
but18.Text:='Pardubice';
but18.Refresh;
but19:=TButtonWidget.Create(Self);
but19.Parent:=wp;
but19.OnClick:=@but19Input;
but19.Text:='Plzeň';
but19.Refresh;
but20:=TButtonWidget.Create(Self);
but20.Parent:=wp;
but20.OnClick:=@but20Input;
but20.Text:='Regina DAB Praha';
but20.Refresh;
but21:=TButtonWidget.Create(Self);
but21.Parent:=wp;
but21.OnClick:=@but21Input;
but21.Text:='Region - Praha a střední Čechy';
but21.Refresh;
but22:=TButtonWidget.Create(Self);
but22.Parent:=wp;
but22.OnClick:=@but22Input;
but22.Text:='Sever';
but22.Refresh;
but23:=TButtonWidget.Create(Self);
but23.Parent:=wp;
but23.OnClick:=@but23Input;
but23.Text:='Vysočina';
but23.Refresh;
but24:=TButtonWidget.Create(Self);
but24.Parent:=wp;
but24.OnClick:=@but24Input;
but24.Text:='Zlín	';
but24.Refresh;
but25:=TButtonWidget.Create(Self);
but25.Parent:=wp;
but25.OnClick:=@but25Input;
but25.Text:='Radiožurnál Sport';
but25.Refresh;
  curr_track:=TJSHTMLAudioElement(document.createElement('audio'));
wp.Refresh;
end;
procedure TMyApplication.stopp(_Sender: TObject;_Event: TJSEvent);
begin
  curr_track.pause();
end;
procedure TMyApplication.butInput(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/radiozurnal_mp3_128.mp3');
end;
procedure TMyApplication.but2Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/dvojka_mp3_128.mp3');
end;
procedure TMyApplication.but3Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/vltava_mp3_128.mp3');
end;
procedure TMyApplication.but4Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/plus_mp3_128.mp3');
end;
procedure TMyApplication.but5Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/ddur_mp3_128.mp3');
end;
procedure TMyApplication.but6Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/jazz_mp3_128.mp3');
end;
procedure TMyApplication.but7Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/wave_mp3_128.mp3');
end;
procedure TMyApplication.but8Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/juniormaxi_mp3_128.mp3');
end;
procedure TMyApplication.but9Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/pohoda_mp3_128.mp3');
end;
procedure TMyApplication.but10Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/cro7_mp3_128.mp3');
end;
procedure TMyApplication.but11Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/brno_mp3_128.mp3');
end;
procedure TMyApplication.but12Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/cb_mp3_128.mp3');
end;
procedure TMyApplication.but13Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/hk_mp3_128.mp3');
end;
procedure TMyApplication.but14Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/kv_mp3_128.mp3');
end;
procedure TMyApplication.but15Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/liberec_mp3_128.mp3');
end;
procedure TMyApplication.but16Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/olomouc_mp3_128.mp3');
end;
procedure TMyApplication.but17Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/ov_mp3_128.mp3');
end;
procedure TMyApplication.but18Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/pardubice_mp3_128.mp3');
end;
procedure TMyApplication.but19Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/plzen_mp3_128.mp3');
end;
procedure TMyApplication.but20Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/regina_mp3_128.mp3');
end;
procedure TMyApplication.but21Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/region_mp3_128.mp3');
end;
procedure TMyApplication.but22Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/sever_mp3_128.mp3');
end;
procedure TMyApplication.but23Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/vysocina_mp3_128.mp3');
end;
procedure TMyApplication.but24Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/zlin_mp3_128.mp3');
end;
procedure TMyApplication.but25Input(_Sender: TObject;_Event: TJSEvent);
begin
playurl ('http://rozhlas.stream/sport_mp3_128.mp3');
end;
procedure TMyApplication.playurl (url:string);
begin
           curr_track.src :=url;
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
