function varargout = CircuitoBode(varargin)
% CIRCUITOBODE M-file for CircuitoBode.fig
%      CIRCUITOBODE, by itself, creates a new CIRCUITOBODE or raises the existing
%      singleton*.
%
%      H = CIRCUITOBODE returns the handle to a new CIRCUITOBODE or the handle to
%      the existing singleton*.
%
%      CIRCUITOBODE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CIRCUITOBODE.M with the given input arguments.
%
%      CIRCUITOBODE('Property','Value',...) creates a new CIRCUITOBODE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CircuitoBode_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CircuitoBode_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CircuitoBode

% Last Modified by GUIDE v2.5 06-May-2013 11:01:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CircuitoBode_OpeningFcn, ...
                   'gui_OutputFcn',  @CircuitoBode_OutputFcn, ...
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


% --- Executes just before CircuitoBode is made visible.
function CircuitoBode_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CircuitoBode (see VARARGIN)

% Choose default command line output for CircuitoBode
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CircuitoBode wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CircuitoBode_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in filtro.
function filtro_Callback(hObject, eventdata, handles)
% hObject    handle to filtro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns filtro contents as cell array
%        contents{get(hObject,'Value')} returns selected item from filtro
global selec;
selec = get(handles.filtro, 'value');
switch selec
    case 1 
        
        R=str2double(get(handles.R1,'String'));
        C=str2double(get(handles.C1,'String'));
        set(handles.C1,'visible','on');
        set(handles.C11,'visible','on');
        set(handles.B1,'visible','off');
        set(handles.B11,'visible','off');
        
        num1=[1];
        den1=[R*C 1];
        bode(num1,den1);

    case 2
        
        C=str2double(get(handles.C1,'String'));
        R=str2double(get(handles.R1,'String'));
        set(handles.B1,'visible','off');
        set(handles.B11,'visible','off');
        set(handles.C1,'visible','on');
        set(handles.C11,'visible','on');
        num1=[C*R 0];
        den1=[C*R 1];
        bode(num1,den1);
    
    case 3
        
        R=str2double(get(handles.R1,'String'));
        B=str2double(get(handles.B1,'String'));
        set(handles.C1,'visible','off');
        set(handles.C11,'visible','off');
        set(handles.B1,'visible','on');
        set(handles.B11,'visible','on');
        num1=[-B 0];
        den1=[-B -R];
        bode(num1,den1);

    case 4

        B=str2double(get(handles.B1,'String'));
        R=str2double(get(handles.R1,'String'));
        set(handles.C1,'visible','off');
        set(handles.C11,'visible','off');
        set(handles.B1,'visible','on');
        set(handles.B11,'visible','on');
         num1=[1];
        den1=[R/B 1];
        bode(num1,den1);
        
end      


% --- Executes during object creation, after setting all properties.
function filtro_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filtro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R1_Callback(hObject, eventdata, handles)
% hObject    handle to R1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R1 as text
%        str2double(get(hObject,'String')) returns contents of R1 as a double


% --- Executes during object creation, after setting all properties.
function R1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C1_Callback(hObject, eventdata, handles)
% hObject    handle to C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C1 as text
%        str2double(get(hObject,'String')) returns contents of C1 as a double


% --- Executes during object creation, after setting all properties.
function C1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B1_Callback(hObject, eventdata, handles)
% hObject    handle to B1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B1 as text
%        str2double(get(hObject,'String')) returns contents of B1 as a double


% --- Executes during object creation, after setting all properties.
function B1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to B1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in MENU2.
function MENU2_Callback(hObject, eventdata, handles)

global opci;
opci = get(handles.MENU2, 'value');
switch opci
    case 1
        C=str2double(get(handles.C1,'String'));
        B=str2double(get(handles.B1,'String'));
        R=str2double(get(handles.R1,'String'));
        set(handles.B1,'visible','on');
        set(handles.B11,'visible','on');
           set(handles.C1,'visible','on');
        set(handles.C11,'visible','on');
          num=[1];
          den=[B*C C*R 1];
          bode(num,den);
    case 2
        C=str2double(get(handles.C1,'String'));
        B=str2double(get(handles.B1,'String'));
        R=str2double(get(handles.R1,'String'));
        set(handles.B1,'visible','on');
        set(handles.B11,'visible','on');
           set(handles.C1,'visible','on');
        set(handles.C11,'visible','on');
         numpd=[C*B 0 0];
         denpd=[B*C R*C 1];
         bode(numpd,denpd);
    case 3
        C=str2double(get(handles.C1,'String'));
        B=str2double(get(handles.B1,'String'));
        R=str2double(get(handles.R1,'String'));
        set(handles.C1,'visible','on');
        set(handles.C11,'visible','on');
        set(handles.B1,'visible','on');
        set(handles.B11,'visible','on');
        nump=[0 C*R 0];
        denp=[C*B C*R 1];
        bode(nump,denp);
end        

% hObject    handle to MENU2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns MENU2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from MENU2


% --- Executes during object creation, after setting all properties.
function MENU2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MENU2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
