function varargout = FUNCTRANSGRAF3D(varargin)
% FUNCTRANSGRAF3D M-file for FUNCTRANSGRAF3D.fig
%      FUNCTRANSGRAF3D, by itself, creates a new FUNCTRANSGRAF3D or raises the existing
%      singleton*.
%
%      H = FUNCTRANSGRAF3D returns the handle to a new FUNCTRANSGRAF3D or the handle to
%      the existing singleton*.
%
%      FUNCTRANSGRAF3D('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUNCTRANSGRAF3D.M with the given input arguments.
%
%      FUNCTRANSGRAF3D('Property','Value',...) creates a new FUNCTRANSGRAF3D or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FUNCTRANSGRAF3D_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FUNCTRANSGRAF3D_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FUNCTRANSGRAF3D

% Last Modified by GUIDE v2.5 22-Apr-2013 02:03:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FUNCTRANSGRAF3D_OpeningFcn, ...
                   'gui_OutputFcn',  @FUNCTRANSGRAF3D_OutputFcn, ...
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


% --- Executes just before FUNCTRANSGRAF3D is made visible.
function FUNCTRANSGRAF3D_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FUNCTRANSGRAF3D (see VARARGIN)

% Choose default command line output for FUNCTRANSGRAF3D
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FUNCTRANSGRAF3D wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FUNCTRANSGRAF3D_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
f=get(handles.edit1,'string');
g=get(handles.edit2,'string');
f=str2num(f);
g=str2num(g);
a=sum(f);
b=sum(g);                                           %valor=Eval(funcion);                                        %m=sym(s);                                     %vector=str2num(valor)
[x,y]=meshgrid(-2:0.2:2);
if a<=3||b<=3
z=x.*exp(-(x.^a+y.^b));
else
if a<=6||b<=6
a=max(f)-3;
b=max(g)-1;
z=x.^a+b;
else
if a<=9||b<=9
a1=max(f);
b1=max(g); 
c=a-a1;
d=b-b1;
z=sqrt(d)+c;
else
if a<=12||b<=12
a1=max(f);
b1=max(g); 
c=a-a1-5;
d=b-b1-5;
z=sqrt(c)+d;  
end
end
end
end

surf(x,y,z),shading flat%grafica con textura
rotate3d on
colormap(copper);



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
