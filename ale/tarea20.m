function varargout = tarea20(varargin)
% TAREA20 MATLAB code for tarea20.fig
%      TAREA20, by itself, creates a new TAREA20 or raises the existing
%      singleton*.
%
%      H = TAREA20 returns the handle to a new TAREA20 or the handle to
%      the existing singleton*.
%
%      TAREA20('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TAREA20.M with the given input arguments.
%
%      TAREA20('Property','Value',...) creates a new TAREA20 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tarea20_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tarea20_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tarea20

% Last Modified by GUIDE v2.5 20-Apr-2016 03:43:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tarea20_OpeningFcn, ...
                   'gui_OutputFcn',  @tarea20_OutputFcn, ...
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


% --- Executes just before tarea20 is made visible.
function tarea20_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tarea20 (see VARARGIN)

% Choose default command line output for tarea20
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tarea20 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tarea20_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in cargar.
function cargar_Callback(hObject, eventdata, handles)
% hObject    handle to cargar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[im1,direc]=uigetfile({'*.jpg;*.bmp'}); 
cargar=strcat(direc,im1);
a=imread(cargar);
imshow(a); 
set(handles.cargar,'UserData',a),title('imagen cargada');

% --- Executes on button press in filtro.
function filtro_Callback(hObject, eventdata, handles)
% hObject    handle to filtro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global modo;
a=get(handles.cargar,'UserData');

if modo==1  
     XXIII=im2bw(a);
     imshow(XXIII),title('BLANCO/NEGRO')
end

if modo==2 
    II=rgb2gray(a);
    imshow(II),title('GRISES')
end

if modo==3
    II=rgb2gray(a);
    III=edge(II,'sobel');
    imshow (III),title('SOBEL')
end

if modo==4
    II=rgb2gray(a);
    IV=edge(II,'sobel','vertical');
    imshow(IV),title('SOBEL VERTICAL')
end

if modo==5
    II=rgb2gray(a);
    V=edge(II,'sobel','horizontal');
    imshow(V),title('SOBEL HORIZONTAL')
end

if modo==6
    II=rgb2gray(a);
    VI=edge(II,'canny');
    imshow(VI),title('CANNY')
end

if modo==7
    II=rgb2gray(a);
    VII=edge(II,'prewitt');
    imshow(VII),title('PREWITT')
end

if modo==8
    II=rgb2gray(a);
    VIII=edge(II,'roberts');
    imshow(VIII),title('ROBERTS')
end

if modo==9
    II=rgb2gray(a);
    IX=edge(II,'log');
    imshow(IX),title('LOGARITMICA')
end

if modo==10
    II=rgb2gray(a);
    X=imnoise(II,'poisson');
    imshow(X),title('POISSON')
end

if modo==11
    II=rgb2gray(a);
    XI=imnoise(II,'speckle');
    imshow(XI),title('SPECKLE')
end

if modo==12
    II=rgb2gray(a);
    XII=imnoise(a,'salt & pepper');
    imshow(XII),title('SALT & PEPPER')
end

if modo==13
    for n=0.01:0.09;    
    end
    
    II=rgb2gray(a);
    XIII=imnoise(a,'salt & pepper',n);
    imshow(XIII),title('SALT & PEPPER N')
end

if modo==14
    II=rgb2gray(a);
    XIV=imnoise(a,'gaussian',0.4);
    imshow(XIV),title('GAUSSIAN')
end

%CLASE DE EL LUNES


if modo==15
    %NO SIRVE BN
    
    for n=0:10;
    end
    
    XXIII=im2bw(a);
    d1=strel('disk',n);
    XV=imdilate(XXIII,d1);
    imshow(XV),title('DILATACION')
end

if modo==16
    XXIII=im2bw(a);
    d2=strel('disk',3);
    XVI=imerode(XXIII,d2);
    imshow(XVI),title('HEROCION')
end

if modo==17
    XXIII=im2bw(a);
    d3=strel('square',10);
    XVII=imopen(XXIII,d3);
    imshow(XVII),title('APERTURA')
end

if modo==18
    XXIII=im2bw(a);
    d4=strel('square',10);
    XVIII=imclose(XXIII,d4);
    imshow(XVIII),title('CERRADURA')
end

if modo==19
    XXIII=im2bw(a);
    XIX=imcomplement(XXIII);
    imshow(XIX),title('COMPLEMENTO') 
end

if modo==20
    XXIII=im2bw(a,160/255);
    XIX=imcomplement(XXIII);
    XX=medfilt2(XIX,[8,8],'symmetric');
    imshow(XX),title('SIMETRIA')
end

if modo==21
    XXIII=im2bw(a,160/255);
    XIX=imcomplement(XXIII);
    XX=medfilt2(XIX,[8,8],'symmetric');
    d1=strel('square',5);
    XXI=imerode(XX,d1);
    imshow(XXI),title('HEROCION 2')
end

if modo==22
    XXIII=im2bw(a);
    XIX=imcomplement(XXIII);
    XX=medfilt2(XIX,[8,8],'symmetric');
    d1=strel('square',5);
    XXI=imerode(XX,d1);
    XXII=imsubtract(XX,XXI);
    imshow (XXII),title('SUBTRACT')
end

% --- Executes when selected object is changed in uipanel1.
function uipanel1_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel1 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)

global modo;

if hObject==handles.radiobutton1
    modo=1;
end

if hObject==handles.radiobutton2
    modo=2;
end

if hObject==handles.radiobutton3
    modo=3;
end

if hObject==handles.radiobutton4
    modo=4;
end

if hObject==handles.radiobutton5
    modo=5;
end

if hObject==handles.radiobutton6
    modo=6;
end

if hObject==handles.radiobutton7
    modo=7;
end

if hObject==handles.radiobutton8
    modo=8;
end

if hObject==handles.radiobutton9
    modo=9;
end

if hObject==handles.radiobutton10
    modo=10;
end

if hObject==handles.radiobutton11
    modo=11;
end

if hObject==handles.radiobutton12
    modo=12;
end

if hObject==handles.radiobutton13
    modo=13;
end

if hObject==handles.radiobutton14
    modo=14;
end

if hObject==handles.radiobutton15
    modo=15;
end

if hObject==handles.radiobutton16
    modo=16;
end

if hObject==handles.radiobutton17
    modo=17;
end

if hObject==handles.radiobutton18
    modo=18;
end

if hObject==handles.radiobutton19
    modo=19;
end

if hObject==handles.radiobutton20
    modo=20;
end

if hObject==handles.radiobutton21
    modo=21;
end

if hObject==handles.radiobutton24
    modo=22;
end
