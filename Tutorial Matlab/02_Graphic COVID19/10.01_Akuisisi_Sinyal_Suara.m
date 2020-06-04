function varargout = sp1(varargin)
% SP1 MATLAB code for sp1.fig
%      SP1, by itself, creates a new SP1 or raises the existing
%      singleton*.
%
%      H = SP1 returns the handle to a new SP1 or the handle to
%      the existing singleton*.
%
%      SP1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SP1.M with the given input arguments.
%
%      SP1('Property','Value',...) creates a new SP1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sp1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sp1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sp1

% Last Modified by GUIDE v2.5 03-Jun-2020 20:23:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sp1_OpeningFcn, ...
                   'gui_OutputFcn',  @sp1_OutputFcn, ...
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


% --- Executes just before sp1 is made visible.
function sp1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sp1 (see VARARGIN)

% Choose default command line output for sp1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sp1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sp1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% mereset tampilan gui
axes(handles.axes1)
cla reset
set(gca,'XTick',[])
set(gca,'YTick',[])
 
set(handles.edit1,'String',[])
set(handles.edit2,'String',[])


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% menampilkan menu browse file
[filename,pathname] = uigetfile('*.wav');
% jika ada file yang dipilih maka akan mengeksekusi perintah di bawah ini
if ~isequal(filename,0)
    % membaca file sinyal suara
    [y,Fs] = audioread(fullfile(pathname,filename));
    % menampilkan plot sinyal suara pada axes
    plot(y)
    grid on
    title('Sinyal Suara Masukan')
    set(gca,'YLim',[-2 2])
    set(handles.edit2,'String',filename)
else
    % jika tidak ada file yang dipilih maka akan kembali
    return
end

% menyimpan variabel y dan Fs pada lokasi handles agar dapat dipanggil oleh
% pushbutton yang lain
handles.y = y;
handles.Fs = Fs;
guidata(hObject, handles)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% memanggil variabel y dan Fs yang ada di lokasi handles
y = handles.y;
Fs = handles.Fs;
% membunyikan sinyal suara
sound(y,Fs);


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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% menetapkan parameter perekaman suara
Fs = 8000;
nBits = 8;
nChannels = 1;
t = 2;
% proses perekaman suara
recObj = audiorecorder(Fs,nBits,nChannels);
set(handles.edit1,'String','Start Speaking.')
recordblocking(recObj,t);
set(handles.edit1,'String','End of Recording.')
% membaca data suara hasil perekaman
myRecording = getaudiodata(recObj);
% menampilkan plot sinyal suara pada axes
axes(handles.axes1)
plot(myRecording)
grid on
title('Sinyal Suara Masukan')
set(gca,'YLim',[-2 2])
% menyimpan variabel Fs dan myRecording pada lokasi handles agar dapat
% dipanggil oleh pushbutton yang lain
handles.Fs = Fs;
handles.myRecording = myRecording;
guidata(hObject,handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% membaca variabel Fs dan myRecording yang ada di lokasi handles

myRecording = handles.myRecording;
Fs = handles.Fs;
% membunyikan suara hasil perekaman
sound(myRecording,Fs);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% menampilkan menu save file
[filename, pathname] = uiputfile('*.wav');
% jika ada file yang disimpan maka akan mengeksekusi perintah di bawah ini
if ~isequal(filename,0)
    % membaca variabel Fs dan myRecording yang ada di lokasi handles
    Fs = handles.Fs;
    myRecording = handles.myRecording;
    % menyimpan file sinyal suara
    audiowrite(fullfile(pathname,filename),myRecording,Fs)
else
    % jika tidak ada file yang disimpan maka akan kembali
    return
end


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
