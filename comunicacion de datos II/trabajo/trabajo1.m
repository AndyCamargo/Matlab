function varargout = trabajo1(varargin)
% TRABAJO1 M-file for trabajo1.fig
%      TRABAJO1, by itself, creates a new TRABAJO1 or raises the existing
%      singleton*.
%
%      H = TRABAJO1 returns the handle to a new TRABAJO1 or the handle to
%      the existing singleton*.
%
%      TRABAJO1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRABAJO1.M with the given input arguments.
%
%      TRABAJO1('Property','Value',...) creates a new TRABAJO1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before trabajo1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to trabajo1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help trabajo1

% Last Modified by GUIDE v2.5 28-Feb-2014 09:13:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @trabajo1_OpeningFcn, ...
                   'gui_OutputFcn',  @trabajo1_OutputFcn, ...
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


% --- Executes just before trabajo1 is made visible.
function trabajo1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to trabajo1 (see VARARGIN)

% Choose default command line output for trabajo1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes trabajo1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = trabajo1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in play.
function play_Callback(hObject, eventdata, handles)



% --- Executes on button press in qam.
function qam_Callback(hObject, eventdata, handles)
global B
global g

N=63;
g=B
H = num2str(g);
bit=[];
EM=1;
EC=1;
ni = EM/EC;

for n=1:900
    if g(n)==0;
       die=ones(1,100);
       se=zeros(1,100);
    else g(n)==1;
       die=ni*ones(1,100);
       se=ones(1,100);
    end
    bit=[bit se];
end

f=0.5;
L=900;k=50;
t=0:2*pi/149:2*pi;length(t)
bit1=ones(1,k);
bit0=0*bit1;
symbol=ones(1,3*k);
mbit=[];mx=[];my=[];

for n=1:3:L
    if g(n)==0 && g(n+1)==0 && g(n+2)==0
       x=symbol;y=0*symbol; bit=[bit0 bit0 bit0];
   elseif g(n)==0 && g(n+1)==0 && g(n+2)==1
       x=2*symbol;y=0*symbol; bit=[bit0 bit0 bit1];
   elseif g(n)==0 && g(n+1)==1 && g(n+2)==0
       x=0*symbol;y=symbol; bit=[bit0 bit1 bit0];
   elseif g(n)==0 && g(n+1)==1 && g(n+2)==1
       x=0*symbol;y=2*symbol; bit=[bit0 bit1 bit1];
   
    elseif g(n)==1 && g(n+1)==0 && g(n+2)==0
       x=-1*symbol;y=0*symbol; bit=[bit1 bit0 bit0];
   elseif g(n)==1 && g(n+1)==0 && g(n+2)==1
       x=-2*symbol;y=0*symbol; bit=[bit1 bit0 bit1];
   elseif g(n)==1 && g(n+1)==1 && g(n+2)==0
       x=0*symbol;y=-1*symbol; bit=[bit1 bit1 bit0];
   elseif g(n)==1 && g(n+1)==1 && g(n+2)==1
       x=0*symbol;y=-2*symbol; bit=[bit1 bit1 bit1];    
    end
    mbit=[mbit bit];mx=[mx x];my=[my y];
end
v=0:2*pi/k:2*pi*L-2*pi/k;msync = mx+my*j;
qam =  real(msync).*cos(f*v)+imag(msync).*sin(f*v);


axes(handles.grafica1);
plot(qam);
grid on;
title('Voz Modulada 8-QAM');

B=qam;

