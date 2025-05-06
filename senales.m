function varargout = senales(varargin)
% SENALES M-file for senales.fig
%      SENALES, by itself, creates a new SENALES or raises the existing
%      singleton*.
%
%      H = SENALES returns the handle to a new SENALES or the handle to
%      the existing singleton*.
%
%      SENALES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SENALES.M with the given input arguments.
%
%      SENALES('Property','Value',...) creates a new SENALES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before senales_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to senales_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help senales

% Last Modified by GUIDE v2.5 22-Nov-2012 08:52:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @senales_OpeningFcn, ...
                   'gui_OutputFcn',  @senales_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before senales is made visible.
function senales_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to senales (see VARARGIN)

% Choose default command line output for senales
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes senales wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = senales_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function frecuenciaPortadora_Callback(hObject, eventdata, handles)
% hObject    handle to frecuenciaPortadora (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frecuenciaPortadora as text
%        str2double(get(hObject,'String')) returns contents of frecuenciaPortadora as a double


% --- Executes during object creation, after setting all properties.
function frecuenciaPortadora_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frecuenciaPortadora (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function frecuenciaModuladora_Callback(hObject, eventdata, handles)
% hObject    handle to frecuenciaModuladora (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frecuenciaModuladora as text
%        str2double(get(hObject,'String')) returns contents of frecuenciaModuladora as a double


% --- Executes during object creation, after setting all properties.
function frecuenciaModuladora_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frecuenciaModuladora (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function amplitudmoduladora_Callback(hObject, eventdata, handles)
% hObject    handle to amplitudmoduladora (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amplitudmoduladora as text
%        str2double(get(hObject,'String')) returns contents of amplitudmoduladora as a double


% --- Executes during object creation, after setting all properties.
function amplitudmoduladora_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amplitudmoduladora (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function amplitudPortadora_Callback(hObject, eventdata, handles)
% hObject    handle to amplitudPortadora (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amplitudPortadora as text
%        str2double(get(hObject,'String')) returns contents of amplitudPortadora as a double


% --- Executes during object creation, after setting all properties.
function amplitudPortadora_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amplitudPortadora (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in PB_graficar.
function PB_graficar_Callback(hObject, eventdata, handles)
% hObject    handle to PB_graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global opcion;

    
if(opcion==1)   %==am

    
    fc=get(handles.frecuenciaPortadora,'String');
    fc=eval(fc);
    fm=get(handles.frecuenciaModuladora,'String');
    fm=eval(fm);
    Ec=get(handles.amplitudPortadora,'String');
    Ec=eval(Ec);
    Em=get(handles.amplitudmoduladora,'String');
    Em=eval(Em);
    
    t=(0:100)/4096;

    Sc=Ec*sin(2*pi*fc*t);
    Sm=Em*sin(2*pi*fm*t);
    SM=(Ec+Sm).*sin(2*pi*fc*t);
    esp=abs(fft(SM));

    axes(handles.G_asc);
    plot(Sc,'r');    
    title('señal portadora'),grid off

    axes(handles.G_asm);
    plot(Sm,'y');
    title('señal moduladora'),grid off

    axes(handles.G_asm1);
    plot(SM,'g');
    title('señal modulada'),grid off

    axes(handles.G_aespectro);
    plot(esp,'b');
    title('señal espectro de la señal'),grid off
    
elseif (opcion==2)
    
    f=get(handles.frecuenciaPortadora,'String');
    f=eval(f);
    fc=get(handles.frecuenciaModuladora,'String');
    fc=eval(fc);
    fs=get(handles.amplitudPortadora,'String');
    fs=eval(fs);
    

    dev=20;

    t=0:0.001:0.5;
    
    x=cos(2*pi*f*t);
    c=cos(2*pi*fc*t);
    y=fmmod(x,fc,fs,dev);

    
   
    Y = abs(fft(y));
    
    axes(handles.G_asc);
    plot(c,'r');    
    title('señal portadora'),grid off

    axes(handles.G_asm);
    plot(x,'y');
    title('señal moduladora'),grid off

    axes(handles.G_asm1);
    plot(y,'g');
    title('señal modulada'),grid off

    axes(handles.G_aespectro);
    plot(Y,'b');
    title('señal espectro de la señal'),grid off
    
    
elseif (opcion==3)
        
    f=get(handles.frecuenciaPortadora,'String');
    f=eval(f);
    fc=get(handles.frecuenciaModuladora,'String');
    fc=eval(fc);
    fs=get(handles.amplitudPortadora,'String');
    fs=eval(fs);
    

    dev=20;

    t=0:0.001:0.5;
    
    x=cos(2*pi*f*t);
    c=cos(2*pi*fc*t);
    y=pmmod(x,fc,fs,dev);

    
   
    Y = abs(fft(y));
    
    axes(handles.G_asc);
    plot(c,'r');    
    title('señal portadora'),grid off

    axes(handles.G_asm);
    plot(x,'y');
    title('señal moduladora'),grid off

    axes(handles.G_asm1);
    plot(y,'g');
    title('señal modulada'),grid off

    axes(handles.G_aespectro);
    plot(Y,'b');
    title('señal espectro de la señal'),grid off
    
elseif(opcion==4)
        
    
    bin=get(handles.frecuenciaPortadora,'string');
    bin=str2num(bin);
    f=get(handles.frecuenciaModuladora,'string');
    f=str2double(f);
    k=1000;

    t=0:2*pi/(k-1):2*pi;

    L = length(bin);sig=cos(f*t);
    bit1=ones(1,k);bit0=zeros(1,k);
    mbit=[];mcw=[];
    
    for n=1:L;
        if bin(n)==0;
           cw=sig;bit=bit0;
        else 
           cw=2*sig;bit=bit1;
        end
       mbit=[mbit bit];
       mcw=[mcw cw];
    end
    ask=mcw;

    

    s=length(mcw);mrec=[];

    for m=1:k:s
        vm=abs(mcw(m));
       if vm > 1.5
          rec=bit1;
       elseif vm < 1.2
          rec=bit0;
        end
        mrec=[mrec rec];
    end
    deask=mrec;
    
    axes(handles.G_Binario);
    plot(mbit,'r','linewidth',2);
    axis([0  k*L -0.5 1.5]);
    grid off;
    title('Señal de entrada');
    
    axes(handles.G_Digital);
    plot(ask,'m','linewidth',1.5);
    axis([0  k*L -2.5 2.5]);
    grid off;
    title('ASK modulacion');
    
elseif(opcion==5)


    bin=get(handles.frecuenciaPortadora,'String');
    bin=str2num(bin);
    fh=get(handles.frecuenciaModuladora,'String');  
    fh=str2double(fh);
    fl=get(handles.amplitudPortadora,'String');
    fl=str2double(fl);


    k=1000;

    t=0:2*pi/(k-1):2*pi;

    L = length(bin);sigh=cos(fh*t);sigl=cos(fl*t);
    bit1=ones(1,k);bit0=zeros(1,k);
    mbit=[];mcw=[];

    for n=1:L;
        if bin(n)==0;
           cw=sigl;bit=bit0;
        else 
           cw=sigh;bit=bit1;
        end
       mbit=[mbit bit];
       mcw=[mcw cw];
    end
    fsk=mcw;

    s=length(mcw);b=round(k/fh);mrec=[];
    for m=1:k:s
        vm=abs(mcw(m));vmb=abs(mcw(m+b));
        if vmb >= 0.95*vm   
           rec=bit1;
        else
            rec=bit0;
        end
        mrec=[mrec rec];
    end
    defsk=mrec;

    axes(handles.G_Binario);
    plot(mbit,'r','linewidth',2);
    axis([0  k*L -0.5 1.5]);
    grid off;
    title('Señal de entrada');

    axes(handles.G_Digital);
    plot(fsk,'m','linewidth',1.5);
    axis([0  k*L -1.5 1.5]);
    grid off;
    title('FSK modulacion');

elseif(opcion==6)
    
    bin = get(handles.frecuenciaPortadora,'string');
    amp = get(handles.amplitudPortadora,'string');
    freq0 = get(handles.frecuenciaModuladora,'string');
    

    a = str2double(amp);
    f = str2double(freq0);
    %f1 = str2double(freq1);
    g = str2num(bin);

    z=100;
    y=[0:1:(z-1)*length(g)];
    cw0=a*sin(2*pi*f*y/z);

    t=0:2*pi/99:2*pi;
    cp=[];sp=[];
    mod=[];mod1=[];bit=[];

    for n=1:length(g);
        if g(n)==0;
            die=-ones(1,100);   
            se=zeros(1,100);    
        else g(n)==1;
            die=ones(1,100);    
            se=ones(1,100);     
        end
        c=a*sin(f*t);
        cp=[cp die];
        mod=[mod c];
        bit=[bit se];
    end

    bpsk=cp.*mod;

    axes(handles.G_Binario);plot(bit,'r','linewidth',2);axis([0 100*length(g) -2 2]);grid off;title('Señal de entrada');
    axes(handles.G_Digital);plot(bpsk,'m','linewidth',1.5);grid off;title('PSK modulacion');
    
elseif(opcion==7)

    bin = get(handles.frecuenciaPortadora,'string');
    freq1=1;
    freq0 = get(handles.frecuenciaModuladora,'string');
    amp = get(handles.amplitudPortadora,'string');
    ampi = get(handles.amplitudmoduladora,'string');

    a = str2double(amp);
    ai= str2double(ampi);
    f = str2double(freq0);
    f1 = str2double(freq1);
    g = str2num(bin);


    if ai > a
        aaxis = ai;
    elseif a > ai
        aaxis = a;
    else
        aasix =a;
    end


    ni=ai/a;


    z=150;
    y=[0:1:(z-1)*length(g)];
    cw0=a*sin(2*pi*f*y/z);
    cw1=ai*sin(2*pi*f*y/z);


    
    l=length(g);
    r=l/3;
    re=ceil(r);
    val=re-r;
    f=1;
    

    t=0:2*pi/149:2*pi;
    cp=[];sp=[];
    mod=[];mod1=[];bit=[];

    for n=1:3:length(g)
        if g(n)==0 && g(n+1)==1 && g(n+2)==1
            die=ni*cos(pi/2)*ones(1,150);
            die1=ni*sin(pi/2)*ones(1,150);
            se=[zeros(1,50) ones(1,50) ones(1,50)];

        elseif g(n)==0 && g(n+1)==1 && g(n+2)==0
            die=cos(pi/2)*ones(1,150);
            die1=sin(pi/2)*ones(1,150);
            se=[zeros(1,50) ones(1,50) zeros(1,50)];

        elseif g(n)==0 && g(n+1)==0  && g(n+2)==0
            die=cos(2*pi)*ones(1,150);
            die1=sin(2*pi)*ones(1,150);
            se=[zeros(1,50) zeros(1,50) zeros(1,50)];

        elseif g(n)==0 && g(n+1)==0  && g(n+2)==1
            die=ni*cos(2*pi)*ones(1,150);
            die1=ni*sin(2*pi)*ones(1,150);
            se=[zeros(1,50) zeros(1,50) ones(1,50)];

        elseif g(n)==1 && g(n+1)==0  && g(n+2)==1
            die=ni*cos(pi)*ones(1,150);
            die1=ni*sin(pi)*ones(1,150);
            se=[ones(1,50) zeros(1,50) ones(1,50)];

        elseif g(n)==1 && g(n+1)==0  && g(n+2)==0
            die=cos(pi)*ones(1,150);
            die1=sin(pi)*ones(1,150);
            se=[ones(1,50) zeros(1,50) zeros(1,50)];

        elseif g(n)==1 && g(n+1)==1  && g(n+2)==0
            die=cos(3*pi/2)*ones(1,150);
            die1=sin(3*pi/2)*ones(1,150);
            se=[ones(1,50) ones(1,50) zeros(1,50)];

        elseif g(n)==1 && g(n+1)==1  && g(n+2)==1
            die=ni*cos(3*pi/2)*ones(1,150);
            die1=ni*sin(3*pi/2)*ones(1,150);
            se=[ones(1,50) ones(1,50) ones(1,50)];

        end
       c=a*cos(f*t);
       s=a*sin(f*t);
       cp=[cp die];    %Amplitude coseno
       sp=[sp die1];  %Amplitude seno
       mod=[mod c];    %coseno carrier (Q)
       mod1=[mod1 s];  %seno carrier   (I)
       bit = [bit se];
       end
    qam=cp.*mod1+sp.*mod;

    axes(handles.G_Binario);plot(bit,'LineWidth',1.5);grid off;
    title('Señal de entrada')
    axis([0 50*length(g) -2 2]);

    axes(handles.G_Digital);plot(qam,'LineWidth',1.5);grid off;
    title('QAM modulacion')

end 
        

% --- Executes on selection change in senalanaloga.
function senalanaloga_Callback(hObject, eventdata, handles)
% hObject    handle to senalanaloga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns senalanaloga contents as cell array
%        contents{get(hObject,'Value')} returns selected item from senalanaloga
global opcion;
func=get(handles.senalanaloga,'Value');
switch func
    case 1
        opcion=1;   %=am
        set(handles.frecuenciap,'String','Frecuencia Portadora');
        set(handles.frecuenciam,'String','Frecuencia Moduladora');
        set(handles.amplitudp,'String','Amplitud Portadora ');
        set(handles.amplitudp,'String','Amplitud Moduladora ');
        
        set(handles.frecuenciap,'visible','on');
        set(handles.frecuenciam,'visible','on');
        set(handles.amplitudp,'visible','on');
        set(handles.amplitudm,'visible','on');
        
        
        set(handles.frecuenciaPortadora,'visible','on');
        set(handles.frecuenciaModuladora,'visible','on');
        set(handles.amplitudPortadora,'visible','on');
        set(handles.amplitudmoduladora,'visible','on');
        set(handles.PB_graficar,'visible','on');
        set(handles.G_Binario,'visible','off');
        set(handles.G_Digital,'visible','off');
        
        set(handles.G_asc,'visible','on');
        set(handles.G_asm,'visible','on');
        set(handles.G_asm1,'visible','on');
        set(handles.G_aespectro,'visible','on');
        
        
    case 2 
        
        opcion=2;
        set(handles.frecuenciap,'String','Ingrese frecuencia de la moduladora');
        set(handles.frecuenciam,'String','Ingrese frecuencia de la señal');
        set(handles.amplitudp,'String','Ingrese frecuencia de la SP Amplitud');
        
        set(handles.frecuenciap,'visible','on');
        set(handles.frecuenciam,'visible','on');
        set(handles.amplitudp,'visible','on');
        set(handles.amplitudm,'visible','off');
        
        set(handles.frecuenciaPortadora,'visible','on');
        set(handles.frecuenciaModuladora,'visible','on');
        set(handles.amplitudPortadora,'visible','on');
        set(handles.amplitudmoduladora,'visible','off');
        set(handles.PB_graficar,'visible','on');
        set(handles.G_Binario,'visible','off');
        set(handles.G_Digital,'visible','off');
        
        set(handles.G_asc,'visible','on');
        set(handles.G_asm,'visible','on');
        set(handles.G_asm1,'visible','on');
        set(handles.G_aespectro,'visible','on');
        
    case 3 
        
        opcion=3;
        set(handles.frecuenciap,'String','Ingrese frecuencia de la moduladora');
        set(handles.frecuenciam,'String','Ingrese frecuencia de la señal');
        set(handles.amplitudp,'String','Ingrese frecuencia de la señal portadora');
        
        set(handles.frecuenciap,'visible','on');
        set(handles.frecuenciam,'visible','on');
        set(handles.amplitudp,'visible','on');
        set(handles.amplitudm,'visible','off');
        
        
        set(handles.frecuenciaPortadora,'visible','on');
        set(handles.frecuenciaModuladora,'visible','on');
        set(handles.amplitudPortadora,'visible','on');
        set(handles.amplitudmoduladora,'visible','off');
        set(handles.PB_graficar,'visible','on');
        set(handles.G_Binario,'visible','off');
        set(handles.G_Digital,'visible','off');       
        
        set(handles.G_asc,'visible','on');
        set(handles.G_asm,'visible','on');
        set(handles.G_asm1,'visible','on');
        set(handles.G_aespectro,'visible','on');
        
        
          
end

% --- Executes during object creation, after setting all properties.
function senalanaloga_CreateFcn(hObject, eventdata, handles)
% hObject    handle to senalanaloga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in senaldigital.
function senaldigital_Callback(hObject, eventdata, handles)
% hObject    handle to senaldigital (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns senaldigital contents as cell array
%        contents{get(hObject,'Value')} returns selected item from senaldigital
global opcion;
func=get(handles.senaldigital,'Value');
switch func
    case 1
        
        opcion=4;   %=am
        set(handles.frecuenciap,'String','Codigo binario');
        set(handles.frecuenciam,'String','Frecuencia');
        
        
        set(handles.frecuenciap,'visible','on');
        set(handles.frecuenciam,'visible','on');
        set(handles.amplitudp,'visible','off');
        set(handles.amplitudm,'visible','off');
        
        
        set(handles.frecuenciaPortadora,'visible','on');
        set(handles.frecuenciaModuladora,'visible','on');
        set(handles.amplitudPortadora,'visible','off');
        set(handles.amplitudmoduladora,'visible','off');
        set(handles.PB_graficar,'visible','on');
        
        set(handles.G_Binario,'visible','on');
        set(handles.G_Digital,'visible','on');
        
        set(handles.G_asc,'visible','off');
        set(handles.G_asm,'visible','off');
        set(handles.G_asm1,'visible','off');
        set(handles.G_aespectro,'visible','off');
        
    case 2
        
        opcion=5;   %=am
        set(handles.frecuenciap,'String','Codigo binario');
        set(handles.frecuenciam,'String','Frecuencia 1');
        set(handles.amplitudp,'String','Frecuencia 2');
        
        
        set(handles.frecuenciap,'visible','on');
        set(handles.frecuenciam,'visible','on');
        set(handles.amplitudp,'visible','on');
        set(handles.amplitudm,'visible','off');
        
        
        set(handles.frecuenciaPortadora,'visible','on');
        set(handles.frecuenciaModuladora,'visible','on');
        set(handles.amplitudPortadora,'visible','on');
        set(handles.amplitudmoduladora,'visible','off');
        set(handles.PB_graficar,'visible','on');
        
        set(handles.G_Binario,'visible','on');
        set(handles.G_Digital,'visible','on');
        
        set(handles.G_asc,'visible','off');
        set(handles.G_asm,'visible','off');
        set(handles.G_asm1,'visible','off');
        set(handles.G_aespectro,'visible','off');
        
    case 3
        
        opcion=6;   
        set(handles.frecuenciap,'String','Codigo binario');
        set(handles.frecuenciam,'String','Frecuencia ');
        set(handles.amplitudp,'String','Amplitud ');
        
        
        set(handles.frecuenciap,'visible','on');
        set(handles.frecuenciam,'visible','on');
        set(handles.amplitudp,'visible','on');
        set(handles.amplitudm,'visible','off');
        
        
        set(handles.frecuenciaPortadora,'visible','on');
        set(handles.frecuenciaModuladora,'visible','on');
        set(handles.amplitudPortadora,'visible','on');
        set(handles.amplitudmoduladora,'visible','off');
        set(handles.PB_graficar,'visible','on');
        
        set(handles.G_Binario,'visible','on');
        set(handles.G_Digital,'visible','on');
        
        set(handles.G_asc,'visible','off');
        set(handles.G_asm,'visible','off');
        set(handles.G_asm1,'visible','off');
        set(handles.G_aespectro,'visible','off');
        
    case 4
        
        opcion=7;   
        set(handles.frecuenciap,'String','Codigo binario');
        set(handles.frecuenciam,'String','Frecuencia ');
        set(handles.amplitudp,'String','Amplitud 1');
        set(handles.amplitudm,'String','Amplitud 2');
        
        
        set(handles.frecuenciap,'visible','on');
        set(handles.frecuenciam,'visible','on');
        set(handles.amplitudp,'visible','on');
        set(handles.amplitudm,'visible','on');
        
        
        set(handles.frecuenciaPortadora,'visible','on');
        set(handles.frecuenciaPortadora,'String','0 0 0 0 0 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 0 1 1 1');
        set(handles.frecuenciaModuladora,'visible','on');
        set(handles.amplitudPortadora,'visible','on');
        set(handles.amplitudmoduladora,'visible','on');
        set(handles.PB_graficar,'visible','on');
        
        set(handles.G_Binario,'visible','on');
        set(handles.G_Digital,'visible','on');
        
        set(handles.G_asc,'visible','off');
        set(handles.G_asm,'visible','off');
        set(handles.G_asm1,'visible','off');
        set(handles.G_aespectro,'visible','off');
        
end

% --- Executes during object creation, after setting all properties.
function senaldigital_CreateFcn(hObject, eventdata, handles)
% hObject    handle to senaldigital (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
