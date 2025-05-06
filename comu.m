function varargout = comu(varargin)
% COMU M-file for comu.fig
%      COMU, by itself, creates a new COMU or raises the existing
%      singleton*.
%
%      H = COMU returns the handle to a new COMU or the handle to
%      the existing singleton*.
%
%      COMU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COMU.M with the given input arguments.
%
%      COMU('Property','Value',...) creates a new COMU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before comu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to comu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help comu

% Last Modified by GUIDE v2.5 19-Aug-2014 01:54:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @comu_OpeningFcn, ...
                   'gui_OutputFcn',  @comu_OutputFcn, ...
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


function NRZL(vet)
R=1;
vet(length(vet)+1)=1;
while R<=length(vet)-1;
    T=R-1:0.001:R;
    if vet(R)==1
        if vet(R+1)==1
            D=(T>R)-1;
        else D=-(T<R)+(T==R);
        end
    else
        if vet(R+1)==1
            D=(T<R)-(T==R);
        else D=(T<R)+(T==R);
        end
    end
    plot(T,D,'b','LineWidth',2);
    grid on;
    hold on;
    axis([0 length(vet)-1 -1.5 1.5]);
    R=R+1;
    
end

function NRZI(vet)
 h=vet;
        n=1;
        xx=1;
        yy=0;
        h(17)=1;
        while n<=16;
            t=n-1:0.001:n;
        if h(n) == 0
            if yy==1
                y=(t>n)+1;
                if h(n+1)==1
                    y=(t<n)-0*(t==n);
                end
            else
                y=(t>n)-0;
                if h(n+1)==1
                    y=(t>n)+1*(t==n);
                end
            end
            d=plot(t,y);
            grid on;
       %    title('NRZI');grid on
            set(d,'LineWidth',2);
            hold on;
            % axis([0 length(vet)-1 -1.5 1.5]);
            axis([0 16.2 -1.5 1.5]);
        else
            if xx==1
                y=(t>n)+1;
                if h(n+1)==1
                    y=(t<n)-0*(t==n);
                end
                xx=0;
                yy=1;
            else
                y=(t>n)-0;
                if h(n+1)==1
                    y=(t>n)+1*(t==n);
                end
                xx=1;
                yy=0;
                end
            d=plot(t,y);
            %title('NRZI');grid on;
            set(d,'LineWidth',2);
            hold on;
            grid on;
           % axis([0 length(vet)-1 -1.5 1.5]);
           axis([0 16.2 -1.5 1.5]);
        end
        n=n+1;
        end

function BIPOLARAMIyPSEUDOTERNARIO(vet,val)
R=1;
vet(length(vet)+1)=1;
AMI=-1;
while R<=length(vet)-1;
    T=R-1:0.001:R;
    if vet(R)==val
        if vet(R+1)==val 
            D=(T>R);
        else
            if AMI==1
                D=-(T==R);
            else D=(T==R);
            end
        end
    else
        AMI=AMI*-1;
        if vet(R+1)==val
            if AMI==1
                D=(T<R);
            else D=-(T<R);
            end
        else
            if AMI==1
                D=(T<R)-(T==R);
            else D=-(T<R)+(T==R);
            end
        end
    end
    plot(T,D,'b','LineWidth',2);
    hold on;
    grid on;
    axis([0 length(vet)-1 -1.5 1.5]);
    R=R+1;
end

function MANCHESTER(vet)
R=1;
vet(length(vet)+1)=1;
while R<=length(vet)-1;
    T=R-1:0.001:R;
    if vet(R) == 0
        if vet(R+1)==0 
            D=-(T<R)+2*(T<R-0.5)+1*(T==R);
        else D=-(T<R)+2*(T<R-0.5)-1*(T==R);
        end
    else
        if vet(R+1)==0
            D=(T<R)-2*(T<R-0.5)+1*(T==R);
        else D=(T<R)-2*(T<R-0.5)-1*(T==R);
        end
    end
    plot(T,D,'b','LineWidth',2);
    hold on;
    grid on;
    axis([0 length(vet)-1 -1.5 1.5]);
    R=R+1;
end

function MANCHESTERDIFERENCIAL(vet)
R=1;
D=1;
if vet(R)==0
    AMI=0;
