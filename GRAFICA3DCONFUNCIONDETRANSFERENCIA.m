function varargout = GRAFICA3DCONFUNCIONDETRANSFERENCIA(varargin)
% GRAFICA3DCONFUNCIONDETRANSFERENCIA M-file for GRAFICA3DCONFUNCIONDETRANSFERENCIA.fig
%      GRAFICA3DCONFUNCIONDETRANSFERENCIA, by itself, creates a new GRAFICA3DCONFUNCIONDETRANSFERENCIA or raises the existing
%      singleton*.
%
%      H = GRAFICA3DCONFUNCIONDETRANSFERENCIA returns the handle to a new GRAFICA3DCONFUNCIONDETRANSFERENCIA or the handle to
%      the existing singleton*.
%
%      GRAFICA3DCONFUNCIONDETRANSFERENCIA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFICA3DCONFUNCIONDETRANSFERENCIA.M with the given input arguments.
%
%      GRAFICA3DCONFUNCIONDETRANSFERENCIA('Property','Value',...) creates a new GRAFICA3DCONFUNCIONDETRANSFERENCIA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GRAFICA3DCONFUNCIONDETRANSFERENCIA_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GRAFICA3DCONFUNCIONDETRANSFERENCIA_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GRAFICA3DCONFUNCIONDETRANSFERENCIA

% Last Modified by GUIDE v2.5 17-Apr-2013 01:09:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GRAFICA3DCONFUNCIONDETRANSFERENCIA_OpeningFcn, ...
                   'gui_OutputFcn',  @GRAFICA3DCONFUNCIONDETRANSFERENCIA_OutputFcn, ...
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


% --- Executes just before GRAFICA3DCONFUNCIONDETRANSFERENCIA is made visible.
function GRAFICA3DCONFUNCIONDETRANSFERENCIA_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GRAFICA3DCONFUNCIONDETRANSFERENCIA (see VARARGIN)

% Choose default command line output for GRAFICA3DCONFUNCIONDETRANSFERENCIA
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GRAFICA3DCONFUNCIONDETRANSFERENCIA wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GRAFICA3DCONFUNCIONDETRANSFERENCIA_OutputFcn(hObject, eventdata, handles) 
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



function Datoreal_Callback(hObject, eventdata, handles)
% hObject    handle to Datoreal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Datoreal as text
%        str2double(get(hObject,'String')) returns contents of Datoreal as a double


% --- Executes during object creation, after setting all properties.
function Datoreal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Datoreal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Grafica.
function Grafica_Callback(hObject, eventdata, handles)
%syms s;
funcion=get(handles.Funcion,'String');
%subs('s')=3;
val=str2num(funcion);               %valor=Eval(funcion);
%cam=char(sud('s'));
m=val;                                        %m=sym(s);
                                       %vector=str2num(valor);

[x,y]=meshgrid(-10:0.2:10,-10:0.3:10);
z=x.*exp(-(x.^2-y.^2))
%set(handles.prueba,'String',cam);

surf(x,y,z),shading flat;%grafica con textura
colormap(copper);
plot(hangles.axes1,x,y,z); %envia la grafica a axes


%syms s;
%func=get(handles.Funcion,'String');
%func=eval(func);
%z=(func);
%variable=char(z);
%set(handles.Datoreal,'String',variable);

% hObject    handle to Grafica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object creation, after setting all properties.
function prueba_CreateFcn(hObject, eventdata, handles)
% hObject    handle to prueba (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
