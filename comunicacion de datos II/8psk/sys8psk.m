function varargout = sys8psk(varargin)
% SYS8PSK M-file for sys8psk.fig
%      SYS8PSK, by itself, creates a new SYS8PSK or raises the existing
%      singleton*.
%
%      H = SYS8PSK returns the handle to a new SYS8PSK or the handle to
%      the existing singleton*.
%
%      SYS8PSK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SYS8PSK.M with the given input arguments.
%
%      SYS8PSK('Property','Value',...) creates a new SYS8PSK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sys8psk_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sys8psk_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sys8psk

% Last Modified by GUIDE v2.5 16-Sep-2014 08:35:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sys8psk_OpeningFcn, ...
                   'gui_OutputFcn',  @sys8psk_OutputFcn, ...
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


% --- Executes just before sys8psk is made visible.
function sys8psk_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sys8psk (see VARARGIN)

% Choose default command line output for sys8psk
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sys8psk wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sys8psk_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function NumC_Callback(hObject, eventdata, handles)
% hObject    handle to NumC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NumC as text
%        str2double(get(hObject,'String')) returns contents of NumC as a double


% --- Executes during object creation, after setting all properties.
function NumC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NumC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in b1.
function b1_Callback(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a1;
try 
   
    f = str2double(get(handles.NumC,'String'));
    a1=randi(2,1,f);
catch exception
 f= 50;
 a1=randi(2,1,f);
end
l=cell(1,f);

    for j=1:f
       if (a1(1,j))==2;
           a1(1,j)=0;
           
       end
       mm=num2str(a1(1,j));
        l(1,j)=cellstr(mm);
      
    end
set(handles.v1,'Data',l);
axes(handles.axes1)
hold off;

 axes(handles.axes1)
        hold off;
        handles.bits=a1;
        g=[handles.bits 0 0];
        t=0:2*pi/149:2*pi;
        cp=[];sp=[];
        mod=[];mod1=[];bit=[];
for n=1:3:length(g);
    if g(n)==0 & g(n+1)==1 & g(n+2)==1
        die=cos(pi/8)*ones(1,150);
        die1=sin(pi/8)*ones(1,150);
        se=[zeros(1,50) ones(1,50) ones(1,50)];
        
    elseif g(n)==0 & g(n+1)==1 & g(n+2)==0
        die=cos(3*pi/8)*ones(1,150);
        die1=sin(3*pi/8)*ones(1,150);
        se=[zeros(1,50) ones(1,50) zeros(1,50)];
        
    elseif g(n)==0 & g(n+1)==0  & g(n+2)==0
        die=cos(5*pi/8)*ones(1,150);
        die1=sin(5*pi/8)*ones(1,150);
        se=[zeros(1,50) zeros(1,50) zeros(1,50)];
        
    elseif g(n)==0 & g(n+1)==0  & g(n+2)==1
        die=cos(7*pi/8)*ones(1,150);
        die1=sin(7*pi/8)*ones(1,150);
        se=[zeros(1,50) zeros(1,50) ones(1,50)];
        
    elseif g(n)==1 & g(n+1)==0  & g(n+2)==1
        die=cos(-7*pi/8)*ones(1,150);
        die1=sin(-7*pi/8)*ones(1,150);
        se=[ones(1,50) zeros(1,50) ones(1,50)];
        
    elseif g(n)==1 & g(n+1)==0  & g(n+2)==0
        die=cos(-5*pi/8)*ones(1,150);
        die1=sin(-5*pi/8)*ones(1,150);
        se=[ones(1,50) zeros(1,50) zeros(1,50)];
        
    elseif g(n)==1 & g(n+1)==1  & g(n+2)==0
        die=cos(-3*pi/8)*ones(1,150);
        die1=sin(-3*pi/8)*ones(1,150);
        se=[ones(1,50) ones(1,50) zeros(1,50)];
        
    elseif g(n)==1 & g(n+1)==1  & g(n+2)==1
        die=cos(-pi/8)*ones(1,150);
        die1=sin(-pi/8)*ones(1,150);
        se=[ones(1,50) ones(1,50) ones(1,50)];
        
    end
    c=cos(t);
    s=sin(t);
    cp=[cp die];    %Amplitude cosino
    sp=[sp -die1];   %Amplitude sino
    mod=[mod c];    %cosino carrier (Q)
    mod1=[mod1 s];  %sino carrier   (I)
end
bpsk=cp.*mod+sp.*mod1;

plot(bpsk,'LineWidth',1.5);grid on;
title('8PSK modulation')
axis([0 500 -1.5 1.5]); 




% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x1 = randi ([0 7],32,1); 
h1 = modem.pskmod(8); 
y1 = modulate (h1,x1); 
scatterplot(y1)
title('Constelación 8-PSK');