d=zeros(1,length(g)/3);

    for n=1:length(g)/3
        q=g(3*n-2);
        p=g(3*n);
        imp=g(3*n-1);
        if (imp==0)&&(p==0)&&(q==0)
            d(n)= -0.765 + (-0.765*j);
        end
        if (imp==0)&&(p==0)&&(q==1)
            d(n)= -1.848 + (-1.848*j);
        end
        if (imp==0)&&(p==1)&&(q==1)
            d(n)= 1.848 + (-1.848*j);
        end    
        if (imp==0)&&(p==1)&&(q==0)
            d(n)= 0.765 + (-0.765*j);
        end     
        if (imp==1)&&(p==1)&&(q==0)
            d(n)= 0.765 + (0.765*j);
        end
        if (imp==1)&&(p==1)&&(q==1)
            d(n)= 1.848 + (1.848*j);
        end
        if (imp==1)&&(p==0)&&(q==1)
           d(n)= -1.848 + (1.848*j);
        end
        if (imp==1)&&(p==0)&&(q==0)
            d(n)= -0.765 + (0.765*j);
        end
    end
    
    axes(handles.const);
    plot(d,'b.');
    axis([-2.5 2.5 -2.5 2.5]);
    title('Constelacion 8QAM');
        grid on;   

% --- Executes on button press in mod.
function mod_Callback(hObject, eventdata, handles)
global B
global g
qam=B

SNR = str2double(get(handles.sn,'String'));  

Vn=awgn(qam,SNR,'measured');
B=Vn
axes(handles.grafica1);
plot(Vn);
title('Voz Modulada 8-QAM Con Ruido');
d=zeros(1,length(g)/3);

    for n=1:length(g)/3
        q=g(3*n-2);
        p=g(3*n);
        imp=g(3*n-1);
        if (imp==0)&&(p==0)&&(q==0)
            d(n)= -0.765 + (-0.765*j);
        end
        if (imp==0)&&(p==0)&&(q==1)
            d(n)= -1.848 + (-1.848*j);
        end
        if (imp==0)&&(p==1)&&(q==1)
            d(n)= 1.848 + (-1.848*j);
        end    
        if (imp==0)&&(p==1)&&(q==0)
            d(n)= 0.765 + (-0.765*j);
        end     
        if (imp==1)&&(p==1)&&(q==0)
            d(n)= 0.765 + (0.765*j);
        end
        if (imp==1)&&(p==1)&&(q==1)
            d(n)= 1.848 + (1.848*j);
        end
        if (imp==1)&&(p==0)&&(q==1)
           d(n)= -1.848 + (1.848*j);
        end
        if (imp==1)&&(p==0)&&(q==0)
            d(n)= -0.765 + (0.765*j);
        end
    end
    
    r=awgn(d,SNR);
    axes(handles.const);
    plot(r,'b.');
    axis([-2.5 2.5 -2.5 2.5]);
    title('Constelacion 8QAM');
        grid on;
        




function sn_Callback(hObject, eventdata, handles)
% hObject    handle to sn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sn as text
%        str2double(get(hObject,'String')) returns contents of sn as a double


% --- Executes during object creation, after setting all properties.
function sn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in demod.
function demod_Callback(hObject, eventdata, handles)

global B

y=B
m=8;
axes(handles.grafica2);
k = sqrt(m);
r = 2*(0:k-1) - k + 1;
[xi, yi] = meshgrid(r);
c = xi + j*flipud(yi);
c = c(:);

%now comparing the data from c's vector after rounding the input data.
% Allocate space for output
z = zeros(size(y));

% Slicer: Find closest constellation symbol, symbol-by-symbol.
for k = 1:length(y)
    [nil ind] = min(abs(y(k) - c));
    z(k) = ind - 1;
end

plot(z)
title('Señal Demodulada 8-QAM Con Ruido');
zoom on



% --- Executes on button press in grab.
function grab_Callback(hObject, eventdata, handles)
global B
recObj = audiorecorder;
recordblocking(recObj, 1);
B = recObj; 

global B
recObj=B

play(recObj);
myRecording = getaudiodata(recObj,'uint8');
y=myRecording;
l=length(myRecording)

axes(handles.grafica1);
plot(myRecording);
zoom on
title('Voz Analoga');

k=1;
for i=1:l
   dey=dec2bin(myRecording(i),8);
   for j=1:8
   y(k)=str2double(dey(j));
   k=k+1;
   end
       
end
g=y;
axes(handles.grafica2)
plot(y,'LineWidth',0.05);
B=y

title('Voz Digital');
