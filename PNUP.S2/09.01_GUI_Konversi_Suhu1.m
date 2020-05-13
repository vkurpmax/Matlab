function varargout = TempConv2(varargin)
% TEMPCONV2 MATLAB code for TempConv2.fig
%      TEMPCONV2, by itself, creates a new TEMPCONV2 or raises the existing
%      singleton*.
%
%      H = TEMPCONV2 returns the handle to a new TEMPCONV2 or the handle to
%      the existing singleton*.
%
%      TEMPCONV2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEMPCONV2.M with the given input arguments.
%
%      TEMPCONV2('Property','Value',...) creates a new TEMPCONV2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TempConv2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TempConv2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TempConv2

% Last Modified by GUIDE v2.5 13-May-2020 18:36:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TempConv2_OpeningFcn, ...
                   'gui_OutputFcn',  @TempConv2_OutputFcn, ...
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


% --- Executes just before TempConv2 is made visible.
function TempConv2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TempConv2 (see VARARGIN)

% Choose default command line output for TempConv2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TempConv2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TempConv2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in mode_konversi.
function mode_konversi_Callback(hObject, eventdata, handles)
    mode_konversi = get(hObject,'Value');
    
    switch mode_konversi
        case 1
            mode=1;
            handles.mode_konversi=mode;
            guidata(hObject,handles);
            
        case 2
            mode=2;
            handles.mode_konversi=mode;
            guidata(hObject,handles);
            
        case 3
            mode=3;
            handles.mode_konversi=mode;
            guidata(hObject,handles);
            
        case 4
            mode=4;
            handles.mode_konversi=mode;
            guidata(hObject,handles);
    end
% hObject    handle to mode_konversi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns mode_konversi contents as cell array
%        contents{get(hObject,'Value')} returns selected item from mode_konversi


% --- Executes during object creation, after setting all properties.
function mode_konversi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mode_konversi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function celcius_Callback(hObject, eventdata, handles)
    celcius = get(hObject,'String');
    guidata(hObject,handles);
    
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of start as text
%        str2double(get(hObject,'String')) returns contents of start as a double


% --- Executes during object creation, after setting all properties.
function start_CreateFcn(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
    mode = handles.mode_konversi;
    
    celcius = eval(get(handles.celcius,'String'));
    if mode==0
        msgbox('pilih jenis konversi');
    elseif mode==1
        msgbox('pilih jenis konversi');
    elseif mode==2
        hasil_konversi = (4/5)*celcius;
        hasil_konversi = num2str(hasil_konversi);
        set(handles.hasil,'String',strcat(num2str(hasil_konversi),' R'));
    elseif mode==3
        hasil_konversi = (9/5)*celcius + 32;
        hasil_konversi = num2str(hasil_konversi);
        set(handles.hasil,'String',strcat(num2str(hasil_konversi),' F'));
    elseif mode==4
        hasil_konversi = celcius+273;
        hasil_konversi = num2str(hasil_konversi);
        set(handles.hasil,'String',strcat(num2str(hasil_konversi),' K'));
    end
    
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
    close;
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
