function varargout = principal(varargin)
% PRINCIPAL M-file for principal.fig
%      PRINCIPAL, by itself, creates a new PRINCIPAL or raises the existing
%      singleton*.
%
%      H = PRINCIPAL returns the handle to a new PRINCIPAL or the handle to
%      the existing singleton*.
%
%      PRINCIPAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRINCIPAL.M with the given input arguments.
%
%      PRINCIPAL('Property','Value',...) creates a new PRINCIPAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before principal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to principal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help principal

% Last Modified by GUIDE v2.5 22-May-2013 23:14:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @principal_OpeningFcn, ...
                   'gui_OutputFcn',  @principal_OutputFcn, ...
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


% --- Executes just before principal is made visible.
function principal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to principal (see VARARGIN)

% Choose default command line output for principal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes principal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = principal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in escuchar_voz.
function escuchar_voz_Callback(hObject, eventdata, handles)
clear all;
d=wavread('voz_usuario');
sound(d,44100);
% hObject    handle to escuchar_voz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in reconoce.
function reconoce_Callback(hObject, eventdata, handles)
reconocer;
voz=wavread('voz_usuario');
digitousuario=normalizar(voz);
fftdigitousuario=abs(fft(digitousuario));
patrondigitousuario=abs(log(fftdigitousuario)*(-20));
Error(1)=sum(crosscorr(patrondigito0,patrondigitousuario));
Error(2)=sum(crosscorr(patrondigito1,patrondigitousuario));
Error(3)=sum(crosscorr(patrondigito2,patrondigitousuario));
Error(4)=sum(crosscorr(patrondigito3,patrondigitousuario));
Error(5)=sum(crosscorr(patrondigito4,patrondigitousuario));
Error(6)=sum(crosscorr(patrondigito5,patrondigitousuario));
Error(7)=sum(crosscorr(patrondigito6,patrondigitousuario));
Error(8)=sum(crosscorr(patrondigito7,patrondigitousuario));
Error(9)=sum(crosscorr(patrondigito8,patrondigitousuario));
Error(10)=sum(crosscorr(patrondigit9,patrondigitousuario));
Error2(1)=mean(abs(fftdigito0-fftdigitousuario));
Error2(2)=mean(abs(fftdigito1-fftdigitousuario));
Error2(3)=mean(abs(fftdigito2-fftdigitousuario));
Error2(4)=mean(abs(fftdigito3-fftdigitousuario));
Error2(5)=mean(abs(fftdigito4-fftdigitousuario));
Error2(6)=mean(abs(fftdigito5-fftdigitousuario));
Error2(7)=mean(abs(fftdigito6-fftdigitousuario));
Error2(8)=mean(abs(fftdigito7-fftdigitousuario));
Error2(9)=mean(abs(fftdigito8-fftdigitousuario));
Error2(10)=mean(abs(fftdigito9-fftdigitousuario));

Errordigito2=min(Error2);
display(Error2);
Errordigito=max(Error);
display(Error);
display(Errordigito2);


if(Errordigito==Error(1))
    set(handles.salida,'String','0');
end    


% hObject    handle to reconoce (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in graba.
function graba_Callback(hObject, eventdata, handles)
clear all;
grabar;
% hObject    handle to graba (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
