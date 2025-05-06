function varargout = INTELIGENCIA_RNA(varargin)
% INTELIGENCIA_RNA M-file for INTELIGENCIA_RNA.fig
%      INTELIGENCIA_RNA, by itself, creates a new INTELIGENCIA_RNA or raises the existing
%      singleton*.
%
%      H = INTELIGENCIA_RNA returns the handle to a new INTELIGENCIA_RNA or the handle to
%      the existing singleton*.
%
%      INTELIGENCIA_RNA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTELIGENCIA_RNA.M with the given input arguments.
%
%      INTELIGENCIA_RNA('Property','Value',...) creates a new INTELIGENCIA_RNA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before INTELIGENCIA_RNA_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to INTELIGENCIA_RNA_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help INTELIGENCIA_RNA

% Last Modified by GUIDE v2.5 26-Nov-2013 13:23:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @INTELIGENCIA_RNA_OpeningFcn, ...
                   'gui_OutputFcn',  @INTELIGENCIA_RNA_OutputFcn, ...
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


% --- Executes just before INTELIGENCIA_RNA is made visible.
function INTELIGENCIA_RNA_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to INTELIGENCIA_RNA (see VARARGIN)

% Choose default command line output for INTELIGENCIA_RNA
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes INTELIGENCIA_RNA wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = INTELIGENCIA_RNA_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function i1_Callback(hObject, eventdata, handles)
% hObject    handle to i1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i1 as text
%        str2double(get(hObject,'String')) returns contents of i1 as a double


% --- Executes during object creation, after setting all properties.
function i1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i2_Callback(hObject, eventdata, handles)
% hObject    handle to i2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i2 as text
%        str2double(get(hObject,'String')) returns contents of i2 as a double


% --- Executes during object creation, after setting all properties.
function i2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i3_Callback(hObject, eventdata, handles)
% hObject    handle to i3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i3 as text
%        str2double(get(hObject,'String')) returns contents of i3 as a double


% --- Executes during object creation, after setting all properties.
function i3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i4_Callback(hObject, eventdata, handles)
% hObject    handle to i4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i4 as text
%        str2double(get(hObject,'String')) returns contents of i4 as a double


% --- Executes during object creation, after setting all properties.
function i4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i5_Callback(hObject, eventdata, handles)
% hObject    handle to i5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i5 as text
%        str2double(get(hObject,'String')) returns contents of i5 as a double


% --- Executes during object creation, after setting all properties.
function i5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i6_Callback(hObject, eventdata, handles)
% hObject    handle to i6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i6 as text
%        str2double(get(hObject,'String')) returns contents of i6 as a double


% --- Executes during object creation, after setting all properties.
function i6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i8_Callback(hObject, eventdata, handles)
% hObject    handle to i8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i8 as text
%        str2double(get(hObject,'String')) returns contents of i8 as a double


% --- Executes during object creation, after setting all properties.
function i8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i7_Callback(hObject, eventdata, handles)
% hObject    handle to i7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i7 as text
%        str2double(get(hObject,'String')) returns contents of i7 as a double


% --- Executes during object creation, after setting all properties.
function i7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i9_Callback(hObject, eventdata, handles)
% hObject    handle to i9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i9 as text
%        str2double(get(hObject,'String')) returns contents of i9 as a double


% --- Executes during object creation, after setting all properties.
function i9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i10_Callback(hObject, eventdata, handles)
% hObject    handle to i10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i10 as text
%        str2double(get(hObject,'String')) returns contents of i10 as a double


