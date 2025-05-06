function varargout = nada(varargin)
% NADA MATLAB code for nada.fig
%      NADA, by itself, creates a new NADA or raises the existing
%      singleton*.
%
%      H = NADA returns the handle to a new NADA or the handle to
%      the existing singleton*.
%
%      NADA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NADA.M with the given input arguments.
%
%      NADA('Property','Value',...) creates a new NADA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before nada_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to nada_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help nada

% Last Modified by GUIDE v2.5 23-May-2015 14:59:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @nada_OpeningFcn, ...
                   'gui_OutputFcn',  @nada_OutputFcn, ...
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


% --- Executes just before nada is made visible.
function nada_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to nada (see VARARGIN)

% Choose default command line output for nada
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes nada wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = nada_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)


fo=400;
a=10;
phi=pi/4;
fs=8000;
ts=1/fs;
t=-0.002:ts:0.002;
xt=a*sin(2*pi*fo*t+phi);
plot(t,xt);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
