unit ExtLayout;

// Generated by ExtToPascal v.0.9.8, at 19/1/2010 10:52:30
// from "C:\Trabalho\ext-3.1.0\docs\output" detected as ExtJS v.3

interface

uses
  StrUtils, ExtPascal, ExtPascalUtils, Ext;

type
  TExtLayoutBorderLayoutRegion = class;
  TExtLayoutContainerLayout = class;
  TExtLayoutColumnLayout = class;
  TExtLayoutFitLayout = class;
  TExtLayoutToolbarLayout = class;
  TExtLayoutTableLayout = class;
  TExtLayoutMenuLayout = class;
  TExtLayoutBorderLayout = class;
  TExtLayoutAnchorLayout = class;
  TExtLayoutBorderLayoutSplitRegion = class;
  TExtLayoutBoxLayout = class;
  TExtLayoutVBoxLayout = class;
  TExtLayoutAccordionLayout = class;
  TExtLayoutAbsoluteLayout = class;
  TExtLayoutCardLayout = class;
  TExtLayoutFormLayout = class;
  TExtLayoutHBoxLayout = class;

  TExtLayoutBorderLayoutRegion = class(TExtFunction)
  private
    FAnimFloat : Boolean; // true
    FAutoHide : Boolean; // true
    FCmargins : TExtObject;
    FCollapseMode : string;
    FCollapsible : Boolean;
    FFloatable : Boolean; // true
    FMargins : TExtObject;
    FMinHeight : Integer; // 50
    FMinWidth : Integer; // 50
    FSplit : Boolean;
    FIsCollapsed : Boolean;
    FLayout : TLayout;
    FPanel : TExtPanel;
    FPosition : string;
    procedure SetFAnimFloat(Value : Boolean);
    procedure SetFAutoHide(Value : Boolean);
    procedure SetFCmargins(Value : TExtObject);
    procedure SetFCollapseMode(Value : string);
    procedure SetFCollapsible(Value : Boolean);
    procedure SetFFloatable(Value : Boolean);
    procedure SetFMargins(Value : TExtObject);
    procedure SetFMinHeight(Value : Integer);
    procedure SetFMinWidth(Value : Integer);
    procedure SetFSplit(Value : Boolean);
    procedure SetFIsCollapsed(Value : Boolean);
    procedure SetFLayout(Value : TLayout);
    procedure SetFPanel(Value : TExtPanel);
    procedure SetFPosition(Value : string);
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
    function MustHaveACenterRegion : TExtFunction;
    function GetMinHeight : TExtFunction;
    function GetMinWidth : TExtFunction;
    function GetSize : TExtFunction;
    function IsVisible : TExtFunction;
    function SetPanel(Panel : TExtPanel) : TExtFunction;
    function SlideIn : TExtFunction;
    function SlideOut : TExtFunction;
    destructor Destroy; override;
    property AnimFloat : Boolean read FAnimFloat write SetFAnimFloat;
    property AutoHide : Boolean read FAutoHide write SetFAutoHide;
    property Cmargins : TExtObject read FCmargins write SetFCmargins;
    property CollapseMode : string read FCollapseMode write SetFCollapseMode;
    property Collapsible : Boolean read FCollapsible write SetFCollapsible;
    property Floatable : Boolean read FFloatable write SetFFloatable;
    property Margins : TExtObject read FMargins write SetFMargins;
    property MinHeight : Integer read FMinHeight write SetFMinHeight;
    property MinWidth : Integer read FMinWidth write SetFMinWidth;
    property Split : Boolean read FSplit write SetFSplit;
    property IsCollapsed : Boolean read FIsCollapsed write SetFIsCollapsed;
    property Layout : TLayout read FLayout write SetFLayout;
    property Panel : TExtPanel read FPanel write SetFPanel;
    property Position : string read FPosition write SetFPosition;
  end;

  TExtLayoutContainerLayout = class(TExtFunction)
  private
    FExtraCls : string;
    FRenderHidden : Boolean;
    FActiveItem : TExtComponent;
    FFieldTpl : TExtTemplate;
    procedure SetFExtraCls(Value : string);
    procedure SetFRenderHidden(Value : Boolean);
    procedure SetFActiveItem(Value : TExtComponent);
    procedure SetFFieldTpl(Value : TExtTemplate);
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    property ExtraCls : string read FExtraCls write SetFExtraCls;
    property RenderHidden : Boolean read FRenderHidden write SetFRenderHidden;
    property ActiveItem : TExtComponent read FActiveItem write SetFActiveItem;
    property FieldTpl : TExtTemplate read FFieldTpl write SetFFieldTpl;
  end;

  TExtLayoutColumnLayout = class(TExtLayoutContainerLayout)
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
  end;

  TExtLayoutFitLayout = class(TExtLayoutContainerLayout)
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
  end;

  TExtLayoutToolbarLayout = class(TExtLayoutContainerLayout)
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
  end;

  TExtLayoutTableLayout = class(TExtLayoutContainerLayout)
  private
    FColumns : Integer;
    FTableAttrs : TExtObject;
    procedure SetFColumns(Value : Integer);
    procedure SetFTableAttrs(Value : TExtObject);
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    property Columns : Integer read FColumns write SetFColumns;
    property TableAttrs : TExtObject read FTableAttrs write SetFTableAttrs;
  end;

  TExtLayoutMenuLayout = class(TExtLayoutContainerLayout)
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
  end;

  TExtLayoutBorderLayout = class(TExtLayoutContainerLayout)
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
  end;

  TExtLayoutAnchorLayout = class(TExtLayoutContainerLayout)
  private
    FAnchor : string;
    procedure SetFAnchor(Value : string);
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    property Anchor : string read FAnchor write SetFAnchor;
  end;

  TExtLayoutBorderLayoutSplitRegion = class(TExtLayoutBorderLayoutRegion)
  private
    FCollapsibleSplitTip : string; // 'Drag to resize. Double click to hide.'
    FSplitTip : string; // 'Drag to resize.'
    FTickSize : Integer;
    FUseSplitTips : Boolean;
    procedure SetFCollapsibleSplitTip(Value : string);
    procedure SetFSplitTip(Value : string);
    procedure SetFTickSize(Value : Integer);
    procedure SetFUseSplitTips(Value : Boolean);
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
    function GetSplitBar : TExtFunction;
    property CollapsibleSplitTip : string read FCollapsibleSplitTip write SetFCollapsibleSplitTip;
    property SplitTip : string read FSplitTip write SetFSplitTip;
    property TickSize : Integer read FTickSize write SetFTickSize;
    property UseSplitTips : Boolean read FUseSplitTips write SetFUseSplitTips;
  end;

  TExtLayoutBoxLayout = class(TExtLayoutContainerLayout)
  private
    FDefaultMargins : TExtObject;
    FPadding : string;
    procedure SetFDefaultMargins(Value : TExtObject);
    procedure SetFPadding(Value : string);
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    property DefaultMargins : TExtObject read FDefaultMargins write SetFDefaultMargins;
    property Padding : string read FPadding write SetFPadding;
  end;

  TExtLayoutVBoxLayout = class(TExtLayoutBoxLayout)
  private
    FAlign : string;
    FFlex : Integer;
    FPack : string;
    procedure SetFAlign(Value : string);
    procedure SetFFlex(Value : Integer);
    procedure SetFPack(Value : string);
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    property Align : string read FAlign write SetFAlign;
    property Flex : Integer read FFlex write SetFFlex;
    property Pack : string read FPack write SetFPack;
  end;

  TExtLayoutAccordionLayout = class(TExtLayoutFitLayout)
  private
    FActiveOnTop : Boolean;
    FAnimate : Boolean;
    FAutoWidth : Boolean; // true
    FCollapseFirst : Boolean;
    FFill : Boolean; // true
    FHideCollapseTool : Boolean;
    FSequence : Boolean;
    FTitleCollapse : Boolean; // true
    procedure SetFActiveOnTop(Value : Boolean);
    procedure SetFAnimate(Value : Boolean);
    procedure SetFAutoWidth(Value : Boolean);
    procedure SetFCollapseFirst(Value : Boolean);
    procedure SetFFill(Value : Boolean);
    procedure SetFHideCollapseTool(Value : Boolean);
    procedure SetFSequence(Value : Boolean);
    procedure SetFTitleCollapse(Value : Boolean);
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
    function SetActiveItem(Item : string) : TExtFunction; overload;
    function SetActiveItem(Item : Integer) : TExtFunction; overload;
    property ActiveOnTop : Boolean read FActiveOnTop write SetFActiveOnTop;
    property Animate : Boolean read FAnimate write SetFAnimate;
    property AutoWidth : Boolean read FAutoWidth write SetFAutoWidth;
    property CollapseFirst : Boolean read FCollapseFirst write SetFCollapseFirst;
    property Fill : Boolean read FFill write SetFFill;
    property HideCollapseTool : Boolean read FHideCollapseTool write SetFHideCollapseTool;
    property Sequence : Boolean read FSequence write SetFSequence;
    property TitleCollapse : Boolean read FTitleCollapse write SetFTitleCollapse;
  end;

  TExtLayoutAbsoluteLayout = class(TExtLayoutAnchorLayout)
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
  end;

  TExtLayoutCardLayout = class(TExtLayoutFitLayout)
  private
    FDeferredRender : Boolean;
    FLayoutOnCardChange : Boolean;
    procedure SetFDeferredRender(Value : Boolean);
    procedure SetFLayoutOnCardChange(Value : Boolean);
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    function SetActiveItem(Item : string) : TExtFunction; overload;
    function SetActiveItem(Item : Integer) : TExtFunction; overload;
    property DeferredRender : Boolean read FDeferredRender write SetFDeferredRender;
    property LayoutOnCardChange : Boolean read FLayoutOnCardChange write SetFLayoutOnCardChange;
  end;

  TExtLayoutFormLayout = class(TExtLayoutAnchorLayout)
  private
    FFieldTpl : TExtTemplate;
    FLabelSeparator : string;
    FTrackLabels : Boolean;
    FLabelStyle : string;
    procedure SetFFieldTpl(Value : TExtTemplate);
    procedure SetFLabelSeparator(Value : string);
    procedure SetFTrackLabels(Value : Boolean);
    procedure SetFLabelStyle(Value : string);
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
    function GetTemplateArgs(Field : TExtFormField) : TExtFunction;
    destructor Destroy; override;
    property FieldTpl : TExtTemplate read FFieldTpl write SetFFieldTpl;
    property LabelSeparator : string read FLabelSeparator write SetFLabelSeparator;
    property TrackLabels : Boolean read FTrackLabels write SetFTrackLabels;
    property LabelStyle : string read FLabelStyle write SetFLabelStyle;
  end;

  TExtLayoutHBoxLayout = class(TExtLayoutBoxLayout)
  private
    FAlign : string;
    FFlex : Integer;
    FPack : string;
    procedure SetFAlign(Value : string);
    procedure SetFFlex(Value : Integer);
    procedure SetFPack(Value : string);
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    property Align : string read FAlign write SetFAlign;
    property Flex : Integer read FFlex write SetFFlex;
    property Pack : string read FPack write SetFPack;
  end;