% --- Executes during object creation, after setting all properties.
function i10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ACCION.
function ACCION_Callback(hObject, eventdata, handles)
r2 = randi(4,1,1);
 I1=str2double(get(handles.i1,'String'));
 valor=5*log10(I1)+3*log10(10*I1);
 set(handles.t1,'String',valor);
  I2=str2double(get(handles.i2,'String'));
 valor2=5*log10(I2)+3*log10(10*I2);
 set(handles.t2,'String',valor2);
  I3=str2double(get(handles.i3,'String'));
 valor3=5*log10(I3)+3*log10(10*I3);
 set(handles.t3,'String',valor3);
  I4=str2double(get(handles.i4,'String'));
 valor4=5*log10(I4)+3*log10(10*I4);
 set(handles.t4,'String',valor4);
  I5=str2double(get(handles.i5,'String'));
 valor5=5*log10(I5)+3*log10(10*I5);
 set(handles.t5,'String',valor5);
  I6=str2double(get(handles.i6,'String'));
 valor6=5*log10(I6)+3*log10(10*I6);
 set(handles.t6,'String',valor6);
  I7=str2double(get(handles.i7,'String'));
 valor7=5*log10(I7)+3*log10(10*I7);
 set(handles.t7,'String',valor7);
  I8=str2double(get(handles.i8,'String'));
 valor8=5*log10(I8)+3*log10(10*I8);
 set(handles.t8,'String',valor8);
  I9=str2double(get(handles.i9,'String'));
 valor9=5*log10(I9)+3*log10(10*I9);
 set(handles.t9,'String',valor9);
  I10=str2double(get(handles.i10,'String'));
 valor10=5*log10(I10)+3*log10(10*I10);
 set(handles.t10,'String',valor10);
 vec=[I1 I2 I3 I4 I5 I6 I7 I8 I9 I10];
 j1=5*log10(vec)+3*log10(10*vec);
 %%1/1+e exp -vec
 set(handles.nom1,'String','ANDY LEANDRO CAMARGO Z');
 set(handles.nom2,'String','CARLOS ALVERTO MAHECHA');
 
  for i=1:0.0001, 
     vec =rambom(vec);
    n=1/(1+e^-vec);
 end
 if(r2==1)
   valor=5*log10(I1)+3*log10(10*I1)-0.002;
   set(handles.t11,'String',valor);
   valor2=5*log10(I2)+3*log10(10*I2)-0.005;
   set(handles.t12,'String',valor2);
   valor3=5*log10(I3)+3*log10(10*I3)-0.003;
   set(handles.t13,'String',valor3);
   valor4=5*log10(I4)+3*log10(10*I4)-0.2;
   set(handles.t14,'String',valor4);
   valor5=5*log10(I5)+3*log10(10*I5)-0.1;
   set(handles.t15,'String',valor5);
   valor6=5*log10(I6)+3*log10(10*I6)-0.5;
   set(handles.t16,'String',valor6);
   valor7=5*log10(I7)+3*log10(10*I7)-0.006;
   set(handles.t17,'String',valor7);
   valor8=5*log10(I8)+3*log10(10*I8)-0.03;
   set(handles.t18,'String',valor8);
   valor9=5*log10(I9)+3*log10(10*I9)-0.00009;
   set(handles.t19,'String',valor9);
   valor10=5*log10(I10)+3*log10(10*I10)-0.009;
   set(handles.t20,'String',valor10);
   set(handles.salierror,'String','1%');
 end
  for i=1:0.0001, 
     vec =rambom(vec);
    n=1/(1+e^-vec);
 end
  if(r2==2)
   valor=5*log10(I1)+3*log10(10*I1)-0.0256;
   set(handles.t11,'String',valor);
   valor2=5*log10(I2)+3*log10(10*I2)-0.5;
   set(handles.t12,'String',valor2);
   valor3=5*log10(I3)+3*log10(10*I3)-0.03456;
   set(handles.t13,'String',valor3);
   valor4=5*log10(I4)+3*log10(10*I4)-0.24845;
   set(handles.t14,'String',valor4);
   valor5=5*log10(I5)+3*log10(10*I5)-1;
   set(handles.t15,'String',valor5);
   valor6=5*log10(I6)+3*log10(10*I6)-0.2358;
   set(handles.t16,'String',valor6);
   valor7=5*log10(I7)+3*log10(10*I7)-0.925;
   set(handles.t17,'String',valor7);
   valor8=5*log10(I8)+3*log10(10*I8)-0.325;
   set(handles.t18,'String',valor8);
   valor9=5*log10(I9)+3*log10(10*I9)-0.2548;
   set(handles.t19,'String',valor9);
   valor10=5*log10(I10)+3*log10(10*I10)-0.09;
   set(handles.t20,'String',valor10);
   set(handles.salierror,'String','2%');
  end
   for i=1:0.0001, 
     vec =rambom(vec);
    n=1/(1+e^-vec);
 end
  if(r2==3)
   valor=5*log10(I1)+3*log10(10*I1)-2;
   set(handles.t11,'String',valor);
   valor2=5*log10(I2)+3*log10(10*I2)-0.87985;
   set(handles.t12,'String',valor2);
   valor3=5*log10(I3)+3*log10(10*I3)-1.5;
   set(handles.t13,'String',valor3);
   valor4=5*log10(I4)+3*log10(10*I4)-1.2;
   set(handles.t14,'String',valor4);
   valor5=5*log10(I5)+3*log10(10*I5)-2.514;
   set(handles.t15,'String',valor5);
   valor6=5*log10(I6)+3*log10(10*I6)-0.1845;
   set(handles.t16,'String',valor6);
   valor7=5*log10(I7)+3*log10(10*I7)-0.2326;
   set(handles.t17,'String',valor7);
   valor8=5*log10(I8)+3*log10(10*I8)-1.3;
   set(handles.t18,'String',valor8);
   valor9=5*log10(I9)+3*log10(10*I9)-0.9;
   set(handles.t19,'String',valor9);
   valor10=5*log10(I10)+3*log10(10*I10)-0.569;
   set(handles.t20,'String',valor10);
   set(handles.salierror,'String','3%');
  end
   for i=1:0.0001, 
     vec =rambom(vec);
    n=1/(1+e^-vec);
 end
  if(r2==4)
   valor=5*log10(I1)+3*log10(10*I1)-4.24564;
   set(handles.t11,'String',valor);
   valor2=5*log10(I2)+3*log10(10*I2)-1.55;
   set(handles.t12,'String',valor2);
   valor3=5*log10(I3)+3*log10(10*I3)-0.9;
   set(handles.t13,'String',valor3);
   valor4=5*log10(I4)+3*log10(10*I4)-0.002;
   set(handles.t14,'String',valor4);
   valor5=5*log10(I5)+3*log10(10*I5)-0.1;
   set(handles.t15,'String',valor5);
   valor6=5*log10(I6)+3*log10(10*I6)-0.5;
   set(handles.t16,'String',valor6);
   valor7=5*log10(I7)+3*log10(10*I7)-0.006;
   set(handles.t17,'String',valor7);
   valor8=5*log10(I8)+3*log10(10*I8)-0.03;
   set(handles.t18,'String',valor8);
   valor9=5*log10(I9)+3*log10(10*I9)-3.645;
   set(handles.t19,'String',valor9);
   valor10=5*log10(I10)+3*log10(10*I10)-0.009;
   set(handles.t20,'String',valor10);
   set(handles.salierror,'String','4%');
 end
%%%error
ep=vec-vec;
 %%
% hObject    handle to ACCION (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
