function varargout = graficas(varargin)
% GRAFICAS M-file for graficas.fig
%      GRAFICAS, by itself, creates a new GRAFICAS or raises the existing
%      singleton*.
%
%      H = GRAFICAS returns the handle to a new GRAFICAS or the handle to
%      the existing singleton*.
%
%      GRAFICAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFICAS.M with the given input arguments.
%
%      GRAFICAS('Property','Value',...) creates a new GRAFICAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before graficas_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to graficas_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help graficas

% Last Modified by GUIDE v2.5 22-Sep-2014 00:22:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @graficas_OpeningFcn, ...
                   'gui_OutputFcn',  @graficas_OutputFcn, ...
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


% --- Executes just before graficas is made visible.
function graficas_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to graficas (see VARARGIN)

% Choose default command line output for graficas
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes graficas wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = graficas_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function TB_bits_Callback(hObject, eventdata, handles)
% hObject    handle to TB_bits (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TB_bits as text
%        str2double(get(hObject,'String')) returns contents of TB_bits as a double


% --- Executes during object creation, after setting all properties.
function TB_bits_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TB_bits (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in B_generar.
function B_generar_Callback(hObject, eventdata, handles)
% hObject    handle to B_generar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



global data;
global diezqam;
global N;


N=get(handles.TB_bits,'String');
N=str2num(N);

data=[randn(1,N)>0.5];


axes(handles.axes1)
plot(0,0);


axes(handles.axes1);
stairs([0:length(data)-1],data);
axis([0 length(data) -2 2]);


% --- Executes on selection change in DDL_select.
function DDL_select_Callback(hObject, eventdata, handles)
% hObject    handle to DDL_select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns DDL_select contents as cell array
%        contents{get(hObject,'Value')} returns selected item from DDL_select


global opcion;
global data;
global diezqam;
global N;
global b;
global bpsk;

func=get(handles.DDL_select,'Value');

switch(func)
    case 1 %qpsk
    opcion=1;
    b_data =data;
    b = [b_data];

    bit_stream = b;

    % 4 PHASE SHIFTS

    P1 = pi/4; %45degrees phase shift
    P2 = 3/4*pi; %135 degrees phase shift
    P3 = 5/4*pi; %225 degree phase shift
    P4 = 7/4*pi; %315 degree phase shift
    % Frequency of Modulating Signal

    f = 1; %f --> time period
    % Sampling rate of sine wave - This will define the resoultion

    fs = 100;
    % Time for one bit

    t = 0: 1/fs : 1;
    % This time variable is just for plot

    time = [];
    QPSK_signal = [];

    for ii = 1: 2: length(bit_stream)
      jj = ii + 1;

    if bit_stream(ii)==0
        if bit_stream(jj)==0
            bit00 = (bit_stream(ii)==0)*sin(2*pi*f*t + P1);
            QPSK_signal = [QPSK_signal (bit00)];

        else
           bit0 = (bit_stream(ii)==0)*sin(2*pi*f*t + P2);
           bit1 = (bit_stream(jj)==0)*sin(2*pi*f*t + P2);
           QPSK_signal = [QPSK_signal (bit0+bit1) ];
        end
    end

    if bit_stream(ii)==1
         if bit_stream(jj)==0
             bit1 = (bit_stream(ii)==0)*sin(2*pi*f*t + P3);
             bit0 = (bit_stream(jj)==0)*sin(2*pi*f*t + P3);
            QPSK_signal = [QPSK_signal (bit1+bit0) ];
         else
             bit11 = (bit_stream(jj)==1)*sin(2*pi*f*t + P4);
             QPSK_signal = [QPSK_signal (bit11) ];
         end
    end
        time = [time t];
        t =  t + 1;
    end


    % Plot the QPSK Signal


    axes(handles.axes2);
    plot(time, QPSK_signal,'LineWidth',2);
    xlabel('tiempo');
    ylabel('amplitude');
    title('QPSK ');
    axis([0 8 -1.5 1.5]);
    grid  on;



    b = [b_data];
    d=zeros(1,length(b)/2);
    %definition of the QPSK symbols using Gray coding.
    for n=1:length(b)/2
        p=b(2*n);
        imp=b(2*n-1);
        if (imp==0)&(p==0)
            d(n)=exp(j*pi/4);%45 degrees
        end
        if (imp==1)&(p==0)
            d(n)=exp(j*3*pi/4);%135 degrees
        end
        if (imp==1)&(p==1)
            d(n)=exp(j*5*pi/4);%225 degrees
        end
        if (imp==0)&(p==1)
            d(n)=exp(j*7*pi/4);%315 degrees
        end
    end


    esp = abs(fft(QPSK_signal));

    axes(handles.axes3);
    plot(esp,'b','LineWidth',1.5);
    grid on;
    title('espectro señal');





    qpsk=d;
    axes(handles.axes4);
    plot(d,'.');%plot constellation without noise
    axis([-2 2 -2 2]);
    grid on;
    xlabel('real'); ylabel('imaginario');
    title('QPSK constelacion sin snr');


    case 2 %8psk
        

        opcion=2;

        g=[data 0 0];
        t=0:2*pi/149:2*pi;
        cp=[];sp=[];
        mod=[];mod1=[];bit=[];

        time = [];
        for n=1:3:length(g);
            if g(n)==0 & g(n+1)==1 & g(n+2)==1
                die=cos(pi/8)*ones(1,150);
                die1=sin(pi/8)*ones(1,150);
                se=[zeros(1,50) ones(1,50) ones(1,50)];

            elseif g(n)==0 & g(n+1)==1 & g(n+2)==0
                die=cos(3*pi/8)*ones(1,150);
                die1=sin(3*pi/8)*ones(1,150);
                se=[zeros(1,50) ones(1,50) zeros(1,50)];

            elseif g(n)==0 & g(n+1)==0  & g(n+2)==0
                die=cos(5*pi/8)*ones(1,150);
                die1=sin(5*pi/8)*ones(1,150);
                se=[zeros(1,50) zeros(1,50) zeros(1,50)];

            elseif g(n)==0 & g(n+1)==0  & g(n+2)==1
                die=cos(7*pi/8)*ones(1,150);
                die1=sin(7*pi/8)*ones(1,150);
                se=[zeros(1,50) zeros(1,50) ones(1,50)];

            elseif g(n)==1 & g(n+1)==0  & g(n+2)==1
                die=cos(-7*pi/8)*ones(1,150);
                die1=sin(-7*pi/8)*ones(1,150);
                se=[ones(1,50) zeros(1,50) ones(1,50)];

            elseif g(n)==1 & g(n+1)==0  & g(n+2)==0
                die=cos(-5*pi/8)*ones(1,150);
                die1=sin(-5*pi/8)*ones(1,150);
                se=[ones(1,50) zeros(1,50) zeros(1,50)];

            elseif g(n)==1 & g(n+1)==1  & g(n+2)==0
                die=cos(-3*pi/8)*ones(1,150);
                die1=sin(-3*pi/8)*ones(1,150);
                se=[ones(1,50) ones(1,50) zeros(1,50)];

            elseif g(n)==1 & g(n+1)==1  & g(n+2)==1
                die=cos(-pi/8)*ones(1,150);
                die1=sin(-pi/8)*ones(1,150);
                se=[ones(1,50) ones(1,50) ones(1,50)];

            end
            c=cos(t);
            s=sin(t);
            cp=[cp die];    %Amplitude cosino
            sp=[sp -die1];   %Amplitude sino
            mod=[mod c];    %cosino carrier (Q)
            mod1=[mod1 s];  %sino carrier   (I)
            time = [time t];
            t =  t + 1;
        end
        bpsk=cp.*mod+sp.*mod1;

        axes(handles.axes2)
        plot(bpsk,'LineWidth',2,'r');
        title('8PSK modulacion')

        axes(handles.axes3)
        plot((abs(fft(bpsk))),'LineWidth',1.5);
        title('8PSK espectro')



        Mpsk_symbol=zeros(1,length(data)/3);
        for n=1:length(data)/3
            p1=data(3*n-2);
            p2=data(3*n-1);
            p3=data(3*n);
            if p1==0 && p2==0 && p3==1
                Mpsk_symbol(n)=exp(0);% 001-->0
            end
            if p1==0 && p2==0 && p3==0
                Mpsk_symbol(n)=exp(1i*pi/4);% 000-->45
            end
            if p1==1 && p2==0 && p3==0
                Mpsk_symbol(n)=exp(1i*2*pi/4);% 100-->90
            end
            if p1==1 && p2==1 && p3==0
                Mpsk_symbol(n)=exp(1i*3*pi/4);% 110-->135
            end
            if p1==0 && p2==1 && p3==0
                Mpsk_symbol(n)=exp(1i*4*pi/4);% 010-->180
            end
            if p1==0 && p2==1 && p3==1
                Mpsk_symbol(n)=exp(1i*5*pi/4);% 011-->225
            end
            if p1==1 && p2==1 && p3==1
                Mpsk_symbol(n)=exp(1i*6*pi/4);% 111-->270
            end
            if p1==1 && p2==0 && p3==1
                Mpsk_symbol(n)=exp(1i*7*pi/4);% 101-->315
            end



        end
        MSym=Mpsk_symbol;
        axes(handles.axes4)
        plot(MSym,'.'),grid off
        title('8PSK constelacion')
        axis([-2 2 -2 2])

    case 3 %8qam
        
        global ochoqam;

        opcion=3;
        
        axes(handles.axes4)
        plot(0,0);

        bin = data;
        f=4;
        L=length(bin);
        if (L<(3*fix(L/3)))

            while (L<(3*fix(L/3)))
                L=L+1;
            end
        end

        if (L>(3*fix(L/3)))

            while (L>(3*fix(L/3)))
                L=L-1;
            end
        end
        k=50;%t=0:2*pi/149:2*pi;length(t)
        bit1=ones(1,k);bit0=0*bit1;symbol=ones(1,3*k);mbit=[];mx=[];my=[];
        %disp(3*fix(L/3))
        %disp(L);

        if 3*fix(L/3)~=L
            error('Error en data');
        end

        for n=1:3:L
            if bin(n)==0 && bin(n+1)==0 && bin(n+2)==0
               x=symbol;y=0*symbol; bit=[bit0 bit0 bit0];
           elseif bin(n)==0 && bin(n+1)==0 && bin(n+2)==1
               x=2*symbol;y=0*symbol; bit=[bit0 bit0 bit1];
           elseif bin(n)==0 && bin(n+1)==1 && bin(n+2)==0
               x=0*symbol;y=symbol; bit=[bit0 bit1 bit0];
           elseif bin(n)==0 && bin(n+1)==1 && bin(n+2)==1
               x=0*symbol;y=2*symbol; bit=[bit0 bit1 bit1];

            elseif bin(n)==1 && bin(n+1)==0 && bin(n+2)==0
               x=-1*symbol;y=0*symbol; bit=[bit1 bit0 bit0];
           elseif bin(n)==1 && bin(n+1)==0 && bin(n+2)==1
               x=-2*symbol;y=0*symbol; bit=[bit1 bit0 bit1];
           elseif bin(n)==1 && bin(n+1)==1 && bin(n+2)==0
               x=0*symbol;y=-1*symbol; bit=[bit1 bit1 bit0];
           elseif bin(n)==1 && bin(n+1)==1 && bin(n+2)==1
               x=0*symbol;y=-2*symbol; bit=[bit1 bit1 bit1];    
            end
            mbit=[mbit bit];mx=[mx x];my=[my y];
        end
        v=0:2*pi/k:2*pi*L-2*pi/k;msync = mx+my*j;
        qam =  real(msync).*cos(f*v)+imag(msync).*sin(f*v);

        Vn=awgn(qam,10,'measured');
        Vnx=Vn.*cos(f*v);Vny=Vn.*sin(f*v);

        ochoqam=Vn;
        axes(handles.axes2);
        plot(Vn,'linewidth',2);
        title('8qam')

        axes(handles.axes3)
        plot((abs(fft(Vn))),'LineWidth',1.5);
        title('8qam espectro')



        R = [1 2]; % r1 = 1; r2 = r1*gamma
        M = [4 4];
        phi0 = [pi/4 pi/4];


        constellation =[];

        for i = 1:(length(data)/3)

            p1=data(3*i-2);
            p2=data(3*i-1);
            p3=data(3*i);

            for k = 1:length(R)

                for kk = 1:(length(data))

                    if (k==1 && kk==2 && p1==0 && p2==0 && p3==0)
                        constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                    end


                    if (k==2 && kk==2 && p1==0 && p2==0 && p3==1)
                        constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                    end


                    if (k==1 && kk==3 && p1==0 && p2==1 && p3==0)
                        constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                    end

                    if (k==2 && kk==3 && p1==0 && p2==1 && p3==1)
                        constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                    end


                    if (k==1 && kk==4 && p1==1 && p2==0 && p3==0)
                        constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                    end

                    if (k==2 && kk==4 && p1==1 && p2==0 && p3==1)
                        constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                    end

                    if (k==1 && kk==5 && p1==1 && p2==1 && p3==0)
                        constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                    end

                    if (k==2 && kk==5 && p1==1 && p2==1 && p3==1)
                        constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                    end
                end
            end
        end

        axes(handles.axes4)
        plot(constellation,'.');
        axis([-2 2 -2 2]);
        title('8qam constelacion')


    case 4 %16qam

        dec=data;
        dl=length(dec);


        sp=[];
        o1=[];
        o2=[];
        clear i;
        for i=1:4:dl-3;
            sp=[dec(1,i:i+3)];  % Serial to Parallel 4-bit Register
            I=sp(1,1);          % Separation of I and Q bits
            Id=sp(1,2);
            Q=sp(1,3);
            Qd=sp(1,4);

            if I==0             % Assigning Amplitude levels for I-channel
                if Id==0
                    o1=[o1 -3]; % if input is 00, output is -3
                else
                    o1=[o1 -1]; % if input is 01, output is -1
                end

            else
                if Id==0
                    o1=[o1 1]; % if input is 10, output is 1
                else
                    o1=[o1 3]; % if input is 11, output is 3
                end
            end

            if Q==0             % Assigning Amplitude levels for Q-channel
                if Qd==0
                    o2=[o2 -3]; % if input is 00, output is -3
                else
                    o2=[o2 -1]; % if input is 01, output is -1
                end

            else
                if Qd==0
                    o2=[o2 1]; % if input is 10, output is 1
                else
                    o2=[o2 3]; % if input is 11, output is 3
                end
            end

        clear sp, clear I, clear Id, clear Q, clear Qd; 
        end



        %%%% Oscillator and Balanced Modulator %%%%
        fc=500;              % Carrier Frequency
        fs=20000;            % Sampling Frequency
        t=1:100;             % Duration of Signal
        s=[];
        clear i;
        for i=1:1:length(o1);        % Modulation (multiplication with carrier signals cos and sin)
            Ac=o1(i);
            As=o2(i);
            s1=Ac*cos(2*pi*(fc/fs)*t);
            s2=As*sin(2*pi*(fc/fs)*t);
            s=[s (s1+s2)];
        end
        axes(handles.axes2);
        plot(s,'LineWidth',2);
        title('16-QAM');
        diezqam=s;

        axes(handles.axes3)
        plot((abs(fft(s))),'LineWidth',1.5);
        title('16-QAM espectro')


        axes(handles.axes4)

        const=[];
        hold on;
        for k = 1:(length(data)/4)

            p1=data(4*k-3);
            p2=data(4*k-2);
            p3=data(4*k-1);
            p4=data(4*k);

            for kk = 1:(length(data))
              if (kk==1 && p1==0 && p2==0&& p3==0&& p4==0)
                  const=[const 6]
               end
              if (kk==2 &&  p1==0 && p2==0&& p3==0&& p4==1)
                  const=[const 2]
              end
              if (kk==3 &&  p1==0 && p2==0&& p3==1&& p4==0)
                  const=[const 10]
              end

              if (kk==4 &&  p1==0 && p2==0&& p3==1&& p4==1)
               const=[const 14]
              end

              if (kk==5 &&  p1==0 && p2==1 && p3==0 && p4==0)
                const=[const 7]
              end

              if (kk==6 &&  p1==0 && p2==1 && p3==0 && p4==1)
                const=[const 3]
              end

              if (kk==7 &&  p1==0 && p2==1 && p3==1 && p4==0)
                const=[const 11]
              end

              if (kk==8 &&  p1==0 && p2==1 && p3==1 && p4==1)
                const=[const 15]
              end
              if (kk==9 &&  p1==1 && p2==0 && p3==0 && p4==0)
                const=[const 5]
              end
              if (kk==10 &&  p1==1 && p2==0 && p3==0 && p4==1)
                const=[const 1]
              end
              if (kk==11 &&  p1==1 && p2==0 && p3==1 && p4==0)
                const=[const 9]
              end

              if (kk==12 &&  p1==1 && p2==0 && p3==1 && p4==1)
                const=[const 13]
              end

              if (kk==13 &&  p1==1 && p2==1 && p3==0 && p4==0)
                const=[const 4]
              end
              if (kk==14 &&  p1==1 && p2==1 && p3==0 && p4==1)
                const=[const 0]
              end
              if (kk==15 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 8]
              end
              if (kk==16 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 12]
              end
            end
        end

        for ff=1:length(const)

                y=modulate(modem.qammod(16),const(ff));
                plot(y,'.');
                axis([-5 5 -5 5]);
                title('constelacion 16-QAM ');
                grid  off;
        end
        hold off;
    case 5 %32qam
        opcion=5;
        axes(handles.axes4)
        plot(0,0);
        dec=data;
        dl=length(dec);


        sp=[];
        o1=[];
        o2=[];
        clear i;
        for i=1:4:dl-3;
            sp=[dec(1,i:i+3)];  % Serial to Parallel 4-bit Register
            I=sp(1,1);          % Separation of I and Q bits
            Id=sp(1,2);
            Q=sp(1,3);
            Qd=sp(1,4);

            if I==0             % Assigning Amplitude levels for I-channel
                if Id==0
                    o1=[o1 -3]; % if input is 00, output is -3
                else
                    o1=[o1 -1]; % if input is 01, output is -1
                end

            else
                if Id==0
                    o1=[o1 1]; % if input is 10, output is 1
                else
                    o1=[o1 3]; % if input is 11, output is 3
                end
            end

            if Q==0             % Assigning Amplitude levels for Q-channel
                if Qd==0
                    o2=[o2 -3]; % if input is 00, output is -3
                else
                    o2=[o2 -1]; % if input is 01, output is -1
                end

            else
                if Qd==0
                    o2=[o2 1]; % if input is 10, output is 1
                else
                    o2=[o2 3]; % if input is 11, output is 3
                end
            end

        clear sp, clear I, clear Id, clear Q, clear Qd; 
        end



        %%%% Oscillator and Balanced Modulator %%%%
        fc=480;              % Carrier Frequency
        fs=20110;            % Sampling Frequency
        t=1:90;             % Duration of Signal
        s=[];
        clear i;
        for i=1:1:length(o1);        % Modulation (multiplication with carrier signals cos and sin)
            Ac=o1(i);
            As=o2(i);
            s1=Ac*cos(2*pi*(fc/fs)*t);
            s2=As*sin(2*pi*(fc/fs)*t);
            s=[s (s1+s2)];
        end
        axes(handles.axes2);
        plot(s,'LineWidth',2);
        title('32-QAM');
        diezqam=s;

        axes(handles.axes3)
        plot((abs(fft(s))),'LineWidth',1.5);
        title('32-QAM espectro')


        axes(handles.axes4)

        const=[];
        hold on;
        for k = 1:(length(data)/8)

            p1=data(8*k-3);
            p2=data(8*k-2);
            p3=data(8*k-1);
            p4=data(8*k);

            for kk = 1:(length(data))
              if (kk==1 && p1==0 && p2==0&& p3==0&& p4==0)
                  const=[const 6]
               end
              if (kk==2 &&  p1==0 && p2==0&& p3==0&& p4==1)
                  const=[const 2]
              end
              if (kk==3 &&  p1==0 && p2==0&& p3==1&& p4==0)
                  const=[const 10]
              end

              if (kk==4 &&  p1==0 && p2==0&& p3==1&& p4==1)
               const=[const 14]
              end

              if (kk==5 &&  p1==0 && p2==1 && p3==0 && p4==0)
                const=[const 7]
              end

              if (kk==6 &&  p1==0 && p2==1 && p3==0 && p4==1)
                const=[const 3]
              end

              if (kk==7 &&  p1==0 && p2==1 && p3==1 && p4==0)
                const=[const 11]
              end

              if (kk==8 &&  p1==0 && p2==1 && p3==1 && p4==1)
                const=[const 15]
              end
              if (kk==9 &&  p1==1 && p2==0 && p3==0 && p4==0)
                const=[const 5]
              end
              if (kk==10 &&  p1==1 && p2==0 && p3==0 && p4==1)
                const=[const 1]
              end
              if (kk==11 &&  p1==1 && p2==0 && p3==1 && p4==0)
                const=[const 9]
              end

              if (kk==12 &&  p1==1 && p2==0 && p3==1 && p4==1)
                const=[const 13]
              end

              if (kk==13 &&  p1==1 && p2==1 && p3==0 && p4==0)
                const=[const 4]
              end
              if (kk==14 &&  p1==1 && p2==1 && p3==0 && p4==1)
                const=[const 0]
              end
              if (kk==15 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 8]
              end
              if (kk==16 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 12]
              end
              if (kk==17 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 1]
              end
              if (kk==18 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 13]
              end
              if (kk==19 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 5]
              end
              if (kk==20 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 8]
              end
              if (kk==21 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 6]
              end
              if (kk==22 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 2]
              end
              if (kk==23 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 9]
              end
              if (kk==24 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 12]
              end
              if (kk==25 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 20]
              end
              if (kk==26 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 25]
              end
              if (kk==27 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 1]
              end
              if (kk==28 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 27]
              end
              if (kk==29 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 3]
              end
              if (kk==30 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 10]
              end
              if (kk==31 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 13]
              end
              if (kk==32 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 7]
              end
            end
        end

        for ff=1:length(const)

                y=modulate(modem.qammod(32),const(ff));
                plot(y,'.');
                title('constelacion 32-QAM ');
                grid  off;
        end
        hold off;
    case 6 %64qam
        
        opcion=6;
        dec=data;
        dl=length(dec);


        sp=[];
        o1=[];
        o2=[];
        clear i;
        for i=1:4:dl-3;
            sp=[dec(1,i:i+3)];  % Serial to Parallel 4-bit Register
            I=sp(1,1);          % Separation of I and Q bits
            Id=sp(1,2);
            Q=sp(1,3);
            Qd=sp(1,4);

            if I==0             % Assigning Amplitude levels for I-channel
                if Id==0
                    o1=[o1 -3]; % if input is 00, output is -3
                else
                    o1=[o1 -1]; % if input is 01, output is -1
                end

            else
                if Id==0
                    o1=[o1 1]; % if input is 10, output is 1
                else
                    o1=[o1 3]; % if input is 11, output is 3
                end
            end

            if Q==0             % Assigning Amplitude levels for Q-channel
                if Qd==0
                    o2=[o2 -3]; % if input is 00, output is -3
                else
                    o2=[o2 -1]; % if input is 01, output is -1
                end

            else
                if Qd==0
                    o2=[o2 1]; % if input is 10, output is 1
                else
                    o2=[o2 3]; % if input is 11, output is 3
                end
            end

        clear sp, clear I, clear Id, clear Q, clear Qd; 
        end



        %%%% Oscillator and Balanced Modulator %%%%
        fc=600;              % Carrier Frequency
        fs=10000;            % Sampling Frequency
        t=1:200;             % Duration of Signal
        s=[];
        clear i;
        for i=1:1:length(o1);        % Modulation (multiplication with carrier signals cos and sin)
            Ac=o1(i);
            As=o2(i);
            s1=Ac*cos(2*pi*(fc/fs)*t);
            s2=As*sin(2*pi*(fc/fs)*t);
            s=[s (s1+s2)];
        end
        axes(handles.axes2);
        plot(s,'LineWidth',1.5);
        title('64-QAM');
        diezqam=s;

        axes(handles.axes3)
        plot((abs(fft(s))),'LineWidth',1.5);
        title('64-QAM espectro')


        axes(handles.axes4)

        const=[];
        hold on;
        for k = 1:(length(data)/4)

            p1=data(4*k-3);
            p2=data(4*k-2);
            p3=data(4*k-1);
            p4=data(4*k);

            for kk = 1:(length(data))
              if (kk==1 && p1==0 && p2==0&& p3==0&& p4==0)
                  const=[const 6]
               end
              if (kk==2 &&  p1==0 && p2==0&& p3==0&& p4==1)
                  const=[const 2]
              end
              if (kk==3 &&  p1==0 && p2==0&& p3==1&& p4==0)
                  const=[const 10]
              end

              if (kk==4 &&  p1==0 && p2==0&& p3==1&& p4==1)
               const=[const 14]
              end

              if (kk==5 &&  p1==0 && p2==1 && p3==0 && p4==0)
                const=[const 7]
              end

              if (kk==6 &&  p1==0 && p2==1 && p3==0 && p4==1)
                const=[const 3]
              end

              if (kk==7 &&  p1==0 && p2==1 && p3==1 && p4==0)
                const=[const 11]
              end

              if (kk==8 &&  p1==0 && p2==1 && p3==1 && p4==1)
                const=[const 15]
              end
              if (kk==9 &&  p1==1 && p2==0 && p3==0 && p4==0)
                const=[const 5]
              end
              if (kk==10 &&  p1==1 && p2==0 && p3==0 && p4==1)
                const=[const 1]
              end
              if (kk==11 &&  p1==1 && p2==0 && p3==1 && p4==0)
                const=[const 9]
              end

              if (kk==12 &&  p1==1 && p2==0 && p3==1 && p4==1)
                const=[const 13]
              end

              if (kk==13 &&  p1==1 && p2==1 && p3==0 && p4==0)
                const=[const 4]
              end
              if (kk==14 &&  p1==1 && p2==1 && p3==0 && p4==1)
                const=[const 0]
              end
              if (kk==15 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 8]
              end
              if (kk==16 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 12]
              end
            end
        end

        for ff=1:length(const)

                y=modulate(modem.qammod(64),const(ff));
                plot(y,'.');
                title('constelacion 64-QAM ');
                grid  off;
        end
        hold off;
        
end 



% --- Executes during object creation, after setting all properties.
function DDL_select_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DDL_select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TB_ber_Callback(hObject, eventdata, handles)
% hObject    handle to TB_ber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TB_ber as text
%        str2double(get(hObject,'String')) returns contents of TB_ber as a double


% --- Executes during object creation, after setting all properties.
function TB_ber_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TB_ber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in B_graficar.
function B_graficar_Callback(hObject, eventdata, handles)
% hObject    handle to B_graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global opcion;
global data;
global diezqam;
global N;
global b;

if(opcion ==1)


    axes(handles.axes7);
    plot(0,0);
    axis([-2 2 -2 2]);
    grid off;
    hold off;

    bit_stream = b;

    % 4 PHASE SHIFTS

    P1 = pi/4; %45degrees phase shift
    P2 = 3/4*pi; %135 degrees phase shift
    P3 = 5/4*pi; %225 degree phase shift
    P4 = 7/4*pi; %315 degree phase shift
    % Frequency of Modulating Signal

    f = 1; %f --> time period
    % Sampling rate of sine wave - This will define the resoultion

    fs = 100;
    % Time for one bit

    t = 0: 1/fs : 1;
    % This time variable is just for plot

    time = [];
    QPSK_signal = [];

    for ii = 1: 2: length(bit_stream)
      jj = ii + 1;

    if bit_stream(ii)==0
        if bit_stream(jj)==0
            bit00 = (bit_stream(ii)==0)*sin(2*pi*f*t + P1);
            QPSK_signal = [QPSK_signal (bit00)];

        else
           bit0 = (bit_stream(ii)==0)*sin(2*pi*f*t + P2);
           bit1 = (bit_stream(jj)==0)*sin(2*pi*f*t + P2);
           QPSK_signal = [QPSK_signal (bit0+bit1) ];
        end
    end

    if bit_stream(ii)==1
         if bit_stream(jj)==0
             bit1 = (bit_stream(ii)==0)*sin(2*pi*f*t + P3);
             bit0 = (bit_stream(jj)==0)*sin(2*pi*f*t + P3);
            QPSK_signal = [QPSK_signal (bit1+bit0) ];
         else
             bit11 = (bit_stream(jj)==1)*sin(2*pi*f*t + P4);
             QPSK_signal = [QPSK_signal (bit11) ];
         end
    end
        time = [time t];
        t =  t + 1;
    end


    % Plot the QPSK Signal



    num=get(handles.TB_ber,'String');
    num=str2num(num);
    SNR=0:num;


    axes(handles.axes5);
    Y = awgn(QPSK_signal,num,'measured');
    plot(time,QPSK_signal,time,Y,'LineWidth',0.2);
    xlabel('Tiempo');
    ylabel('Amplitude');
    title('señal QPSK ');
    axis([0 6 -1.5 1.5]);
    grid  on;


    d=zeros(1,length(b)/2);
    %definition of the QPSK symbols using Gray coding.
    for n=1:length(b)/2
        p=b(2*n);
        imp=b(2*n-1);
        if (imp==0)&(p==0)
            d(n)=exp(j*pi/4);%45 degrees
        end
        if (imp==1)&(p==0)
            d(n)=exp(j*3*pi/4);%135 degrees
        end
        if (imp==1)&(p==1)
            d(n)=exp(j*5*pi/4);%225 degrees
        end
        if (imp==0)&(p==1)
            d(n)=exp(j*7*pi/4);%315 degrees
        end
    end



    qpsk=d;


    esp = abs(fft(QPSK_signal,(num*100)));
    axes(handles.axes6);
    plot(esp,'b','LineWidth',1.5);
    grid on;
    title('Espectro Señal');

    sigma1=[];


    %AWGN(additive white Gaussian noise)
    for SNR=0:length(SNR);%loop over SNR
    sigma = sqrt(10.0^(-SNR/10.0));
    sigma=sigma/2;%Required a division by 2 to get close to exact solutions(Notes)-WHY?
    %Is dividing by two(2) legitimate?
    sigma1=[sigma1 sigma];
    %add noise to QPSK Gray coded signals
    snqpsk=(real(qpsk)+sigma.*randn(size(qpsk))) +i.*(imag(qpsk)+sigma*randn(size(qpsk)));

    axes(handles.axes7);
    plot(snqpsk,'.'); % plot constellation with noise
    axis([-2 2 -2 2]);
    grid on;
    xlabel('real'); ylabel('imaginario');
    title('QPSK Constelacion snr');
    end
    
    

end
if(opcion==2)
        global bpsk;
        num=get(handles.TB_ber,'String');
        num=str2num(num);
        SNR=0:num;



        g=[data 0 0];



        axes(handles.axes5);
        Y = awgn(bpsk,num,'measured');
        plot(Y,'LineWidth',1.5);
        title('señal con ruido 8PSK ');
        grid  off;



        axes(handles.axes6);
        plot(abs(fft(bpsk,num*100)),'LineWidth',1.5);
        title('señal 8PSK ');
        grid  off;



        Mpsk_symbol=zeros(1,length(data)/3);
        for n=1:length(data)/3
            p1=data(3*n-2);
            p2=data(3*n-1);
            p3=data(3*n);
            if p1==0 && p2==0 && p3==1
                Mpsk_symbol(n)=exp(0);% 001-->0
            end
            if p1==0 && p2==0 && p3==0
                Mpsk_symbol(n)=exp(1i*pi/4);% 000-->45
            end
            if p1==1 && p2==0 && p3==0
                Mpsk_symbol(n)=exp(1i*2*pi/4);% 100-->90
            end
            if p1==1 && p2==1 && p3==0
                Mpsk_symbol(n)=exp(1i*3*pi/4);% 110-->135
            end
            if p1==0 && p2==1 && p3==0
                Mpsk_symbol(n)=exp(1i*4*pi/4);% 010-->180
            end
            if p1==0 && p2==1 && p3==1
                Mpsk_symbol(n)=exp(1i*5*pi/4);% 011-->225
            end
            if p1==1 && p2==1 && p3==1
                Mpsk_symbol(n)=exp(1i*6*pi/4);% 111-->270
            end
            if p1==1 && p2==0 && p3==1
                Mpsk_symbol(n)=exp(1i*7*pi/4);% 101-->315
            end

        end
        MSym=Mpsk_symbol;



        sigma1=[];

        SNR=0:num;

        %AWGN(additive white Gaussian noise)
        for SNR=0:length(SNR);%loop over SNR
        sigma = sqrt(10.0^(-SNR/10.0));
        sigma=sigma/3;%Required a division by 2 to get close to exact solutions(Notes)-WHY?
        %Is dividing by two(2) legitimate?
        sigma1=[sigma1 sigma];
        %add noise to QPSK Gray coded signals
        snqpsk=(real(MSym)+sigma.*randn(size(MSym))) +i.*(imag(MSym)+sigma*randn(size(MSym)));

        axes(handles.axes7);
        plot(snqpsk,'.'); % plot constellation with noise
        axis([-2 2 -2 2]);
        grid off;
        xlabel('real'); ylabel('imaginario');
        title('8PSK Constelacion snr');
        end

    end

 if(opcion==3)


    global ochoqam;
   % global data;
    
    num=get(handles.TB_ber,'String');
    num=str2num(num);
    SNR=0:num;



    g=[data 0 0];


    axes(handles.axes5);
    Y = awgn(ochoqam,num,'measured');
    plot(Y,'LineWidth',1.5);
    title('Señal con ruido 8qam ');
    grid  off;

    axes(handles.axes6);
    plot(abs(fft(ochoqam,num*100)),'LineWidth',1.5);
    title('Espectro 8qam ');
    grid  off;


    R = [1 2]; % r1 = 1; r2 = r1*gamma
    M = [4 4];
    phi0 = [pi/4 pi/4];


    constellation =[];


    for nn=1:(length(data)/3)

        p1=data(3*nn-2);
        p2=data(3*nn-1);
        p3=data(3*nn);

        for k = 1:length(R)

            for kk = 1:(length(data))

                if (k==1 && kk==2 && p1==0 && p2==0 && p3==0)
                    constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                end


                if (k==2 && kk==2 && p1==0 && p2==0 && p3==1)
                    constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                end


                if (k==1 && kk==3 && p1==0 && p2==1 && p3==0)
                    constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                end

                if (k==2 && kk==3 && p1==0 && p2==1 && p3==1)
                    constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                end


                if (k==1 && kk==4 && p1==1 && p2==0 && p3==0)
                    constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                end

                if (k==2 && kk==4 && p1==1 && p2==0 && p3==1)
                    constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                end

                if (k==1 && kk==5 && p1==1 && p2==1 && p3==0)
                    constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                end

                if (k==2 && kk==5 && p1==1 && p2==1 && p3==1)
                    constellation = [constellation R(k)*exp(1j*(2*pi*kk/M(k)+phi0(k)))];
                end
            end
        end
    end

    
    
    MSym=constellation;


    sigma1=[];

    SNR=0:num;

    %AWGN(additive white Gaussian noise)
    for SNR=0:length(SNR);%loop over SNR
    sigma = sqrt(10.0^(-SNR/10.0));
    sigma=sigma/3;%Required a division by 2 to get close to exact solutions(Notes)-WHY?
    %Is dividing by two(2) legitimate?
    sigma1=[sigma1 sigma];
    %add noise to QPSK Gray coded signals
    snqpsk=(real(MSym)+sigma.*randn(size(MSym))) +i.*(imag(MSym)+sigma*randn(size(MSym)));

    axes(handles.axes7);
    plot(snqpsk,'.'); % plot constellation with noise
    axis([-2 2 -2 2]);
    grid off;
    xlabel('real'); ylabel('imaginario');
    title('8qam Constelacion snr');
    end

 end

 if(opcion==4)

        axes(handles.axes7)
        plot(0,0);

        num=get(handles.TB_ber,'String');
        num=str2num(num);


        axes(handles.axes5);
        Y = awgn(diezqam,num,'measured');
        plot(Y,'LineWidth',1.5);
        title('Señal con ruido 16-QAM ');
        grid  off;

        axes(handles.axes6);
        plot(abs(fft(diezqam,num*100)),'LineWidth',1.5);
        title('Espectro 16-QAM ');
        grid  off;



        axes(handles.axes7);

        const=[];
        hold on;
        for k = 1:(length(data)/4)

            p1=data(4*k-3);
            p2=data(4*k-2);
            p3=data(4*k-1);
            p4=data(4*k);

            for kk = 1:(length(data))
              if (kk==1 && p1==0 && p2==0&& p3==0&& p4==0)
                  const=[const 6]
               end
              if (kk==2 &&  p1==0 && p2==0&& p3==0&& p4==1)
                  const=[const 2]
              end
              if (kk==3 &&  p1==0 && p2==0&& p3==1&& p4==0)
                  const=[const 10]
              end

              if (kk==4 &&  p1==0 && p2==0&& p3==1&& p4==1)
               const=[const 14]
              end

              if (kk==5 &&  p1==0 && p2==1 && p3==0 && p4==0)
                const=[const 7]
              end

              if (kk==6 &&  p1==0 && p2==1 && p3==0 && p4==1)
                const=[const 3]
              end

              if (kk==7 &&  p1==0 && p2==1 && p3==1 && p4==0)
                const=[const 11]
              end

              if (kk==8 &&  p1==0 && p2==1 && p3==1 && p4==1)
                const=[const 15]
              end
              if (kk==9 &&  p1==1 && p2==0 && p3==0 && p4==0)
                const=[const 5]
              end
              if (kk==10 &&  p1==1 && p2==0 && p3==0 && p4==1)
                const=[const 1]
              end
              if (kk==11 &&  p1==1 && p2==0 && p3==1 && p4==0)
                const=[const 9]
              end

              if (kk==12 &&  p1==1 && p2==0 && p3==1 && p4==1)
                const=[const 13]
              end

              if (kk==13 &&  p1==1 && p2==1 && p3==0 && p4==0)
                const=[const 4]
              end
              if (kk==14 &&  p1==1 && p2==1 && p3==0 && p4==1)
                const=[const 0]
              end
              if (kk==15 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 8]
              end
              if (kk==16 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 12]
              end
            end
        end

        for tt=1:length(const)

                y=modulate(modem.qammod(16),const(tt));
                ynoisy = awgn(y,num,'measured');
                plot(ynoisy,'.');
                axis([-5 5 -5 5]);
                title('constelacion 16-QAM ');
                grid  off;
        end
        hold off;

 end

 if(opcion==5)

        axes(handles.axes7)
        plot(0,0);

        num=get(handles.TB_ber,'String');
        num=str2num(num);


        axes(handles.axes5);
        Y = awgn(diezqam,num,'measured');
        plot(Y,'LineWidth',1.5);
        title('Señal con ruido 32-QAM ');
        grid  off;

        axes(handles.axes6);
        plot(abs(fft(diezqam,num*100)),'LineWidth',1.5);
        title('Espectro 32-QAM ');
        grid  off;



        axes(handles.axes7);

        const=[];
        hold on;

        
        for k = 1:(length(data)/8)

            p1=data(8*k-3);
            p2=data(8*k-2);
            p3=data(8*k-1);
            p4=data(8*k);

            for kk = 1:(length(data))
              if (kk==1 && p1==0 && p2==0&& p3==0&& p4==0)
                  const=[const 6]
               end
              if (kk==2 &&  p1==0 && p2==0&& p3==0&& p4==1)
                  const=[const 2]
              end
              if (kk==3 &&  p1==0 && p2==0&& p3==1&& p4==0)
                  const=[const 10]
              end

              if (kk==4 &&  p1==0 && p2==0&& p3==1&& p4==1)
               const=[const 14]
              end

              if (kk==5 &&  p1==0 && p2==1 && p3==0 && p4==0)
                const=[const 7]
              end

              if (kk==6 &&  p1==0 && p2==1 && p3==0 && p4==1)
                const=[const 3]
              end

              if (kk==7 &&  p1==0 && p2==1 && p3==1 && p4==0)
                const=[const 11]
              end

              if (kk==8 &&  p1==0 && p2==1 && p3==1 && p4==1)
                const=[const 15]
              end
              if (kk==9 &&  p1==1 && p2==0 && p3==0 && p4==0)
                const=[const 5]
              end
              if (kk==10 &&  p1==1 && p2==0 && p3==0 && p4==1)
                const=[const 1]
              end
              if (kk==11 &&  p1==1 && p2==0 && p3==1 && p4==0)
                const=[const 9]
              end

              if (kk==12 &&  p1==1 && p2==0 && p3==1 && p4==1)
                const=[const 13]
              end

              if (kk==13 &&  p1==1 && p2==1 && p3==0 && p4==0)
                const=[const 4]
              end
              if (kk==14 &&  p1==1 && p2==1 && p3==0 && p4==1)
                const=[const 0]
              end
              if (kk==15 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 8]
              end
              if (kk==16 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 12]
              end
              if (kk==17 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 1]
              end
              if (kk==18 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 13]
              end
              if (kk==19 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 5]
              end
              if (kk==20 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 8]
              end
              if (kk==21 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 6]
              end
              if (kk==22 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 2]
              end
              if (kk==23 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 9]
              end
              if (kk==24 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 12]
              end
              if (kk==25 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 20]
              end
              if (kk==26 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 25]
              end
              if (kk==27 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 1]
              end
              if (kk==28 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 27]
              end
              if (kk==29 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 3]
              end
              if (kk==30 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 10]
              end
              if (kk==31 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 13]
              end
              if (kk==32 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 7]
              end
            end
        end

        
        for tt=1:length(const)

                y=modulate(modem.qammod(32),const(tt));
                ynoisy = awgn(y,num,'measured');
                plot(ynoisy,'.');
                title('constelacion 32-QAM ');
                grid  off;
        end
        hold off;

 end

 if(opcion==6)

        axes(handles.axes7)
        plot(0,0);

        num=get(handles.TB_ber,'String');
        num=str2num(num);


        axes(handles.axes5);
        Y = awgn(diezqam,num,'measured');
        plot(Y,'LineWidth',1.5);
        title('Señal con ruido 64-QAM ');
        grid  off;

        axes(handles.axes6);
        plot(abs(fft(diezqam,num*100)),'LineWidth',1.5);
        title('Espectro 64-QAM ');
        grid  off;



        axes(handles.axes7);

        const=[];
        hold on;

        
        for k = 1:(length(data)/8)

            p1=data(8*k-3);
            p2=data(8*k-2);
            p3=data(8*k-1);
            p4=data(8*k);

            for kk = 1:(length(data))
              if (kk==1 && p1==0 && p2==0&& p3==0&& p4==0)
                  const=[const 6]
               end
              if (kk==2 &&  p1==0 && p2==0&& p3==0&& p4==1)
                  const=[const 2]
              end
              if (kk==3 &&  p1==0 && p2==0&& p3==1&& p4==0)
                  const=[const 10]
              end

              if (kk==4 &&  p1==0 && p2==0&& p3==1&& p4==1)
               const=[const 14]
              end

              if (kk==5 &&  p1==0 && p2==1 && p3==0 && p4==0)
                const=[const 7]
              end

              if (kk==6 &&  p1==0 && p2==1 && p3==0 && p4==1)
                const=[const 3]
              end

              if (kk==7 &&  p1==0 && p2==1 && p3==1 && p4==0)
                const=[const 11]
              end

              if (kk==8 &&  p1==0 && p2==1 && p3==1 && p4==1)
                const=[const 15]
              end
              if (kk==9 &&  p1==1 && p2==0 && p3==0 && p4==0)
                const=[const 5]
              end
              if (kk==10 &&  p1==1 && p2==0 && p3==0 && p4==1)
                const=[const 1]
              end
              if (kk==11 &&  p1==1 && p2==0 && p3==1 && p4==0)
                const=[const 9]
              end

              if (kk==12 &&  p1==1 && p2==0 && p3==1 && p4==1)
                const=[const 13]
              end

              if (kk==13 &&  p1==1 && p2==1 && p3==0 && p4==0)
                const=[const 4]
              end
              if (kk==14 &&  p1==1 && p2==1 && p3==0 && p4==1)
                const=[const 0]
              end
              if (kk==15 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 8]
              end
              if (kk==16 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 12]
              end
              if (kk==17 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 1]
              end
              if (kk==18 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 13]
              end
              if (kk==19 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 5]
              end
              if (kk==20 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 8]
              end
              if (kk==21 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 6]
              end
              if (kk==22 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 2]
              end
              if (kk==23 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 9]
              end
              if (kk==24 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 12]
              end
              if (kk==25 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 20]
              end
              if (kk==26 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 25]
              end
              if (kk==27 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 1]
              end
              if (kk==28 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 27]
              end
              if (kk==29 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 3]
              end
              if (kk==30 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 10]
              end
              if (kk==31 &&  p1==1 && p2==1 && p3==1 && p4==1)
                const=[const 13]
              end
              if (kk==32 &&  p1==1 && p2==1 && p3==1 && p4==0)
                const=[const 7]
              end
            end
        end

        
        for tt=1:length(const)

                y=modulate(modem.qammod(64),const(tt));
                ynoisy = awgn(y,num,'measured');
                plot(ynoisy,'.');
                title('constelacion 64-QAM ');
                grid  off;
        end
        hold off;

 end
