function varargout = modulacion(varargin)
% MODULACION M-file for modulacion.fig
%      MODULACION, by itself, creates a new MODULACION or raises the existing
%      singleton*.
%
%      H = MODULACION returns the handle to a new MODULACION or the handle to
%      the existing singleton*.
%
%      MODULACION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MODULACION.M with the given input arguments.
%
%      MODULACION('Property','Value',...) creates a new MODULACION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before modulacion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to modulacion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help modulacion

% Last Modified by GUIDE v2.5 19-Aug-2014 08:16:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @modulacion_OpeningFcn, ...
                   'gui_OutputFcn',  @modulacion_OutputFcn, ...
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


% --- Executes just before modulacion is made visible.
function modulacion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to modulacion (see VARARGIN)

% Choose default command line output for modulacion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes modulacion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = modulacion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function moduladora_Callback(hObject, eventdata, handles)
% hObject    handle to moduladora (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of moduladora as text
%        str2double(get(hObject,'String')) returns contents of moduladora as a double


% --- Executes during object creation, after setting all properties.
function moduladora_CreateFcn(hObject, eventdata, handles)
% hObject    handle to moduladora (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function portadora_Callback(hObject, eventdata, handles)
% hObject    handle to portadora (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of portadora as text
%        str2double(get(hObject,'String')) returns contents of portadora as a double


% --- Executes during object creation, after setting all properties.
function portadora_CreateFcn(hObject, eventdata, handles)
% hObject    handle to portadora (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in opciones.
function opciones_Callback(hObject, eventdata, handles)
% hObject    handle to opciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global opcion;
fm=deg2rad(str2double(get(handles.moduladora,'String')));
po=deg2rad(str2double(get(handles.portadora,'String')));
bin=[0 1 0 1 1 0 1 1 1 0];
fc= fm*po;
syms t;
t=(0:1023)/4096;
e1=2;
e2=1;
opcion=get(handles.opciones,'Value');
switch opcion 
    case 1
        
         t1=(0:250)/4096;

                Sc=e1*sin(2*pi*fc*t1);%se�al protadora
                
          
               

                z=100;
                y=[0:1:(z-1)*length(bin)];
                t=0:2*pi/99:2*pi;
                cp=[];sp=[];
                mod=[];mod1=[];bit=[];
                ni = e2/e1;

                for n=1:length(bin);
                    if bin(n)==0;
                        die=ones(1,100);
                        se=zeros(1,100);
                    else bin(n)==1;
                        die=ni*ones(1,100);
                        se=ones(1,100);
                    end
                    c=e1*sin(fc*t);
                    cp=[cp die];
                    mod=[mod c];
                    bit=[bit se];
                end

                ask=cp.*mod;
                esp=abs(fft(ask))

                axes(handles.modula1);
                plot(bit,'LineWidth',1.5);grid on;
                title('MODULADORA');
                axis([0 100*length(bin) -2 2]);

                axes(handles.modula2);
                plot(ask,'LineWidth',1.5);grid on;
                title('MODULADA');
                axis([0 100*length(bin) -2*e1 2*e1]);

                axes(handles.espec);
                plot(esp,'LineWidth',1.5);grid on;
                title('ESPECTRO');
                zoom on;

    case 2
       
                z=100;
                y=[0:1:(z-1)*length(bin)];
                t1=(0:250)/4096;

                Sc=e1*sin(2*pi*fc*t1);%se�al protadora
              

                t=0:2*pi/99:2*pi;
                cp=[];sp=[];
                mod=[];mod1=[];bit=[];

                for n=1:length(bin);
                    if bin(n)==0;
                        die=ones(1,100);
                        c=e1*sin(fc*t);

                        se=zeros(1,100);
                    else bin(n)==1;
                        die=ones(1,100);
                        c=e1*sin(fm*t);
                        se=ones(1,100);
                    end
                    cp=[cp die];
                    mod=[mod c];
                    bit=[bit se];
                end

                fsk=cp.*mod;
                esp=abs(fft(fsk))

                axes(handles.modula1);
                plot(bit,'LineWidth',1.5);grid on;
                title('MODULADORA');
                axis([0 100*length(bin) -2 2]);

                axes(handles.modula2);
                plot(fsk,'LineWidth',1.5);grid on;
                title('MODULADA');
                axis([0 100*length(bin) -2*e1 2*e1]);

                axes(handles.espec);
                plot(esp,'LineWidth',1.5);grid on;
                title('ESPECTRO');
                zoom on;
      
    case 3
        
         t1=(0:250)/4500;
                Sc=e1*sin(2*pi*fc*t1);%se�al protadora
               

                z=100;
                y=[0:1:(z-1)*length(bin)];
                cw0=e1*sin(2*pi*fc*y/z);
                t=0:2*pi/99:2*pi;
                cp=[];sp=[];
                mod=[];mod1=[];bit=[];

                for n=1:length(bin);
                    if bin(n)==0;
                        die=-ones(1,100);   
                        se=zeros(1,100);    
                    else bin(n)==1;
                        die=ones(1,100);    
                        se=ones(1,100);     
                    end
                    c=e1*sin(fc*t);
                    cp=[cp die];
                    mod=[mod c];
                    bit=[bit se];
                end

                bpsk=cp.*mod;

                esp=abs(fft(bpsk))

                axes(handles.modula1);
                plot(bit,'LineWidth',1.5);grid on;
                title('MODULADORA');
                axis([0 100*length(bin) -2 2]);

                axes(handles.modula2);
                plot(bpsk,'LineWidth',1.5);grid on;
                title('MODULADA');
                axis([0 70*length(bin) -2*e1 2*e1]);

                axes(handles.espec);
                plot(esp,'LineWidth',1.5);grid on;
                title('ESPECTRO');
                zoom on;
end

% Hints: contents = cellstr(get(hObject,'String')) returns opciones contents as cell array
%        contents{get(hObject,'Value')} returns selected item from opciones


% --- Executes during object creation, after setting all properties.
function opciones_CreateFcn(hObject, eventdata, handles)
% hObject    handle to opciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