implementation

procedure TExtLayoutBorderLayoutRegion.SetFAnimFloat(Value : Boolean); begin
  FAnimFloat := Value;
  JSCode('animFloat:' + VarToJSON([Value]));
end;

procedure TExtLayoutBorderLayoutRegion.SetFAutoHide(Value : Boolean); begin
  FAutoHide := Value;
  JSCode('autoHide:' + VarToJSON([Value]));
end;

procedure TExtLayoutBorderLayoutRegion.SetFCmargins(Value : TExtObject); begin
  FCmargins := Value;
  Value.DeleteFromGarbage;
  JSCode('cmargins:' + VarToJSON([Value, false]));
end;

procedure TExtLayoutBorderLayoutRegion.SetFCollapseMode(Value : string); begin
  FCollapseMode := Value;
  JSCode('collapseMode:' + VarToJSON([Value]));
end;

procedure TExtLayoutBorderLayoutRegion.SetFCollapsible(Value : Boolean); begin
  FCollapsible := Value;
  JSCode('collapsible:' + VarToJSON([Value]));
end;

procedure TExtLayoutBorderLayoutRegion.SetFFloatable(Value : Boolean); begin
  FFloatable := Value;
  JSCode('floatable:' + VarToJSON([Value]));
end;

procedure TExtLayoutBorderLayoutRegion.SetFMargins(Value : TExtObject); begin
  FMargins := Value;
  Value.DeleteFromGarbage;
  JSCode('margins:' + VarToJSON([Value, false]));
