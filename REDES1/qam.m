function varargout = qam(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @qam_OpeningFcn, ...
                   'gui_OutputFcn',  @qam_OutputFcn, ...
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
function qam_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;
guidata(hObject, handles);
function varargout = qam_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
function edit2_Callback(hObject, eventdata, handles)
function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function pushbutton1_Callback(hObject, eventdata, handles)
a=handles.edit3; % amplitud
p=90;            % fase
f=handles.edit4; % Frecuencia
x=0:0.01:2*f;
y=a*sin((2*pi/f)*x); 
axes(handles.axes1);
plot(x,y,'g');



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  analogo a digital 8 bits
axes(handles.axes2);

 mu = lin2mu(y);  % lin2mu para codificar 8-bit señales audio .
 muu= square(mu);
 yy= square(y);

%stairs(x,sin(y));
stairs(x,sin(yy)); 

%stairs(x,sin(mu),'b');
%stairs(x,sin(muu),'b');

%stairs(x,mu);

%ruido 0.5*randn(size(t));




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% modular QAM
axes(handles.axes3);
%t = 0:.01:2*pi;
%polar(t,sin(2*t).*cos(2*t),'--r');

    bin = get(handles.frecuenciaPortadora,'string');
    freq1=1;
    a=handles.edit3; % amplitud
    p=90;            % fase
    f=handles.edit4; % Frecuencia
    
    freq0 = f;
    amp = a;
    ampi = a;

    a = str2double(amp);
    ai= str2double(ampi);
    f = str2double(freq0);
    f1 = str2double(freq1);
    g = str2num(bin);
    


    if ai > a
        aaxis = ai;
    elseif a > ai
        aaxis = a;
    else
        aasix =a;
    end


    ni=ai/a;


    z=150;
    y=[0:1:(z-1)*length(g)];
    cw0=a*sin(2*pi*f*y/z);
    cw1=ai*sin(2*pi*f*y/z);


    
    l=length(g);
    r=l/3;
    re=ceil(r);
    val=re-r;
    f=1;
    

    t=0:2*pi/149:2*pi;
    cp=[];sp=[];
    mod=[];mod1=[];bit=[];

 for n=1:3:length(g)
        if g(n)==0 && g(n+1)==1 && g(n+2)==1
            die=ni*cos(pi/2)*ones(1,150);
            die1=ni*sin(pi/2)*ones(1,150);
            se=[zeros(1,50) ones(1,50) ones(1,50)];

        elseif g(n)==0 && g(n+1)==1 && g(n+2)==0
            die=cos(pi/2)*ones(1,150);
            die1=sin(pi/2)*ones(1,150);
            se=[zeros(1,50) ones(1,50) zeros(1,50)];

        elseif g(n)==0 && g(n+1)==0  && g(n+2)==0
            die=cos(2*pi)*ones(1,150);
            die1=sin(2*pi)*ones(1,150);
            se=[zeros(1,50) zeros(1,50) zeros(1,50)];

        elseif g(n)==0 && g(n+1)==0  && g(n+2)==1
            die=ni*cos(2*pi)*ones(1,150);
            die1=ni*sin(2*pi)*ones(1,150);
            se=[zeros(1,50) zeros(1,50) ones(1,50)];

        elseif g(n)==1 && g(n+1)==0  && g(n+2)==1
            die=ni*cos(pi)*ones(1,150);
            die1=ni*sin(pi)*ones(1,150);
            se=[ones(1,50) zeros(1,50) ones(1,50)];

        elseif g(n)==1 && g(n+1)==0  && g(n+2)==0
            die=cos(pi)*ones(1,150);
            die1=sin(pi)*ones(1,150);
            se=[ones(1,50) zeros(1,50) zeros(1,50)];

        elseif g(n)==1 && g(n+1)==1  && g(n+2)==0
            die=cos(3*pi/2)*ones(1,150);
            die1=sin(3*pi/2)*ones(1,150);
            se=[ones(1,50) ones(1,50) zeros(1,50)];

        elseif g(n)==1 && g(n+1)==1  && g(n+2)==1
            die=ni*cos(3*pi/2)*ones(1,150);
            die1=ni*sin(3*pi/2)*ones(1,150);
            se=[ones(1,50) ones(1,50) ones(1,50)];

        end
       c=a*cos(f*t);
       s=a*sin(f*t);
       cp=[cp die];    %Amplitude coseno
       sp=[sp die1];  %Amplitude seno
       mod=[mod c];    %coseno carrier (Q)
       mod1=[mod1 s];  %seno carrier   (I)
       bit = [bit se];
       end
       
    
    qam=cp.*mod1+sp.*mod;
  

    %axes(handles.G_Binario);plot(bit,'LineWidth',1.5);grid off;
    %title('Señal de entrada')
  

    %axes(handles.G_Digital);
    plot(qam,'LineWidth',1.5);grid off;
    %title('QAM modulacion')
   


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Sumando ruido DEMODULANDO
axes(handles.axes4);% 


%stairs(x,sin(y));
%stairs(x,sin(yy)); 

stairs(x,sin(mu),'b');
%stairs(x,sin(muu),'b');

%stairs(x,mu);

%ruido 0.5*randn(size(t));




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DE DIGITAL A ANALOGO
axes(handles.axes5); % 

%stairs(x,sin(y));
%stairs(x,sin(yy)); 

%stairs(x,sin(mu),'b');
%stairs(x,sin(muu),'b');

stairs(x,mu);

%ruido 0.5*randn(size(t));
  

function edit3_Callback(hObject, eventdata, handles)
Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(Val); %Transformar a formato double
handles.edit3=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicación
function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(Val); %Transformar a formato double
handles.edit4=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicación
function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%http://haxr.org/omar/papers/PDF/Omar%20X.%20Avelar%20&%20J.%20Daniel%20Mayoral%20-%20Conversion%20Analogica%20a%20Digital.pdf
%lin2mu la cual convierte una señal de audio y usa 8 Bits (256 niveles) de
%acuerdo al estándar

%Grafico especial para señales discretas
%http://arantxa.ii.uam.es/~iama/graficos.pdf

%usar /MATLAB_GUIDE interfaz
%http://www.dspace.espol.edu.ec/bitstream/123456789/10740/11/MATLAB_GUIDE.pdf

%señales tiempo discreto
%http://www.utp.edu.co/~eduque/arquitec/senales-1.pdf

%procesamiento de señales
%http://www.slideshare.net/lonely113/procesamiento-digital-de-seales-con-matlab


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2



function frecuenciaPortadora_Callback(hObject, eventdata, handles)
% hObject    handle to frecuenciaPortadora (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frecuenciaPortadora as text
%        str2double(get(hObject,'String')) returns contents of frecuenciaPortadora as a double


% --- Executes during object creation, after setting all properties.
function frecuenciaPortadora_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frecuenciaPortadora (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
