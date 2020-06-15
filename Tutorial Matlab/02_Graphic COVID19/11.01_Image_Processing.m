function varargout = Digital_Image_Processing(varargin)
% DIGITAL_IMAGE_PROCESSING MATLAB code for Digital_Image_Processing.fig
%      DIGITAL_IMAGE_PROCESSING, by itself, creates a new DIGITAL_IMAGE_PROCESSING or raises the existing
%      singleton*.
%
%      H = DIGITAL_IMAGE_PROCESSING returns the handle to a new DIGITAL_IMAGE_PROCESSING or the handle to
%      the existing singleton*.
%
%      DIGITAL_IMAGE_PROCESSING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DIGITAL_IMAGE_PROCESSING.M with the given input arguments.
%
%      DIGITAL_IMAGE_PROCESSING('Property','Value',...) creates a new DIGITAL_IMAGE_PROCESSING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Digital_Image_Processing_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Digital_Image_Processing_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Digital_Image_Processing

% Last Modified by GUIDE v2.5 14-Jun-2020 22:37:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Digital_Image_Processing_OpeningFcn, ...
                   'gui_OutputFcn',  @Digital_Image_Processing_OutputFcn, ...
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


% --- Executes just before Digital_Image_Processing is made visible.
function Digital_Image_Processing_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Digital_Image_Processing (see VARARGIN)

xticklabels('');
yticklabels('');

% Choose default command line output for Digital_Image_Processing
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Digital_Image_Processing wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Digital_Image_Processing_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clear handles.I;

% menampilkan menu browse file
[filename,pathname] = uigetfile('*.jpg; *.png; *.jpeg');
% jika ada file yang dipilih maka akan mengeksekusi perintah di bawah ini
if ~isequal(filename,0)
    % membaca file image
    I = imread(fullfile(pathname,filename));
    % menampilkan image pada axes
    imshow(I)
else
    % jika tidak ada file yang dipilih maka akan kembali
    return
end

% menyimpan variabel I pada lokasi handles agar dapat dipanggil oleh
% pushbutton yang lain
handles.I = I;
guidata(hObject, handles)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% memanggil variabel I yang ada di lokasi handles
I = handles.I;
% Mengalokasikan RGB image
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);
% Mengambil salah satu channel RGB
Red = cat(3,R,G*0,B*0);
% Menampilkan image
imshow(Red);



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

I = handles.I;
J = rgb2gray(I);
imshow(J);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

I = handles.I;
J = rgb2gray(I);
L = str2num(get(handles.edit2,'String'));
K = im2bw(J,L);
imshow(K);


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


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

I = handles.I;
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);
Green = cat(3,R*0,G,B*0);
imshow(Green);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

I = handles.I;
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);
Blue = cat(3,R*0,G*0,B);
imshow(Blue);
