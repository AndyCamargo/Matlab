function varargout = serie(varargin)
% SERIE MATLAB code for serie.fig
%      SERIE, by itself, creates a new SERIE or raises the existing
%      singleton*.
%
%      H = SERIE returns the handle to a new SERIE or the handle to
%      the existing singleton*.
%
%      SERIE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SERIE.M with the given input arguments.
%
%      SERIE('Property','Value',...) creates a new SERIE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before serie_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to serie_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help serie

% Last Modified by GUIDE v2.5 31-Aug-2016 00:28:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @serie_OpeningFcn, ...
                   'gui_OutputFcn',  @serie_OutputFcn, ...
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


% --- Executes just before serie is made visible.
function serie_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to serie (see VARARGIN)

% Choose default command line output for serie
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes serie wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = serie_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)


global opcion;
opcion=get(handles.popupmenu1,'Value');
if(opcion==1)
n=str2double(get(handles.edit1,'String'));
x=-pi:0.01:pi;%limite de 
sum=0;
for k=1:2:n 
b(k)=4/(k*pi);
sum=sum+b(k)*sin(k*pi*x/4);
end
%f=(x<0).*(-1)+(x>=0).*1;
axes(handles.axes1);
%plot(x,f,'g',x,sum,'b');
plot(x,sum,'b');
elseif(opcion==2) 
n=str2double(get(handles.edit1,'String'));
x=-sin(1):0.01:1;%limite de 
sum=0;
for k=1:2:n 
b(k)=4/(k*pi);
sum=sum+b(k)*sin(k*pi*x/4);
end
%f=(x<0).*(-1)+(x>=0).*1;
axes(handles.axes1);
%plot(x,f,'g',x,sum,'b');
plot(x,sum,'b');
elseif(opcion==3)
n=str2double(get(handles.edit1,'String')); 
x=-pi:0.01:n;%limite de 
sum=0;
for k=1:2:n 
b(k)=4/(k*pi);
sum=1/2*sum+b(k) * sin(k*pi*x/4);
y=1/2-sin(x)/pi-sin(2*x)/(2*pi)-sin(3*x)/(3*pi)-sin(4*x)/(4*pi);
end

%f=(x<0).*(-1)+(x>=0).*1;
axes(handles.axes1);
%plot(x,f,'g',x,sum,'b');
plot(x,y,'b');

elseif(opcion==4)
n=str2double(get(handles.edit1,'String')); 
elseif(opcion==5)
n=str2double(get(handles.edit1,'String'));     
elseif(opcion==6)
n=str2double(get(handles.edit1,'String'));
x=-2:0.005:2;
sumparcial=0;
b=zeros(1,n);
for k=1:n
b(k)=2/(k*pi);
sumparcial=sumparcial+b(k)*sin(k*x*pi/2);
end
f=(x<0).*(-1-x/2)+(x>=0).*(1-x/2);
plot(x,f,'b',x,sumparcial,'g');
elseif(opcion==7)
n=str2double(get(handles.edit1,'String')); 

elseif(opcion==8)
n=str2double(get(handles.edit1,'String'));     
elseif(opcion==9)
n=str2double(get(handles.edit1,'String'));     
elseif(opcion==10)
n=str2double(get(handles.edit1,'String'));     
elseif(opcion==11)
n=str2double(get(handles.edit1,'String'));     
end 
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