end;

procedure TExtLayoutBorderLayoutRegion.SetFMinHeight(Value : Integer); begin
  FMinHeight := Value;
  JSCode('minHeight:' + VarToJSON([Value]));
end;

procedure TExtLayoutBorderLayoutRegion.SetFMinWidth(Value : Integer); begin
  FMinWidth := Value;
  JSCode('minWidth:' + VarToJSON([Value]));
end;

procedure TExtLayoutBorderLayoutRegion.SetFSplit(Value : Boolean); begin
  FSplit := Value;
  JSCode('split:' + VarToJSON([Value]));
end;

procedure TExtLayoutBorderLayoutRegion.SetFIsCollapsed(Value : Boolean); begin
  FIsCollapsed := Value;
  JSCode(JSName + '.isCollapsed=' + VarToJSON([Value]) + ';');
end;

procedure TExtLayoutBorderLayoutRegion.SetFLayout(Value : TLayout); begin
  FLayout := Value;
  Value.DeleteFromGarbage;
  JSCode(JSName + '.layout=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtLayoutBorderLayoutRegion.SetFPanel(Value : TExtPanel); begin
  FPanel := Value;
  Value.DeleteFromGarbage;
  JSCode(JSName + '.panel=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtLayoutBorderLayoutRegion.SetFPosition(Value : string); begin
  FPosition := Value;
  JSCode(JSName + '.position=' + VarToJSON([Value]) + ';');
end;

function TExtLayoutBorderLayoutRegion.JSClassName : string; begin
  Result := 'Ext.layout.BorderLayout.Region';
end;

procedure TExtLayoutBorderLayoutRegion.InitDefaults; begin
  inherited;
  FAnimFloat := true;
  FAutoHide := true;
  FCmargins := TExtObject.CreateInternal(Self, 'cmargins');
  FFloatable := true;
  FMargins := TExtObject.CreateInternal(Self, 'margins');
  FMinHeight := 50;
  FMinWidth := 50;
  FPanel := TExtPanel.CreateInternal(Self, 'panel');
end;

{$IFDEF FPC}constructor TExtLayoutBorderLayoutRegion.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtLayoutBorderLayoutRegion.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

function TExtLayoutBorderLayoutRegion.MustHaveACenterRegion : TExtFunction; begin
  JSCode(JSName + '.must have a center region();', 'TExtLayoutBorderLayoutRegion');
  Result := Self;
end;

function TExtLayoutBorderLayoutRegion.GetMinHeight : TExtFunction; begin
  JSCode(JSName + '.getMinHeight();', 'TExtLayoutBorderLayoutRegion');
  Result := Self;
end;

function TExtLayoutBorderLayoutRegion.GetMinWidth : TExtFunction; begin
  JSCode(JSName + '.getMinWidth();', 'TExtLayoutBorderLayoutRegion');
  Result := Self;
end;

function TExtLayoutBorderLayoutRegion.GetSize : TExtFunction; begin
  JSCode(JSName + '.getSize();', 'TExtLayoutBorderLayoutRegion');
  Result := Self;
end;

function TExtLayoutBorderLayoutRegion.IsVisible : TExtFunction; begin
  JSCode(JSName + '.isVisible();', 'TExtLayoutBorderLayoutRegion');
  Result := Self;
end;

function TExtLayoutBorderLayoutRegion.SetPanel(Panel : TExtPanel) : TExtFunction; begin
  JSCode(JSName + '.setPanel(' + VarToJSON([Panel, false]) + ');', 'TExtLayoutBorderLayoutRegion');
  Result := Self;
end;

function TExtLayoutBorderLayoutRegion.SlideIn : TExtFunction; begin
  JSCode(JSName + '.slideIn();', 'TExtLayoutBorderLayoutRegion');
  Result := Self;
end;

function TExtLayoutBorderLayoutRegion.SlideOut : TExtFunction; begin
  JSCode(JSName + '.slideOut();', 'TExtLayoutBorderLayoutRegion');
  Result := Self;
end;

destructor TExtLayoutBorderLayoutRegion.Destroy; begin
  try
    FCmargins.Free;
    FMargins.Free;
    FPanel.Free;
  except end;
  inherited;
end;

procedure TExtLayoutContainerLayout.SetFExtraCls(Value : string); begin
  FExtraCls := Value;
  JSCode('extraCls:' + VarToJSON([Value]));
end;

procedure TExtLayoutContainerLayout.SetFRenderHidden(Value : Boolean); begin
  FRenderHidden := Value;
  JSCode('renderHidden:' + VarToJSON([Value]));
end;

procedure TExtLayoutContainerLayout.SetFActiveItem(Value : TExtComponent); begin
  FActiveItem := Value;
  Value.DeleteFromGarbage;
  JSCode(JSName + '.activeItem=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtLayoutContainerLayout.SetFFieldTpl(Value : TExtTemplate); begin
  FFieldTpl := Value;
  Value.DeleteFromGarbage;
  JSCode(JSName + '.fieldTpl=' + VarToJSON([Value, false]) + ';');
end;

function TExtLayoutContainerLayout.JSClassName : string; begin
  Result := 'Ext.layout.ContainerLayout';
end;

{$IFDEF FPC}constructor TExtLayoutContainerLayout.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

function TExtLayoutColumnLayout.JSClassName : string; begin
  Result := 'Ext.layout.ColumnLayout';
end;

{$IFDEF FPC}constructor TExtLayoutColumnLayout.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

function TExtLayoutFitLayout.JSClassName : string; begin
  Result := 'Ext.layout.FitLayout';
end;

{$IFDEF FPC}constructor TExtLayoutFitLayout.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

function TExtLayoutToolbarLayout.JSClassName : string; begin
  Result := 'Ext.layout.ToolbarLayout';
end;

{$IFDEF FPC}constructor TExtLayoutToolbarLayout.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

procedure TExtLayoutTableLayout.SetFColumns(Value : Integer); begin
  FColumns := Value;
  JSCode('columns:' + VarToJSON([Value]));
end;

procedure TExtLayoutTableLayout.SetFTableAttrs(Value : TExtObject); begin
  FTableAttrs := Value;
  Value.DeleteFromGarbage;
  JSCode('tableAttrs:' + VarToJSON([Value, false]));
end;

function TExtLayoutTableLayout.JSClassName : string; begin
  Result := 'Ext.layout.TableLayout';
end;

{$IFDEF FPC}constructor TExtLayoutTableLayout.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

function TExtLayoutMenuLayout.JSClassName : string; begin
  Result := 'Ext.layout.MenuLayout';
end;

{$IFDEF FPC}constructor TExtLayoutMenuLayout.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

function TExtLayoutBorderLayout.JSClassName : string; begin
  Result := 'Ext.layout.BorderLayout';
end;

{$IFDEF FPC}constructor TExtLayoutBorderLayout.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

procedure TExtLayoutAnchorLayout.SetFAnchor(Value : string); begin
  FAnchor := Value;
  JSCode('anchor:' + VarToJSON([Value]));
end;

function TExtLayoutAnchorLayout.JSClassName : string; begin
  Result := 'Ext.layout.AnchorLayout';
end;

{$IFDEF FPC}constructor TExtLayoutAnchorLayout.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

procedure TExtLayoutBorderLayoutSplitRegion.SetFCollapsibleSplitTip(Value : string); begin
  FCollapsibleSplitTip := Value;
  JSCode('collapsibleSplitTip:' + VarToJSON([Value]));
end;

procedure TExtLayoutBorderLayoutSplitRegion.SetFSplitTip(Value : string); begin
  FSplitTip := Value;
  JSCode('splitTip:' + VarToJSON([Value]));
end;

procedure TExtLayoutBorderLayoutSplitRegion.SetFTickSize(Value : Integer); begin
  FTickSize := Value;
  JSCode('tickSize:' + VarToJSON([Value]));
end;

procedure TExtLayoutBorderLayoutSplitRegion.SetFUseSplitTips(Value : Boolean); begin
  FUseSplitTips := Value;
  JSCode('useSplitTips:' + VarToJSON([Value]));
end;

function TExtLayoutBorderLayoutSplitRegion.JSClassName : string; begin
  Result := 'Ext.layout.BorderLayout.SplitRegion';
end;

procedure TExtLayoutBorderLayoutSplitRegion.InitDefaults; begin
  inherited;
  FCollapsibleSplitTip := 'Drag to resize. Double click to hide.';
  FSplitTip := 'Drag to resize.';
end;

{$IFDEF FPC}constructor TExtLayoutBorderLayoutSplitRegion.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtLayoutBorderLayoutSplitRegion.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

function TExtLayoutBorderLayoutSplitRegion.GetSplitBar : TExtFunction; begin
  JSCode(JSName + '.getSplitBar();', 'TExtLayoutBorderLayoutSplitRegion');
  Result := Self;
end;

procedure TExtLayoutBoxLayout.SetFDefaultMargins(Value : TExtObject); begin
  FDefaultMargins := Value;
  Value.DeleteFromGarbage;
  JSCode('defaultMargins:' + VarToJSON([Value, false]));
end;

procedure TExtLayoutBoxLayout.SetFPadding(Value : string); begin
  FPadding := Value;
  JSCode('padding:' + VarToJSON([Value]));
end;

function TExtLayoutBoxLayout.JSClassName : string; begin
  Result := 'Ext.layout.BoxLayout';
end;

{$IFDEF FPC}constructor TExtLayoutBoxLayout.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

procedure TExtLayoutVBoxLayout.SetFAlign(Value : string); begin
  FAlign := Value;
  JSCode('align:' + VarToJSON([Value]));
end;

procedure TExtLayoutVBoxLayout.SetFFlex(Value : Integer); begin
  FFlex := Value;
  JSCode('flex:' + VarToJSON([Value]));
end;

procedure TExtLayoutVBoxLayout.SetFPack(Value : string); begin
  FPack := Value;
  JSCode('pack:' + VarToJSON([Value]));
end;

function TExtLayoutVBoxLayout.JSClassName : string; begin
  Result := 'Ext.layout.VBoxLayout';
end;

{$IFDEF FPC}constructor TExtLayoutVBoxLayout.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

procedure TExtLayoutAccordionLayout.SetFActiveOnTop(Value : Boolean); begin
  FActiveOnTop := Value;
  JSCode('activeOnTop:' + VarToJSON([Value]));
end;

procedure TExtLayoutAccordionLayout.SetFAnimate(Value : Boolean); begin
  FAnimate := Value;
  JSCode('animate:' + VarToJSON([Value]));
end;

procedure TExtLayoutAccordionLayout.SetFAutoWidth(Value : Boolean); begin
  FAutoWidth := Value;
  JSCode('autoWidth:' + VarToJSON([Value]));
end;

procedure TExtLayoutAccordionLayout.SetFCollapseFirst(Value : Boolean); begin
  FCollapseFirst := Value;
  JSCode('collapseFirst:' + VarToJSON([Value]));
end;

procedure TExtLayoutAccordionLayout.SetFFill(Value : Boolean); begin
  FFill := Value;
  JSCode('fill:' + VarToJSON([Value]));
end;

procedure TExtLayoutAccordionLayout.SetFHideCollapseTool(Value : Boolean); begin
  FHideCollapseTool := Value;
  JSCode('hideCollapseTool:' + VarToJSON([Value]));
end;

procedure TExtLayoutAccordionLayout.SetFSequence(Value : Boolean); begin
  FSequence := Value;
  JSCode('sequence:' + VarToJSON([Value]));
end;

procedure TExtLayoutAccordionLayout.SetFTitleCollapse(Value : Boolean); begin
  FTitleCollapse := Value;
  JSCode('titleCollapse:' + VarToJSON([Value]));
end;

function TExtLayoutAccordionLayout.JSClassName : string; begin
  Result := 'Ext.layout.AccordionLayout';
end;

procedure TExtLayoutAccordionLayout.InitDefaults; begin
  inherited;
  FAutoWidth := true;
  FFill := true;
  FTitleCollapse := true;
end;

{$IFDEF FPC}constructor TExtLayoutAccordionLayout.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtLayoutAccordionLayout.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

function TExtLayoutAccordionLayout.SetActiveItem(Item : string) : TExtFunction; begin
  JSCode(JSName + '.setActiveItem(' + VarToJSON([Item]) + ');', 'TExtLayoutAccordionLayout');
  Result := Self;
end;

function TExtLayoutAccordionLayout.SetActiveItem(Item : Integer) : TExtFunction; begin
  JSCode(JSName + '.setActiveItem(' + VarToJSON([Item]) + ');', 'TExtLayoutAccordionLayout');
  Result := Self;
end;

function TExtLayoutAbsoluteLayout.JSClassName : string; begin
  Result := 'Ext.layout.AbsoluteLayout';
end;

{$IFDEF FPC}constructor TExtLayoutAbsoluteLayout.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

procedure TExtLayoutCardLayout.SetFDeferredRender(Value : Boolean); begin
  FDeferredRender := Value;
  JSCode('deferredRender:' + VarToJSON([Value]));
end;

procedure TExtLayoutCardLayout.SetFLayoutOnCardChange(Value : Boolean); begin
  FLayoutOnCardChange := Value;
  JSCode('layoutOnCardChange:' + VarToJSON([Value]));
end;

function TExtLayoutCardLayout.JSClassName : string; begin
  Result := 'Ext.layout.CardLayout';
end;

{$IFDEF FPC}constructor TExtLayoutCardLayout.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

function TExtLayoutCardLayout.SetActiveItem(Item : string) : TExtFunction; begin
  JSCode(JSName + '.setActiveItem(' + VarToJSON([Item]) + ');', 'TExtLayoutCardLayout');
  Result := Self;
end;

function TExtLayoutCardLayout.SetActiveItem(Item : Integer) : TExtFunction; begin
  JSCode(JSName + '.setActiveItem(' + VarToJSON([Item]) + ');', 'TExtLayoutCardLayout');
  Result := Self;
end;

procedure TExtLayoutFormLayout.SetFFieldTpl(Value : TExtTemplate); begin
  FFieldTpl := Value;
  Value.DeleteFromGarbage;
  JSCode('fieldTpl:' + VarToJSON([Value, false]));
end;

procedure TExtLayoutFormLayout.SetFLabelSeparator(Value : string); begin
  FLabelSeparator := Value;
  JSCode('labelSeparator:' + VarToJSON([Value]));
end;

procedure TExtLayoutFormLayout.SetFTrackLabels(Value : Boolean); begin
  FTrackLabels := Value;
  JSCode('trackLabels:' + VarToJSON([Value]));
end;

procedure TExtLayoutFormLayout.SetFLabelStyle(Value : string); begin
  FLabelStyle := Value;
  JSCode(JSName + '.labelStyle=' + VarToJSON([Value]) + ';');
end;

function TExtLayoutFormLayout.JSClassName : string; begin
  Result := 'Ext.layout.FormLayout';
end;

procedure TExtLayoutFormLayout.InitDefaults; begin
  inherited;
  FFieldTpl := TExtTemplate.CreateInternal(Self, 'fieldTpl');
end;

{$IFDEF FPC}constructor TExtLayoutFormLayout.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtLayoutFormLayout.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

function TExtLayoutFormLayout.GetTemplateArgs(Field : TExtFormField) : TExtFunction; begin
  JSCode(JSName + '.getTemplateArgs(' + VarToJSON([Field, false]) + ');', 'TExtLayoutFormLayout');
  Result := Self;
end;

destructor TExtLayoutFormLayout.Destroy; begin
  try
    FFieldTpl.Free;
  except end;
  inherited;
end;

procedure TExtLayoutHBoxLayout.SetFAlign(Value : string); begin
  FAlign := Value;
  JSCode('align:' + VarToJSON([Value]));
end;

procedure TExtLayoutHBoxLayout.SetFFlex(Value : Integer); begin
  FFlex := Value;
  JSCode('flex:' + VarToJSON([Value]));
end;

procedure TExtLayoutHBoxLayout.SetFPack(Value : string); begin
  FPack := Value;
  JSCode('pack:' + VarToJSON([Value]));
end;

function TExtLayoutHBoxLayout.JSClassName : string; begin
  Result := 'Ext.layout.HBoxLayout';
end;

{$IFDEF FPC}constructor TExtLayoutHBoxLayout.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

end.