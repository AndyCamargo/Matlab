function varargout = asdfghj(varargin)
% ASDFGHJ MATLAB code for asdfghj.fig
%      ASDFGHJ, by itself, creates a new ASDFGHJ or raises the existing
%      singleton*.
%
%      H = ASDFGHJ returns the handle to a new ASDFGHJ or the handle to
%      the existing singleton*.
%
%      ASDFGHJ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ASDFGHJ.M with the given input arguments.
%
%      ASDFGHJ('Property','Value',...) creates a new ASDFGHJ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before asdfghj_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to asdfghj_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help asdfghj

% Last Modified by GUIDE v2.5 08-Nov-2014 06:39:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @asdfghj_OpeningFcn, ...
                   'gui_OutputFcn',  @asdfghj_OutputFcn, ...
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


% --- Executes just before asdfghj is made visible.
function asdfghj_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to asdfghj (see VARARGIN)

% Choose default command line output for asdfghj
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes asdfghj wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = asdfghj_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)


num = [ 1 ]
dem = [2.85 1]

gp=tf(num,dem)
M=[1]
M=feedback(gp,M)
step(M)
grid on;

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
I=str2double(get(handles.kp,'String'));
num = [ 1 ]
dem = [1 3 1]
gp=tf(num,dem)
M=[1]
kp=I
ki=0
kd=0
gc=pid(kp,ki,kd)
mc=feedback((gc*gp),M)
step(mc)
grid on;
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function kp_Callback(hObject, eventdata, handles)
% hObject    handle to kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kp as text
%        str2double(get(hObject,'String')) returns contents of kp as a double


% --- Executes during object creation, after setting all properties.
function kp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% Parametros del motor
Kt = 0.8995 ; Ke = 0.8995 ;
La = 1.129 ; Ra = 60.938 ;
J = 0.000689 ; B = 0.000817 ;
% FT del motor
n1 = Kt/J*La;
numM = n1;
d1 = (Ra/La)+(B/J);
d2 = ((Ra*B)+(Kt*Ke))/J*La;
denM = [1 d1 d2];
% Para las constantes del sistema K y Ks
K = 20;
Ks = 5;
% Se tiene lo siguiente:
numMT = K*Ks*numM;
denMT = denM;
% Para el diseño del PID se tiene:
Kp = 1.7308;
Kd = 0.08654;
Ki = 133.61;
numPID = [Kd Kp Ki];
denPID = [1 d1+Kd d2+Kp Ki];
% Hallando la FT del PID y del Motor
numSM = conv(numPID,numMT);
denSM = conv(denPID,denMT);
%El sistema final
[numF,denF]=feedback(numSM,denSM,1,1);
% Aplicando una señal Escalon en la Entrada
t=0:0.0001:1;
step(10*numF,denF,t)
grid


% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
