function varargout = untitled(varargin)
% UNTITLED M-file for untitled.fig
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

% Last Modified by GUIDE v2.5 04-Sep-2013 21:14:07

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



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

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
            
        
% --- Executes on button press in B_graficar.
function B_graficar_Callback(hObject, eventdata, handles)
% hObject    handle to B_graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
valor1=get(handles.edit1,'String');
valor1=str2double(valor1);
valor2=get(handles.edit2,'String');
valor2=str2double(valor2);
valor3=get(handles.edit3,'String');
valor3=str2double(valor3);
valor4=get(handles.edit4,'String');
valor4=str2double(valor4);
valor5=get(handles.edit5,'String');
valor5=str2double(valor5);
valor6=get(handles.edit6,'String');
valor6=str2double(valor6);
valor7=get(handles.edit7,'String');
valor7=str2double(valor7);
valor8=get(handles.edit8,'String');
valor8=str2double(valor8);
valor9=get(handles.edit9,'String');
valor9=str2double(valor9);
valor10=get(handles.edit10,'String');
valor10=str2double(valor10);
valor11=get(handles.edit11,'String');
valor11=str2double(valor11);
valor12=get(handles.edit12,'String');
valor12=str2double(valor12);
valor13=get(handles.edit13,'String');
valor13=str2double(valor13);
valor14=get(handles.edit14,'String');
valor14=str2double(valor14);
valor15=get(handles.edit15,'String');
valor15=str2double(valor15);
valor16=get(handles.edit16,'String');
valor16=str2double(valor16);

C=[valor1 valor2 valor3 valor4 valor5 valor6 valor7 valor8 valor9 valor10 valor11 valor12 valor13 valor14 valor15 valor16];

axes(handles.axes1);plot(0,0);hold off;
axes(handles.axes2);plot(0,0);hold off;
axes(handles.axes3);plot(0,0);hold off;
axes(handles.axes4);plot(0,0);hold off;
axes(handles.axes5);plot(0,0);hold off;
axes(handles.axes6);plot(0,0);hold off;
axes(handles.axes7);plot(0,0);hold off;
axes(handles.axes8);plot(0,0);hold off;

axes(handles.axes1);NRZL(C);
axes(handles.axes2);NRZI(C);
axes(handles.axes3);BIPOLARAMIyPSEUDOTERNARIO(C,0);
axes(handles.axes4);BIPOLARAMIyPSEUDOTERNARIO(C,1);
axes(handles.axes5);MANCHESTER(C);
axes(handles.axes6);MANCHESTERDIFERENCIAL(C);
axes(handles.axes7);HDB3B8ZS(C,-1);
axes(handles.axes8);HDB3B8ZS(C,2);
