function varargout = FUNCIONDETRANSFERENCIA3DTEORIA(varargin)
% FUNCIONDETRANSFERENCIA3DTEORIA M-file for FUNCIONDETRANSFERENCIA3DTEORIA.fig
%      FUNCIONDETRANSFERENCIA3DTEORIA, by itself, creates a new FUNCIONDETRANSFERENCIA3DTEORIA or raises the existing
%      singleton*.
%
%      H = FUNCIONDETRANSFERENCIA3DTEORIA returns the handle to a new FUNCIONDETRANSFERENCIA3DTEORIA or the handle to
%      the existing singleton*.
%
%      FUNCIONDETRANSFERENCIA3DTEORIA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUNCIONDETRANSFERENCIA3DTEORIA.M with the given input arguments.
%
%      FUNCIONDETRANSFERENCIA3DTEORIA('Property','Value',...) creates a new FUNCIONDETRANSFERENCIA3DTEORIA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FUNCIONDETRANSFERENCIA3DTEORIA_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FUNCIONDETRANSFERENCIA3DTEORIA_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FUNCIONDETRANSFERENCIA3DTEORIA

% Last Modified by GUIDE v2.5 16-Apr-2013 11:28:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FUNCIONDETRANSFERENCIA3DTEORIA_OpeningFcn, ...
                   'gui_OutputFcn',  @FUNCIONDETRANSFERENCIA3DTEORIA_OutputFcn, ...
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


% --- Executes just before FUNCIONDETRANSFERENCIA3DTEORIA is made visible.
function FUNCIONDETRANSFERENCIA3DTEORIA_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FUNCIONDETRANSFERENCIA3DTEORIA (see VARARGIN)

% Choose default command line output for FUNCIONDETRANSFERENCIA3DTEORIA
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FUNCIONDETRANSFERENCIA3DTEORIA wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FUNCIONDETRANSFERENCIA3DTEORIA_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Funcion_Callback(hObject, eventdata, handles)
% hObject    handle to Funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Funcion as text
%        str2double(get(hObject,'String')) returns contents of Funcion as a double


% --- Executes during object creation, after setting all properties.
function Funcion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
x=-10:0.1:10;
syms s;
magn=get(handles.Funcion,'String');
magn=eval(magn);
w=input('w');
y=sqrt(w*w+1);
y1=sqrt(w*w+16);
g=y/y1;
axes(handles.trans);
plot3(x,s,magn);


% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


x=-10:0.1:10;
syms s;
magn=get(handles.Funcion,'String');
magn=eval(magn);
axes(handles.trans);
plot3(x,s,magn);
