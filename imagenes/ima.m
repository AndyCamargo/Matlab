function varargout = ima(varargin)
% IMA MATLAB code for ima.fig
%      IMA, by itself, creates a new IMA or raises the existing
%      singleton*.
%
%      H = IMA returns the handle to a new IMA or the handle to
%      the existing singleton*.
%
%      IMA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMA.M with the given input arguments.
%
%      IMA('Property','Value',...) creates a new IMA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ima_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ima_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ima

% Last Modified by GUIDE v2.5 17-Apr-2016 22:47:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ima_OpeningFcn, ...
                   'gui_OutputFcn',  @ima_OutputFcn, ...
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


% --- Executes just before ima is made visible.
function ima_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ima (see VARARGIN)

% Choose default command line output for ima
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ima wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ima_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
v=get(handles.popupmenu1,'Value');
I=imread('casa1.jpg');
switch v
    case 1
        
        imshow(I)
    case 2
        II=rgb2gray(I);
        imshow(II)
    case 3
        II=rgb2gray(I);
        III=edge(II,'sobel');
        imshow (III)
    case 4
        II=rgb2gray(I);
        IV=edge(II,'sobel','vertical');
        figure
        imshow(IV)
    case 5
        II=rgb2gray(I);
        V=edge(II,'sobel','horizontal');
        figure
        imshow(V)
    case 6
        II=rgb2gray(I);
        VI=edge(II,'canny');
        imshow(VI)
    case 7
        II=rgb2gray(I);
        VII=edge(II,'prewitt');
        subplot(311);imshow(VII);
        subplot(312);imshow(VIII);
        subplot(313);imshow(IX);
        imshow(VII)
    case 8
        II=rgb2gray(I);
        VIII=edge(II,'roberts');
        imshow(VIII)
    case 9
        II=rgb2gray(I);
        IX=edge(II,'log');
        imshow(IX)
    case 10
        II=rgb2gray(I);
        X=imnoise(II,'poisson');
        imshow(X)
    case 11
        II=rgb2gray(I);
        XI=imnoise(II,'speckle');
        imshow(XI)
    case 12
        XII=imnoise(I,'salt & pepper');
        imshow(XII)
    case 13
        for n=0.01:0.09;    
        end
        XIII=imnoise(I,'salt & pepper',n);
        imshow(XIII)
    case 14
        XIV=imnoise(I,'gaussian',0.4);
        imshow(XIV)
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
