.class public Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\'\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0016\u0018\u0000 f2\u00020\u0001:\u0001fB\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0011\u001a\u00020\u0012H\u0014J\u0008\u0010\u0013\u001a\u00020\u0012H\u0014J\u0008\u0010\u0014\u001a\u00020\u0012H\u0014J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0002J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0008H\u0002J\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0010H\u0002J\u0008\u0010\u001d\u001a\u00020\u0010H\u0002J\u0008\u0010\u001e\u001a\u00020\u0010H\u0002J\n\u0010\u001f\u001a\u0004\u0018\u00010\u0016H\u0002J\u0008\u0010 \u001a\u00020\u0010H\u0002J\u0012\u0010!\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0012\u0010\"\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0008\u0010#\u001a\u00020\u0010H\u0002J\u0008\u0010$\u001a\u00020\u0010H\u0002J\u0008\u0010%\u001a\u00020\u0010H\u0002J\u0008\u0010&\u001a\u00020\u0010H\u0002J\u0008\u0010\'\u001a\u00020\u0010H\u0002J\u0008\u0010(\u001a\u00020\u0010H\u0002J\u0008\u0010)\u001a\u00020\u0010H\u0002J\u0008\u0010*\u001a\u00020\u0010H\u0002J\u0008\u0010+\u001a\u00020\u0010H\u0002J\n\u0010,\u001a\u0004\u0018\u00010\u0016H\u0002J\u0008\u0010-\u001a\u00020\u0010H\u0002J\n\u0010.\u001a\u0004\u0018\u00010\u0016H\u0002J\u001a\u0010/\u001a\u0004\u0018\u00010\u00162\u0006\u00100\u001a\u00020\u00102\u0006\u00101\u001a\u00020\u0010H\u0002J\u0008\u00102\u001a\u00020\u0010H\u0002J\u0006\u00103\u001a\u00020\u0010J\u0008\u00104\u001a\u00020\u0010H\u0002J\u0008\u00105\u001a\u00020\u0010H\u0002J\u0012\u00106\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0008\u00107\u001a\u00020\u0010H\u0002J\u0008\u00108\u001a\u00020\u0010H\u0002J\u0008\u00109\u001a\u00020\u0010H\u0002J\u0008\u0010:\u001a\u00020\u0010H\u0002J\n\u0010;\u001a\u0004\u0018\u00010\u0016H\u0002J\u0008\u0010<\u001a\u00020\u0010H\u0002J\n\u0010=\u001a\u0004\u0018\u00010\u0016H\u0002J\u0012\u0010>\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0008\u0010?\u001a\u00020\u0010H\u0002J\u0008\u0010@\u001a\u00020\u0010H\u0002JP\u0010A\u001a\u00020\u00122\u0008\u0010B\u001a\u0004\u0018\u00010C2\u0006\u0010D\u001a\u00020\u00102\u0006\u0010E\u001a\u00020\u00102\u0006\u0010F\u001a\u00020\u00102\u0006\u0010G\u001a\u00020\u00102\u0006\u0010H\u001a\u00020\u00102\u0006\u0010I\u001a\u00020\u00102\u0006\u0010J\u001a\u00020\u00102\u0006\u0010K\u001a\u00020\u0010J\u0012\u0010L\u001a\u00020\u00122\u0008\u0010M\u001a\u0004\u0018\u00010NH\u0016J\u0010\u0010O\u001a\u00020\u00122\u0008\u0010P\u001a\u0004\u0018\u00010\u0008J \u0010Q\u001a\u00020\u00122\u0006\u0010R\u001a\u00020C2\u0006\u0010S\u001a\u00020C2\u0006\u0010T\u001a\u00020UH\u0002J\u0018\u0010V\u001a\u00020\u00122\u0006\u0010W\u001a\u00020C2\u0006\u0010T\u001a\u00020UH\u0002J\u0018\u0010X\u001a\u00020\u00122\u0006\u0010Y\u001a\u00020C2\u0006\u0010T\u001a\u00020UH\u0002J\u0010\u0010Z\u001a\u00020\u00122\u0008\u0010B\u001a\u0004\u0018\u00010CJ\u0010\u0010[\u001a\u00020\u00122\u0006\u0010\\\u001a\u00020\u0010H\u0002J0\u0010]\u001a\u00020\u00122\u0006\u0010^\u001a\u00020C2\u0006\u0010_\u001a\u00020C2\u0006\u0010`\u001a\u00020C2\u0006\u0010a\u001a\u00020U2\u0006\u0010b\u001a\u00020UH\u0002J\u0008\u0010c\u001a\u00020\u0012H\u0002J\u0010\u0010c\u001a\u00020\u00122\u0006\u0010d\u001a\u00020\u0010H\u0002J\u0010\u0010e\u001a\u00020\u00122\u0006\u0010^\u001a\u00020CH\u0002J\u001a\u0010e\u001a\u00020\u00122\u0008\u0010^\u001a\u0004\u0018\u00010C2\u0006\u0010d\u001a\u00020\u0010H\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006g"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "injector",
        "Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;",
        "screenModel",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V",
        "mBrushMenuInfo",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "mCallBack",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "mMenuSizeInjector",
        "mOrientationListener",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;",
        "mScreenModel",
        "mSubMenuBottomMargin",
        "",
        "clearModels",
        "",
        "closeCallbacks",
        "closeSubViewModels",
        "getBottomRotationPivot",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;",
        "getBrushMenuInfo",
        "getData",
        "",
        "id",
        "",
        "getDoneButtonHeightPx",
        "getDoneButtonWidthPx",
        "getEraserDescription",
        "getEraserRotationDescription",
        "getMenuSize",
        "getOtherData",
        "getPanningBarData",
        "getPanningBarHeightPx",
        "getPanningBarHorizontalMarginBottomPx",
        "getPanningBarHorizontalMarginEndPx",
        "getPanningBarVerticalMarginBottomPx",
        "getPanningBarVerticalMarginEndPx",
        "getPanningBarVerticalPaddingEndPx",
        "getPanningBarWidthPx",
        "getPenUpButtonWidthHeightPx",
        "getPenUpDescription",
        "getPenupRotationDescription",
        "getRedoDescription",
        "getRedoRotationDescription",
        "getRotationExtraEvent",
        "data",
        "type",
        "getRoundRipple",
        "getSubMenuStrokeSizePx",
        "getToolbarChildButtonMarginPx",
        "getToolbarChildButtonSizePx",
        "getToolbarData",
        "getToolbarHeightPx",
        "getToolbarIconMarginPx",
        "getToolbarMarginBottomPx",
        "getToolbarWidthPx",
        "getTopRightRotationPivot",
        "getUndoDescription",
        "getUndoRotationDescription",
        "getZoomTextMarginData",
        "getZoomTextMarginEndPx",
        "getZoomTextMarginTopPx",
        "onLayoutChange",
        "view",
        "Landroid/view/View;",
        "left",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "perform",
        "action",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;",
        "setBrushMenuInfo",
        "info",
        "setLayoutBottom",
        "targetView",
        "subMenuView",
        "isOverlapped",
        "",
        "setLayoutMarginEnd",
        "doneView",
        "setLayoutMarginStart",
        "penUpView",
        "setLayoutRect",
        "setToolbarIconMarginPx",
        "bottomMargin",
        "updatePenUpDoneButtonPosition",
        "subMenuLayout",
        "penUpLayout",
        "doneLayout",
        "isPenUp",
        "isDone",
        "updateSubMenuMarginBottom",
        "orientation",
        "updateSubMenuPosition",
        "Companion",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BINDING_ID_BOTTOM_ROTATION_PIVOT:Ljava/lang/String; = "bottomRotationPivot"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_BRUSH_MENU_INFO:Ljava/lang/String; = "brushMenuInfo"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_DONE_BUTTON_HEIGHT_PX:Ljava/lang/String; = "doneButtonHeightPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_DONE_BUTTON_WIDTH_PX:Ljava/lang/String; = "doneButtonWidthPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ERASER_DESCRIPTION:Ljava/lang/String; = "eraserDescription"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ERASER_ROTATION_DESCRIPTION:Ljava/lang/String; = "eraserRotationDescription"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ON_LAYOUT_CHANGE:Ljava/lang/String; = "onLayoutChange"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PANNINGBAR_HEIGHT_PX:Ljava/lang/String; = "panningBarHeightPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PANNINGBAR_H_MARGIN_BOTTOM_PX:Ljava/lang/String; = "panningBarHorizontalMarginBottomPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PANNINGBAR_H_MARGIN_END_PX:Ljava/lang/String; = "panningBarHorizontalMarginEndPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PANNINGBAR_PREFIX:Ljava/lang/String; = "panningBar"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PANNINGBAR_V_MARGIN_BOTTOM_PX:Ljava/lang/String; = "panningBarVerticalMarginBottomPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PANNINGBAR_V_MARGIN_END_PX:Ljava/lang/String; = "panningBarVerticalMarginEndPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PANNINGBAR_V_PADDING_END_PX:Ljava/lang/String; = "panningBarVerticalPaddingEndPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PANNINGBAR_WIDTH_PX:Ljava/lang/String; = "panningBarWidthPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PENUP_BUTTON_WIDTH_HEIGHT_PX:Ljava/lang/String; = "penUpButtonWidthHeightPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PENUP_DESCRIPTION:Ljava/lang/String; = "penupDescription"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PENUP_ROTATION_DESCRIPTION:Ljava/lang/String; = "penupRotationDescription"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_REDO_DESCRIPTION:Ljava/lang/String; = "redoDescription"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_REDO_ROTATION_DESCRIPTION:Ljava/lang/String; = "redoRotationDescription"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ROUND_RIPPLE:Ljava/lang/String; = "roundRipple"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_SUBMENU_STROKE_SIZE_PX:Ljava/lang/String; = "subMenuStrokeSizePx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_TOOLBAR_CHILD_BUTTON_MARGIN_PX:Ljava/lang/String; = "toolbarChildButtonMarginPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_TOOLBAR_CHILD_BUTTON_SIZE_PX:Ljava/lang/String; = "toolbarChildButtonSizePx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_TOOLBAR_HEIGHT_PX:Ljava/lang/String; = "toolbarHeightPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_TOOLBAR_ICON_MARGIN_PX:Ljava/lang/String; = "toolbarIconMarginPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_TOOLBAR_MARGIN_BOTTOM_PX:Ljava/lang/String; = "toolbarMarginBottomPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_TOOLBAR_PREFIX:Ljava/lang/String; = "toolbar"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_TOOLBAR_WIDTH_PX:Ljava/lang/String; = "toolbarWidthPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_TOP_RIGHT_ROTATION_PIVOT:Ljava/lang/String; = "topRightRotationPivot"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_UNDO_DESCRIPTION:Ljava/lang/String; = "undoDescription"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_UNDO_ROTATION_DESCRIPTION:Ljava/lang/String; = "undoRotationDescription"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ZOOM_TEXT_MARGIN_END_PX:Ljava/lang/String; = "zoomTextMarginEndPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ZOOM_TEXT_MARGIN_TOP_PX:Ljava/lang/String; = "zoomTextMarginTopPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ZOOM_TEXT_PREFIX:Ljava/lang/String; = "zoomText"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCallBack:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mOrientationListener:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSubMenuBottomMargin:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel$Companion;

    const-string v0, "SubMenuLayoutViewModel."

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "injector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel$mOrientationListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel$mOrientationListener$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mOrientationListener:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;

    new-instance v1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel$mCallBack$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel$mCallBack$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mCallBack:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mCallBack:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->addObserver(Ljava/beans/PropertyChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;->addRotationChangeListener(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;)Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->updateSubMenuMarginBottom()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->setLayoutBottom$lambda-0(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public static final synthetic access$updateSubMenuMarginBottom(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->updateSubMenuMarginBottom()V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->setLayoutMarginEnd$lambda-2(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->setLayoutMarginStart$lambda-1(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Z)V

    return-void
.end method

.method private final getBottomRotationPivot()Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getRotationExtraEvent(II)Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;

    move-result-object v0

    return-object v0
.end method

.method private final getBrushMenuInfo()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    return-object v0
.end method

.method private final getDoneButtonHeightPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getDoneButtonHeightPx()I

    move-result v0

    return v0
.end method

.method private final getDoneButtonWidthPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getDoneButtonWidthPx()I

    move-result v0

    return v0
.end method

.method private final getEraserDescription()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/R$string;->base_string_eraser:I

    return v0
.end method

.method private final getEraserRotationDescription()Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/addons/R$string;->base_string_eraser:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getRotationExtraEvent(II)Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;

    move-result-object v0

    return-object v0
.end method

.method private final getMenuSize()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private final getOtherData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v0, "subMenuStrokeSizePx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getSubMenuStrokeSizePx()I

    move-result p1

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "eraserDescription"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getEraserDescription()I

    move-result p1

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "undoRotationDescription"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getUndoRotationDescription()Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "eraserRotationDescription"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getEraserRotationDescription()Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "bottomRotationPivot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getBottomRotationPivot()Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_5
    const-string/jumbo v0, "topRightRotationPivot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getTopRightRotationPivot()Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_6
    const-string v0, "roundRipple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getRoundRipple()I

    move-result p1

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "doneButtonWidthPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getDoneButtonWidthPx()I

    move-result p1

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "doneButtonHeightPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getDoneButtonHeightPx()I

    move-result p1

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "redoRotationDescription"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getRedoRotationDescription()Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;

    move-result-object p1

    goto :goto_2

    :sswitch_a
    const-string v0, "brushMenuInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getBrushMenuInfo()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    move-result-object p1

    goto :goto_2

    :sswitch_b
    const-string v0, "penupRotationDescription"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getPenupRotationDescription()Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;

    move-result-object p1

    goto :goto_2

    :sswitch_c
    const-string v0, "redoDescription"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getRedoDescription()I

    move-result p1

    goto :goto_0

    :sswitch_d
    const-string/jumbo v0, "undoDescription"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1

    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getUndoDescription()I

    move-result p1

    goto :goto_0

    :sswitch_e
    const-string v0, "penUpButtonWidthHeightPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1

    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getPenUpButtonWidthHeightPx()I

    move-result p1

    goto :goto_0

    :sswitch_f
    const-string v0, "penupDescription"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getPenUpDescription()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7317e218 -> :sswitch_f
        -0x67969ed1 -> :sswitch_e
        -0x63976388 -> :sswitch_d
        -0x61f5b8e2 -> :sswitch_c
        -0x6159f076 -> :sswitch_b
        -0x5f92b7f9 -> :sswitch_a
        -0x56015d40 -> :sswitch_9
        -0x3b7b34fd -> :sswitch_8
        -0x2c2d7d86 -> :sswitch_7
        -0x246f8ea2 -> :sswitch_6
        0x4b238dd -> :sswitch_5
        0x19107ef9 -> :sswitch_4
        0x3b422372 -> :sswitch_3
        0x4346fe1a -> :sswitch_2
        0x4c2a99d0 -> :sswitch_1
        0x5d0c9ba0 -> :sswitch_0
    .end sparse-switch
.end method

.method private final getPanningBarData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "panningBarVerticalPaddingEndPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getPanningBarVerticalPaddingEndPx()I

    move-result p1

    goto :goto_0

    :sswitch_1
    const-string v0, "panningBarHorizontalMarginBottomPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getPanningBarHorizontalMarginBottomPx()I

    move-result p1

    goto :goto_0

    :sswitch_2
    const-string v0, "panningBarHeightPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getPanningBarHeightPx()I

    move-result p1

    goto :goto_0

    :sswitch_3
    const-string v0, "panningBarVerticalMarginBottomPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getPanningBarVerticalMarginBottomPx()I

    move-result p1

    goto :goto_0

    :sswitch_4
    const-string v0, "panningBarVerticalMarginEndPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getPanningBarVerticalMarginEndPx()I

    move-result p1

    goto :goto_0

    :sswitch_5
    const-string v0, "panningBarHorizontalMarginEndPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getPanningBarHorizontalMarginEndPx()I

    move-result p1

    goto :goto_0

    :sswitch_6
    const-string v0, "panningBarWidthPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getPanningBarWidthPx()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b793374 -> :sswitch_6
        -0x457b91f1 -> :sswitch_5
        -0x16fa8503 -> :sswitch_4
        0xf4c6099 -> :sswitch_3
        0x1a59c331 -> :sswitch_2
        0x538cbc47 -> :sswitch_1
        0x6db52bea -> :sswitch_0
    .end sparse-switch
.end method

.method private final getPanningBarHeightPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getPanningBarHeightPx()I

    move-result v0

    return v0
.end method

.method private final getPanningBarHorizontalMarginBottomPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getPanningBarHorizontalMarginBottomPx()I

    move-result v0

    return v0
.end method

.method private final getPanningBarHorizontalMarginEndPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getPanningBarHorizontalMarginEndPx()I

    move-result v0

    return v0
.end method

.method private final getPanningBarVerticalMarginBottomPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getPanningBarVerticalMarginBottomPx()I

    move-result v0

    return v0
.end method

.method private final getPanningBarVerticalMarginEndPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getPanningBarVerticalMarginEndPx()I

    move-result v0

    return v0
.end method

.method private final getPanningBarVerticalPaddingEndPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getPanningBarVerticalPaddingEndPx()I

    move-result v0

    return v0
.end method

.method private final getPanningBarWidthPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getPanningBarWidthPx()I

    move-result v0

    return v0
.end method

.method private final getPenUpButtonWidthHeightPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getPenUpButtonWidthHeightPx()I

    move-result v0

    return v0
.end method

.method private final getPenUpDescription()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/R$string;->brush_penup_name:I

    return v0
.end method

.method private final getPenupRotationDescription()Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/addons/R$string;->brush_penup_name:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getRotationExtraEvent(II)Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;

    move-result-object v0

    return-object v0
.end method

.method private final getRedoDescription()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/R$string;->base_string_redo:I

    return v0
.end method

.method private final getRedoRotationDescription()Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/addons/R$string;->base_string_redo:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getRotationExtraEvent(II)Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;

    move-result-object v0

    return-object v0
.end method

.method private final getRotationExtraEvent(II)Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationExtraEvent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;->getPrevRotation()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;->getRotation()I

    move-result v2

    invoke-direct {v1, v0, v2, p1, p2}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationExtraEvent;-><init>(IIII)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method private final getRoundRipple()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/base/utils/DrawableUtils;->TYPE_CIRCLE:I

    return v0
.end method

.method private final getToolbarChildButtonMarginPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getToolbarChildButtonMarginPx()I

    move-result v0

    return v0
.end method

.method private final getToolbarChildButtonSizePx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getToolbarChildButtonSizePx()I

    move-result v0

    return v0
.end method

.method private final getToolbarData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v0, "toolbarChildButtonSizePx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getToolbarChildButtonSizePx()I

    move-result p1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "toolbarIconMarginPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getToolbarIconMarginPx()I

    move-result p1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "toolbarChildButtonMarginPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getToolbarChildButtonMarginPx()I

    move-result p1

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "toolbarHeightPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getToolbarHeightPx()I

    move-result p1

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "toolbarMarginBottomPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getToolbarMarginBottomPx()I

    move-result p1

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "toolbarWidthPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getToolbarWidthPx()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ebae58d -> :sswitch_5
        -0x53abba44 -> :sswitch_4
        -0x4a9acdd6 -> :sswitch_3
        0x10cf1269 -> :sswitch_2
        0x3abc730a -> :sswitch_1
        0x74778cbc -> :sswitch_0
    .end sparse-switch
.end method

.method private final getToolbarHeightPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getToolbarHeightPx()I

    move-result v0

    return v0
.end method

.method private final getToolbarIconMarginPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getToolbarIconMarginPx()I

    move-result v0

    return v0
.end method

.method private final getToolbarMarginBottomPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mSubMenuBottomMargin:I

    return v0
.end method

.method private final getToolbarWidthPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getToolbarWidthPx()I

    move-result v0

    return v0
.end method

.method private final getTopRightRotationPivot()Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getRotationExtraEvent(II)Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;

    move-result-object v0

    return-object v0
.end method

.method private final getUndoDescription()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/R$string;->base_string_undo:I

    return v0
.end method

.method private final getUndoRotationDescription()Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/addons/R$string;->base_string_undo:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getRotationExtraEvent(II)Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;

    move-result-object v0

    return-object v0
.end method

.method private final getZoomTextMarginData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "zoomTextMarginEndPx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getZoomTextMarginEndPx()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "zoomTextMarginTopPx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getZoomTextMarginTopPx()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private final getZoomTextMarginEndPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getZoomTextMarginEndPx()I

    move-result v0

    return v0
.end method

.method private final getZoomTextMarginTopPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getZoomTextMargiTopPx()I

    move-result v0

    return v0
.end method

.method private final setLayoutBottom(Landroid/view/View;Landroid/view/View;Z)V
    .locals 1

    new-instance v0, Ly3/a;

    invoke-direct {v0, p0, p1, p2, p3}, Ly3/a;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final setLayoutBottom$lambda-0(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Landroid/view/View;Z)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$subMenuView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_1

    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne p3, v0, :cond_2

    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0, p3, v1, v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget p3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq p2, p3, :cond_2

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0, p2, v0, v1, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private final setLayoutMarginEnd(Landroid/view/View;Z)V
    .locals 1

    new-instance v0, Ly3/b;

    invoke-direct {v0, p0, p1, p2}, Ly3/b;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final setLayoutMarginEnd$lambda-2(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Z)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$doneView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getToolbarIconMarginPx()I

    move-result v1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getMenuSize()I

    move-result p0

    add-int/2addr v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p0

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private final setLayoutMarginStart(Landroid/view/View;Z)V
    .locals 1

    new-instance v0, Ly3/c;

    invoke-direct {v0, p0, p1, p2}, Ly3/c;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final setLayoutMarginStart$lambda-1(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Z)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$penUpView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getToolbarIconMarginPx()I

    move-result v1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getMenuSize()I

    move-result p0

    add-int/2addr v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p0

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private final setToolbarIconMarginPx(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mSubMenuBottomMargin:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mSubMenuBottomMargin:I

    const-string/jumbo p1, "toolbarMarginBottomPx"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final updatePenUpDoneButtonPosition(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v4, 0x0

    aget v5, v2, v4

    aget v2, v2, v4

    iget-object v6, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getToolbarWidthPx()I

    move-result v6

    add-int/2addr v2, v6

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_0

    move p5, v4

    goto/16 :goto_3

    :cond_0
    new-array v1, v1, [I

    invoke-virtual {p3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, v1, v4

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    if-eqz p5, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getMenuSize()I

    move-result p5

    add-int/2addr v1, p5

    :cond_1
    if-lt v1, v5, :cond_2

    move p5, v6

    goto :goto_0

    :cond_2
    move p5, v4

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getToolbarIconMarginPx()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getPenUpButtonWidthHeightPx()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz p4, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getMenuSize()I

    move-result p4

    sub-int/2addr v0, p4

    :cond_3
    if-gt v0, v2, :cond_8

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getToolbarIconMarginPx()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getDoneButtonWidthPx()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz p5, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getMenuSize()I

    move-result p5

    sub-int/2addr v0, p5

    :cond_5
    if-gt v0, v2, :cond_6

    move p5, v6

    goto :goto_1

    :cond_6
    move p5, v4

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getToolbarIconMarginPx()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getPenUpButtonWidthHeightPx()I

    move-result v1

    add-int/2addr v0, v1

    if-eqz p4, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getMenuSize()I

    move-result p4

    add-int/2addr v0, p4

    :cond_7
    if-lt v0, v5, :cond_8

    :goto_2
    move v4, v6

    :cond_8
    :goto_3
    invoke-direct {p0, p2, p1, v4}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->setLayoutBottom(Landroid/view/View;Landroid/view/View;Z)V

    invoke-direct {p0, p3, p1, p5}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->setLayoutBottom(Landroid/view/View;Landroid/view/View;Z)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Submenu isOverlap?? "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateSubMenuMarginBottom()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode;->getOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->updateSubMenuMarginBottom(I)V

    return-void
.end method

.method private final updateSubMenuMarginBottom(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getToolbarLandMarginBottomPx()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getToolbarMarginBottomPx()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->setToolbarIconMarginPx(I)V

    :goto_1
    return-void
.end method

.method private final updateSubMenuPosition(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode;->getOrientation()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->updateSubMenuPosition(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private final updateSubMenuPosition(Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->updateSubMenuMarginBottom(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorAlign()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getMenuSize()I

    move-result p2

    neg-int p2, p2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getMenuSize()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public clearModels()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mCallBack:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->removeObserver(Ljava/beans/PropertyChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mOrientationListener:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;->removeRotationChangeListener(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;)Z

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    return-void
.end method

.method public closeCallbacks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mCallBack:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    return-void
.end method

.method public closeSubViewModels()V
    .locals 0

    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "zoomText"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getZoomTextMarginData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "panningBar"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getPanningBarData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "toolbar"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getToolbarData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->getOtherData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getSubMenuStrokeSizePx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getSubMenuStrokeSizePx()I

    move-result v0

    return v0
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p8, p4, :cond_0

    if-eq p9, p5, :cond_3

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    if-eqz p2, :cond_3

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ge p4, p5, :cond_2

    const/4 p2, 0x1

    :cond_2
    instance-of p1, v1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    instance-of p1, v2, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    instance-of p1, v3, Landroid/widget/Button;

    if-eqz p1, :cond_3

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->updateSubMenuPosition(Landroid/view/View;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->updatePenUpDoneButtonPosition(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V
    .locals 11
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getBindId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "onLayoutChange"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mView:Landroid/view/View;

    iget v3, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mLeft:I

    iget v4, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mTop:I

    iget v5, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mRight:I

    iget v6, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mBottom:I

    iget v7, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldLeft:I

    iget v8, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldTop:I

    iget v9, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldRight:I

    iget v10, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldBottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V

    return-void
.end method

.method public final setBrushMenuInfo(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    const-string p1, "brushMenuInfo"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public final setLayoutRect(Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/addons/R$id;->brush_sub_menu_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/samsung/android/support/senl/addons/R$id;->brush_penup_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v0, Lcom/samsung/android/support/senl/addons/R$id;->brush_done_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v0, v2, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    instance-of v0, v3, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    instance-of v0, v4, Landroid/widget/Button;

    if-eqz v0, :cond_7

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->updateSubMenuPosition(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getToolbarIconMarginPx()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mMenuSizeInjector:Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getToolbarIconMarginPx()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/support/senl/addons/brush/util/CommonUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v7, v5

    sub-int/2addr v7, v6

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int p1, v1, p1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {v5, p1, v9, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int p1, v7, p1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v6, v0, p1, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int p1, v7, p1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {v5, v0, p1, v9, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int p1, v1, p1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {v6, p1, v0, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object p1

    iget v0, v5, Landroid/graphics/Rect;->left:I

    iget v1, v5, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v7, v9}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object p1

    iget v1, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v9, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v7, v9, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v5, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v8

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object p1

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->right:I

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v7, v9, v10}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object p1

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v7, v9, v6}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v6, v0

    goto :goto_4

    :cond_6
    :goto_3
    move v6, v8

    :goto_4
    invoke-direct {p0, v4, v6}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->setLayoutMarginEnd(Landroid/view/View;Z)V

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->setLayoutMarginStart(Landroid/view/View;Z)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Brush menu isOverlap?? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->updatePenUpDoneButtonPosition(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZ)V

    :cond_7
    :goto_5
    return-void
.end method
