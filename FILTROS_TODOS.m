function varargout = FILTROS_TODOS(varargin)
% FILTROS_TODOS M-file for FILTROS_TODOS.fig
%      FILTROS_TODOS, by itself, creates a new FILTROS_TODOS or raises the existing
%      singleton*.
%
%      H = FILTROS_TODOS returns the handle to a new FILTROS_TODOS or the handle to
%      the existing singleton*.
%
%      FILTROS_TODOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FILTROS_TODOS.M with the given input arguments.
%
%      FILTROS_TODOS('Property','Value',...) creates a new FILTROS_TODOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FILTROS_TODOS_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FILTROS_TODOS_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FILTROS_TODOS

% Last Modified by GUIDE v2.5 25-Apr-2013 06:58:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FILTROS_TODOS_OpeningFcn, ...
                   'gui_OutputFcn',  @FILTROS_TODOS_OutputFcn, ...
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


% --- Executes just before FILTROS_TODOS is made visible.
function FILTROS_TODOS_OpeningFcn(hObject, eventdata, handles, varargin)
    set(handles.CAJA3,'visible','off');
    set(handles.bobi1,'visible','off');
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FILTROS_TODOS (see VARARGIN)

% Choose default command line output for FILTROS_TODOS
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FILTROS_TODOS wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FILTROS_TODOS_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in MENU.
function MENU_Callback(hObject, eventdata, handles)
% hObject    handle to MENU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global opcion;
opcion=get(handles.MENU,'Value');
if(opcion==1)
    R=str2double(get(handles.CAJA1,'String'));
    C=str2double(get(handles.CAJA2,'String'));
    set(handles.CAJA2,'visible','on');
    set(handles.con1,'visible','on');
    set(handles.CAJA3,'visible','off');
    set(handles.bobi1,'visible','off');
    num=[1];
    den=[R*C 1];
    wc=(1/R*C);
    set(handles.sali,'String',wc);
    bode(num,den);   
elseif(opcion==2) 
    R=str2double(get(handles.CAJA1,'String'));
    C=str2double(get(handles.CAJA2,'String'));
    set(handles.CAJA2,'visible','on');
    set(handles.con1,'visible','on');
    set(handles.CAJA3,'visible','off');
    set(handles.bobi1,'visible','off');
    numpb=[C*R 0];
    denpb=[C*R 1];
    wc=(R*C);
    set(handles.sali,'String',wc);
    bode(numpb,denpb); 
elseif(opcion==3)
    R=str2double(get(handles.CAJA1,'String'));
    L=str2double(get(handles.CAJA3,'String'));
     set(handles.CAJA3,'visible','on');
    set(handles.bobi1,'visible','on');
    set(handles.CAJA2,'visible','off');
    set(handles.con1,'visible','off');
    nupb=[L 0];
    depb=[L R];
    wc=(R/L);
    set(handles.sali,'String',wc);
    bode(nupb,depb);
elseif(opcion==4)
    R=str2double(get(handles.CAJA1,'String'));
    L=str2double(get(handles.CAJA3,'String'));
    set(handles.CAJA3,'visible','on');
    set(handles.bobi1,'visible','on');
    set(handles.CAJA2,'visible','off');
    set(handles.con1,'visible','off');
    nump=[1];
    denp=[L/R 1];
    wc=(L/R);
    set(handles.sali,'String',wc);
    bode(nump,denp);
end    
% Hints: contents = cellstr(get(hObject,'String')) returns MENU contents as cell array
%        contents{get(hObject,'Value')} returns selected item from MENU


% --- Executes during object creation, after setting all properties.
function MENU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MENU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CAJA1_Callback(hObject, eventdata, handles)
% hObject    handle to CAJA1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CAJA1 as text
%        str2double(get(hObject,'String')) returns contents of CAJA1 as a double


% --- Executes during object creation, after setting all properties.
function CAJA1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CAJA1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CAJA2_Callback(hObject, eventdata, handles)
% hObject    handle to CAJA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CAJA2 as text
%        str2double(get(hObject,'String')) returns contents of CAJA2 as a double


% --- Executes during object creation, after setting all properties.
function CAJA2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CAJA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CAJA3_Callback(hObject, eventdata, handles)
% hObject    handle to CAJA3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CAJA3 as text
%        str2double(get(hObject,'String')) returns contents of CAJA3 as a double


% --- Executes during object creation, after setting all properties.
function CAJA3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CAJA3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
