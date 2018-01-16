function varargout = registroextracelularv10(varargin)
%
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @registroextracelularv10_OpeningFcn, ...
                   'gui_OutputFcn',  @registroextracelularv10_OutputFcn, ...
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


% --- Executes just before registroextracelularv10 is made visible.
function registroextracelularv10_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to registroextracelularv10 (see VARARGIN)

% Choose default command line output for registroextracelularv10
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes registroextracelularv10 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = registroextracelularv10_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in cerrar.
function cerrar_Callback(hObject, eventdata, handles)
% hObject    handle to cerrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close


% --- Executes on button press in limpiar.
function limpiar_Callback(hObject, eventdata, handles)
% hObject    handle to limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2);
grid off
cla




% --- Executes on button press in abrir.
function abrir_Callback(hObject, eventdata, handles)
% hObject    handle to abrir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t amps data aux
[t,amps,data,aux] = read_intan_data;




% --- Executes on button press in graficar.
function graficar_Callback(hObject, eventdata, handles)
% hObject    handle to graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t  data 
grid on;
selcanales = get(handles.canales, 'Value');
 switch selcanales
    case 1
       axes(handles.axes2);
       hold on
       plot(t,data(:,1));
       grid on;
       axis('auto')
    case 2
      axes(handles.axes2);
      hold on  
      plot(t,data(:,2));
      grid on;
      axis('auto')
      
    case 3
       axes(handles.axes2);
       hold on
       plot(t,data(:,3));
       grid on;
       axis('auto')
    case 4
      axes(handles.axes2);
      hold on  
      plot(t,data(:,4));
      grid on;
      axis('auto')
    case 5
       axes(handles.axes2);
       hold on
       plot(t,data(:,5));
       grid on;
       axis('auto')
    case 6
      axes(handles.axes2);
      hold on  
      plot(t,data(:,6));
      grid on;
      axis('auto')
    case 7
       axes(handles.axes2);
       hold on
       plot(t,data(:,7));
       grid on;
       axis('auto')
    case 8
      axes(handles.axes2);
      hold on  
      grid on;
      plot(t,data(:,8));
    case 9
       axes(handles.axes2);
       hold on
       plot(t,data(:,9));
       grid on;
       axis('auto')
    case 10
      axes(handles.axes2);
      hold on  
      plot(t,data(:,10));
      grid on;
      axis('auto')
    case 11
       axes(handles.axes2);
       hold on
       plot(t,data(:,11));
       grid on;
       axis('auto')
    case 12
      axes(handles.axes2);
      hold on  
      plot(t,data(:,12));
      grid on;
      axis('auto')
    case 13
       axes(handles.axes2);
       hold on
       plot(t,data(:,13));
       grid on;
       axis('auto')
    case 14
      axes(handles.axes2);
      hold on  
      plot(t,data(:,14));
      grid on;
      axis('auto')
    case 15
       axes(handles.axes2);
       hold on
       plot(t,data(:,15));
       grid on;
    case 16
      axes(handles.axes2);
      hold on  
      plot(t,data(:,16));
      axis('auto')
      grid on;
    case 17
       axes(handles.axes2);
       hold on
       plot(t,data);
       grid on;
       axis('auto')
    
 end
% 
%  selherragraficas = get(handles.herramientasgraficas, 'Value');
%  switch selherragraficas
%     case 1
%        zoom on
% %         myCursor = datacursormode(handles.figure1);
% %         set(myCursor,'Enable','off');
% 
%     case 2
%       zoom off;
%       myCursor = datacursormode(handles.figure1);
%       set(myCursor,'Enable','on');
%  end

% myCursor = datacursormode(handles.figure1);
% set(myCursor,'Enable','on')
%  zoom on

% --- Executes on selection change in canales.
function canales_Callback(hObject, eventdata, handles)
% hObject    handle to canales (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns canales contents as cell array
%        contents{get(hObject,'Value')} returns selected item from canales


% --- Executes during object creation, after setting all properties.
function canales_CreateFcn(hObject, eventdata, handles)
% hObject    handle to canales (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in herramientasgraficas.
function herramientasgraficas_Callback(hObject, eventdata, handles)
% hObject    handle to herramientasgraficas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns herramientasgraficas contents as cell array
%        contents{get(hObject,'Value')} returns selected item from herramientasgraficas
axes(handles.axes2);
selherragraficas = get(handles.herramientasgraficas, 'Value');
 switch selherragraficas
    case 1
       zoom on
         myCursor = datacursormode(handles.figure1);
         set(myCursor,'Enable','off');

    case 2
      zoom off;
      myCursor = datacursormode(handles.figure1);
      set(myCursor,'Enable','on');
 end




% --- Executes during object creation, after setting all properties.
function herramientasgraficas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to herramientasgraficas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in guardar.

% --- Executes during object creation, after setting all properties.
function uis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

[x,map]=imread('uis.png','png');   %carga imagen 
image(x),colormap(map),axis off,hold on %muestra imagen de fondo

% Hint: place code in OpeningFcn to populate uis


% --- Executes during object creation, after setting all properties.
function cemos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cemos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


[x,map]=imread('cemos.png','png');   %carga imagen 
image(x),colormap(map),axis off,hold on %muestra imagen de fondo
% Hint: place code in OpeningFcn to populate cemos
