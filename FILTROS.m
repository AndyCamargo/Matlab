function varargout = FILTROS(varargin)
% FILTROS M-file for FILTROS.fig
%      FILTROS, by itself, creates a new FILTROS or raises the existing
%      singleton*.
%
%      H = FILTROS returns the handle to a new FILTROS or the handle to
%      the existing singleton*.
%
%      FILTROS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FILTROS.M with the given input arguments.
%
%      FILTROS('Property','Value',...) creates a new FILTROS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FILTROS_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FILTROS_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FILTROS

% Last Modified by GUIDE v2.5 02-May-2013 08:11:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FILTROS_OpeningFcn, ...
                   'gui_OutputFcn',  @FILTROS_OutputFcn, ...
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


% --- Executes just before FILTROS is made visible.
function FILTROS_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FILTROS (see VARARGIN)

% Choose default command line output for FILTROS
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FILTROS wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FILTROS_OutputFcn(hObject, eventdata, handles) 
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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Graficalas4.
function Graficalas4_Callback(hObject, eventdata, handles)



  

% --- Executes on button press in RC.
function RC_Callback(hObject, eventdata, handles)
a=get(handles.edit1,'String');
b=get(handles.edit2,'String');
c=get(handles.edit3,'String');
  R=str2num(a);
  C=str2num(b);
  L=str2num(c);
%---------RC--------------------
numrc=[0 1];
denrc=[R*C 1];
W=1/(R*C);
Bode(numrc,denrc);
set(handles.text11,'String',W);


% --- Executes on button press in CR.
function CR_Callback(hObject, eventdata, handles)
a=get(handles.edit1,'String');
b=get(handles.edit2,'String');
c=get(handles.edit3,'String');
  R=str2num(a);
  C=str2num(b);
  L=str2num(c);
numcr=[C*R 0];
dencr=[C*R 1];
W=1/(R*C);
Bode(numcr,dencr);
set(handles.text11,'String',W);


% --- Executes on button press in RL.
function RL_Callback(hObject, eventdata, handles)
a=get(handles.edit1,'String');
b=get(handles.edit2,'String');
c=get(handles.edit3,'String');
  R=str2num(a);
  C=str2num(b);
  L=str2num(c);
%---------RC--------------------
numrl=[L 0];
denrl=[R L];
W=L/R;
Bode(numrl,denrl);
set(handles.text11,'String',W);

% --- Executes on button press in LR.
function LR_Callback(hObject, eventdata, handles)
a=get(handles.edit1,'String');
b=get(handles.edit2,'String');
c=get(handles.edit3,'String');
  R=str2num(a);
  C=str2num(b);
  L=str2num(c);
%---------RC--------------------
num=[R];
den=[L R];
Bode(num,den);

set(handles.text11,'String',W);


% --- Executes on button press in RLC.
function RLC_Callback(hObject, eventdata, handles)
a=get(handles.edit1,'String');
b=get(handles.edit2,'String');
c=get(handles.edit3,'String');
  R=str2num(a);
  C=str2num(b);
  L=str2num(c);
%---------RC--------------------
num=[0 1];
den=[L*C R*C 1];
Bode(num,den);
set(handles.text11,'String',W);

% --- Executes on button press in RCL.
function RCL_Callback(hObject, eventdata, handles)
a=get(handles.edit1,'String');
b=get(handles.edit2,'String');
c=get(handles.edit3,'String');
  R=str2num(a);
  C=str2num(b);
  L=str2num(c);
%---------RC--------------------
num=[C*L 0 0];
den=[L*C R*C 1];
Bode(num,den);
set(handles.text11,'String',W);


% --- Executes on button press in CLR.
function CLR_Callback(hObject, eventdata, handles)
a=get(handles.edit1,'String');
b=get(handles.edit2,'String');
c=get(handles.edit3,'String');
  R=str2num(a);
  C=str2num(b);
  L=str2num(c);
%---------RC--------------------
num=[0 C*R 0];
den=[C*L C*R 1];
Bode(num,den);
set(handles.text11,'String',W);
