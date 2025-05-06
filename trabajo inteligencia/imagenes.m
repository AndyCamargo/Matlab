function varargout = imagenes(varargin)
% IMAGENES MATLAB code for imagenes.fig
%      IMAGENES, by itself, creates a new IMAGENES or raises the existing
%      singleton*.
%
%      H = IMAGENES returns the handle to a new IMAGENES or the handle to
%      the existing singleton*.
%
%      IMAGENES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMAGENES.M with the given input arguments.
%
%      IMAGENES('Property','Value',...) creates a new IMAGENES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before imagenes_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to imagenes_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help imagenes

% Last Modified by GUIDE v2.5 20-Apr-2016 04:40:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @imagenes_OpeningFcn, ...
                   'gui_OutputFcn',  @imagenes_OutputFcn, ...
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


% --- Executes just before imagenes is made visible.
function imagenes_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to imagenes (see VARARGIN)

% Choose default command line output for imagenes
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes imagenes wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = imagenes_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function pushbutton1_Callback(hObject, eventdata, handles)
global img;
[nombre direc]=uigetfile('*jpg','abrir imagen');
if nombre==0
    return
end
img=imread(strcat(direc,nombre));
subplot(handles.axes1),imshow(img),title('imagen cargada');
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
v=get(handles.popupmenu1,'Value');

global img;
switch v
    
    case 1
        II=im2bw(img);
        imshow(II),title('grises');
    case 2
        for n=0:10;
        end
        II=im2bw(img);
        d1=strel('disk',n);
        III=imdilate(II,d1);
        imshow(III),title('dilatacion');
    case 3
        II=im2bw(img);
        d2=strel('disk',3);
        IV=imerode(II,d2);
        imshow(IV),title('herocion');
    case 4
        II=im2bw(img);
        d3=strel('square',10);%se cambian los valores para que la imagen tiene unos requerimientos
        V=imopen(II,d3);
        imshow(V),title('apertura');
    case 5
        II=im2bw(img);
        d4=strel('square',10);
        VI=imclose(II,d4);
        imshow(VI),title('cerradura');
    case 6
        
        II=im2bw(img,160/255);
        imshow(II),title('grises')
    case 7
        II=im2bw(img,160/255);
        VIII=imcomplement(II);
        imshow(VIII),title('complemento');
    case 8
        II=im2bw(img,160/255);
        VIII=imcomplement(II);
        IX=medfilt2(VIII,[8,8],'symmetric');
        imshow(IX),title('simetri');
    case 9
        II=im2bw(img,160/255);
        VIII=imcomplement(II);
        IX=medfilt2(VIII,[8,8],'symmetric');
        d1=strel('square',5);
        X=imerode(IX,d1);
        imshow(X),title('herocion');
    case 10
        II=im2bw(img,160/255);
        VIII=imcomplement(II);
        IX=medfilt2(VIII,[8,8],'symmetric');
        d1=strel('square',5);
        X=imerode(IX,d1);
        XI=imsubtract(IX,X);
        imshow (XI);
end 

% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
