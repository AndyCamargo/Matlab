function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 25-Sep-2014 14:30:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function bits_Callback(hObject, eventdata, handles)
% hObject    handle to bits (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bits as text
%        str2double(get(hObject,'String')) returns contents of bits as a double


% --- Executes during object creation, after setting all properties.
function bits_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bits (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in generar.
function generar_Callback(hObject, eventdata, handles)
%señal binaria
global data;
N=get(handles.bits,'String');
N=str2num(N);
data=[randn(1,N)>0.5];

axes(handles.axes1)
plot(0,0);
axes(handles.axes1);
stairs([0:length(data)-1],data);
axis([0 length(data) -2 2]);
title('binario ');
%fin de señal binaria 
%modulacion oqpsk
x=data;
%fin modulacion de señal

%%x=[1 1 -1 -1 -1 1 1 1];
x1=x(1:2:8);
x2=x(2:2:8);

t=[-1:0.01:7-0.01];
tt=length(t);
xx1=ones(1,800);
for i=1:tt
    if (t(i)>=-1 & t(i)<=1) | (t(i)>=5& t(i)<=7);
        xx1(i)=1;
    
    else xx1(i)=-1;
    end
end

t1=[0:0.01:8-0.01];
t2=0:0.01:7-0.01;
t3=-1:0.01:7.1-0.01;
t4=0:0.01:8.1-0.01;

tt1=length(t1);
xx2=ones(1,800);
for i=1:tt1
    if (t1(i)>=0 & t1(i)<=2) | (t1(i)>=4& t1(i)<=8);
        xx2(i)=1;
    
    else xx2(i)=-1;
    end
end


% ddd=fft(xx1);
% ddd0=fft(xx2);
% subplot(2,1,1);plot(t1,ddd);
% subplot(2,1,2);plot(t1,ddd0);

f=0:0.1:1;
xrc=0.5+0.5*cos(pi*f);

y1=conv(xx1,xrc)/5.5;
y2=conv(xx2,xrc)/5.5;

% ddd1=fft(y1);
% ddd2=fft(y2);
% figure
% subplot(2,1,1);plot(t2,ddd1);
% subplot(2,1,2);plot(t2,ddd2);


n0=randn(size(t2));

f1=1;
i=xx1.*cos(2*pi*f1*t);
q=xx2.*sin(2*pi*f1*t1);

I=i(101:800);
Q=q(1:700);

OQPSK=sqrt(1/2).*I+sqrt(1/2).*Q;

OQPSK_n=(sqrt(1/2).*I+sqrt(1/2).*Q)+n0;


n1=randn(size(t2));
i_rc=y1.*cos(2*pi*f1*t3);
q_rc=y2.*sin(2*pi*f1*t4);

I_rc=i(101:800);
Q_rc=q(1:700);
%OQPSK_rc=(sqrt(1/2).*I_rc+sqrt(1/2).*Q_rc);
OQPSK_rc_n1=(sqrt(1/2).*I_rc+sqrt(1/2).*Q_rc)+n1;
figure(1);
subplot(6,1,1);plot(t3,i_rc);axis([-1 N -1 1]);
subplot(6,1,2);plot(t4,q_rc);axis([-1 N -1 1]);
subplot(6,1,3);plot(t2,OQPSK_rc_n1);axis([-1 N -1 1]);
%subplot(6,1,3);plot(t2,OQPSK);axis([-1 N -1 1]);
%subplot(6,1,4);plot(t2,OQPSK_rc);axis([-1 N -1 1]);
%subplot(6,1,5);plot(t2,OQPSK_rc);axis([-1 N -1 1]);
%%%%%%%%%%%%%%


bit_in = randint(1e3, 1, [0 1]);
bit_I  = bit_in(1:2:1e3);
bit_Q  = bit_in(2:2:1e3);



data_I = -2*bit_I+1;
data_Q = -2*bit_Q+1;

data_I1=repmat(data_I',20,1);
data_Q1=repmat(data_Q',20,1);

for i=1:1e4
    data_I2(i)=data_I1(i);
    data_Q2(i)=data_Q1(i);
end;

% t=0:0.1:1e3-0.1;
% plot(t,data_I2);axis([0 1e3 -2 2]);

f=0:0.1:1;
xrc=0.5+0.5*cos(pi*f);

data_I2_rc=conv(data_I2,xrc)/5.5;
data_Q2_rc=conv(data_Q2,xrc)/5.5;

f1=1;
t1=0:0.1:1e3+0.9;
n0=randn(size(t1));
I_rc=data_I2_rc.*cos(2*pi*f1*t1);
Q_rc=data_Q2_rc.*sin(2*pi*f1*t1);
QPSK_rc_n0=(sqrt(1/2).*I_rc+sqrt(1/2).*Q_rc)+n0;

%%..demodulation
I_demo=QPSK_rc_n0.*cos(2*pi*f1*t1);
Q_demo=QPSK_rc_n0.*sin(2*pi*f1*t1);

I_recover=conv(I_demo,xrc);
Q_recover=conv(Q_demo,xrc);

I=I_recover(11:10010);
Q=Q_recover(11:10010);
t2=0:0.05:1e3-0.05;
t3=0:0.1:1e3-0.1;


data_recover=[];
for i=1:20:10000
    data_recover=[data_recover I(i:1:i+19) Q(i:1:i+19)];
end;




% figure(1)
% subplot(3,1,1);plot(t3,I);axis([0 10 -6 6]);
% subplot(3,1,2);plot(t3,Q);axis([0 10 -6 6]);
% subplot(3,1,3);plot(t2,data_recover);axis([0 10 -6 6]);
% 
% figure(2)
% subplot(2,1,1);plot(I_rc);axis([0 10000 -3 3]);
% subplot(2,1,2);plot(Q_rc);axis([0 10000 -3 3]);
% 
% figure(3)
% subplot(2,1,1);plot(data_I2_rc);axis([0 10000 -3 3]);
% subplot(2,1,2);plot(data_Q2_rc);axis([0 10000 -3 3]);

bit_recover=[];
for i=1:20:20000
    if sum(data_recover(i:i+19))>0
        data_recover_a(i:i+19)=1;
        bit_recover=[bit_recover 1];
    else
        data_recover_a(i:i+19)=-1;
        bit_recover=[bit_recover -1];
    end
end

error=0;

dd = -2*bit_in+1;
ddd=[dd'];
ddd1=repmat(ddd,20,1);
for i=1:2e4
    ddd2(i)=ddd1(i);
end
for i=1:1e3
    if bit_recover(i)~=ddd(i)
        error=error+1
    end
end

p=error/1000

figure(2);

subplot(2,1,1);plot(t2,ddd2);axis([0 100 -2 2]);
subplot(2,1,2);plot(t2,data_recover_a);axis([0 100 -2 2]);

%%%%%%%%%%%%
%Modulación QPSK
x = randi ([0 3],12,1);%vector aleatorio a modular (señal binaria)
h = modem.pskmod('M',4); %simulación QPSK
y = modulate (h,x); % Modulación de la señal x en QPSK
scatterplot(y)
title('Constelación OQPSK');%Presentación gráfica de la constelación


%%%%%%%%


% hObject    handle to generar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in random.
function random_Callback(hObject, eventdata, handles)
% hObject    handle to random (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns random contents as cell array
%        contents{get(hObject,'Value')} returns selected item from random


% --- Executes during object creation, after setting all properties.
function random_CreateFcn(hObject, eventdata, handles)
% hObject    handle to random (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ruido_Callback(hObject, eventdata, handles)
% hObject    handle to ruido (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ruido as text
%        str2double(get(hObject,'String')) returns contents of ruido as a double


% --- Executes during object creation, after setting all properties.
function ruido_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ruido (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in graficar.
function graficar_Callback(hObject, eventdata, handles)
% hObject    handle to graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