else AMI=1;
end
AMI2=0;
Tiempo=0:0.001:length(vet);
while R<=length(vet)
    T=R-1:0.001:R;
    if vet(R)==0
        if AMI==0
            y=[(ones(1,(length(T)-1)/2)*-1) (ones(1,(length(T)-1)/2))];
        else y=[(ones(1,(length(T)-1)/2)) (ones(1,(length(T)-1)/2)*-1)];
        end
    else
        if AMI2==0
            AMI=1;
            AMI2=1;
            y=[(ones(1,(length(T)-1)/2)) (ones(1,(length(T)-1)/2)*-1)];
        else
            AMI=0;
            AMI2=0;
            y=[(ones(1,(length(T)-1)/2)*-1) (ones(1,(length(T)-1)/2))];
        end
    end
    D=[D y];
    R=R+1;
end
plot(Tiempo,D,'b','LineWidth',2);
grid on;
axis([0 length(vet) -1.5 1.5]);

function violacion(f,T,R,vet)
if f==1
    D=+(T<R)-(T==R-1);
else D=-(T<R)+(T==R-1);
end
plot(T,D,'b','LineWidth',2);
hold on;
grid on;
axis([0 length(vet)-1 -1.5 1.5]);

function HDB3B8ZS(vet,func)
R=1;
vet(length(vet)+1)=1;
C=0;
f=1;
ami=-1;
si=-1;
log=-1;
while R<=length(vet)-1;
    T=R-1:0.001:R;
    if vet(R)==0
        C=C+1;
        if func==2
            if C==4
                C=0;
                f=f*-1;
                violacion(-f,T,R,vet);
                si=1;
            end
        else
            if C==2
                if log==1
                    C=0;
                    f=f*-1;
                    violacion(-f,T,R,vet);
                    log=log*-1;
                    si=1;
                end
                if vet(R+1)==0
                    if vet(R+2)==0
                        C=0;
                        f=f*-1;
                        violacion(-f,T,R,vet);
                        log=log*-1;
                        si=1;
                    else C=0;
                    end
                else C=0;
                end
            end
        end
        if vet(R+1)==0
            D=(T>R);
        else
            if ami==1
                D=-(T==R);
            else D=(T==R);
            end
        end
    else
        C=0;
        ami=ami*-1;
        if vet(R+1)==0
            if ami==1
                D=(T<R);
            else D=-(T<R);
            end
        else
            if ami==1
                D=(T<R)-(T==R);
            else D=-(T<R)+(T==R);
            end
        end
    end
    %if si==-1
        plot(T,D,'b','LineWidth',2);
        hold on;
        grid on;
        axis([0 length(vet)-1 -1.5 1.5]);
    %else si=-1;
    %end
    R=R+1;
end
% --- Executes just before comu is made visible.
function comu_OpeningFcn(hObject, eventdata, handles, varargin)
set(handles.bits,'String','0 0 0 0 0 1 0 1 0 0 1 1 1 0 0 1 0 1 1 1 0 1 1 1 1 0 1 0 1 0');
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to comu (see VARARGIN)

% Choose default command line output for comu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes comu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = comu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
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


% --- Executes on selection change in menu.
function menu_Callback(hObject, eventdata, handles)
% hObject    handle to menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global opcion;
opcion=get(handles.menu,'Value');
bin=get(handles.bits,'string');
bin=str2num(bin);
switch opcion 
    case 1
        cla;
        axes(handles.axes1);NRZL(bin);
       
    case 2
        cla;
        axes(handles.axes1);NRZI(bin);
        
    case 3
        cla;
        axes(handles.axes1);BIPOLARAMIyPSEUDOTERNARIO(bin,0);
        
    case 4
        cla;
        axes(handles.axes1);BIPOLARAMIyPSEUDOTERNARIO(bin,1);
        
    case 5
        cla;
        axes(handles.axes1);MANCHESTER(bin);
        
    case 6
        cla;
        axes(handles.axes1);MANCHESTERDIFERENCIAL(bin);
        
    case 7
        cla;
        axes(handles.axes1);HDB3B8ZS(bin,-1);
        
    case 8
        cla;
        axes(handles.axes1);HDB3B8ZS(bin,2);
        
end

        
% Hints: contents = cellstr(get(hObject,'String')) returns menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu


% --- Executes during object creation, after setting all properties.
function menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
