.class public Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;
.super Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$IDocModelListener;
.implements Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001d\u0008\u0016\u0018\u0000 \u0085\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u0085\u0001B\u0019\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\n\u00103\u001a\u0004\u0018\u000104H\u0016J\n\u00105\u001a\u0004\u0018\u000104H\u0016J\u0014\u00106\u001a\u0004\u0018\u0001042\u0008\u00107\u001a\u0004\u0018\u00010\u0010H\u0016J\u0006\u00108\u001a\u000209J\u0008\u0010:\u001a\u000209H\u0016J\u0008\u0010;\u001a\u000209H\u0016J\u0008\u0010<\u001a\u000209H\u0016J\u0008\u0010=\u001a\u000209H\u0016J\u0018\u0010>\u001a\u00020\u001c2\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020@H\u0002J\u0010\u0010B\u001a\u0002092\u0008\u0010C\u001a\u0004\u0018\u00010\u0018J\u0008\u0010D\u001a\u000209H\u0016J\u000e\u0010E\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010FH\u0016J\u0008\u0010G\u001a\u00020\nH\u0016J\u000f\u0010H\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0002\u0010IJ\u0008\u0010J\u001a\u00020\nH\u0016J\u0008\u0010K\u001a\u00020\nH\u0016J\n\u0010L\u001a\u0004\u0018\u00010MH\u0016J\n\u0010N\u001a\u0004\u0018\u00010OH\u0016J*\u0010P\u001a\u0004\u0018\u00010\u00102\u0006\u0010Q\u001a\u00020\n2\u0006\u0010R\u001a\u00020\n2\u0006\u0010S\u001a\u00020\n2\u0006\u0010T\u001a\u00020\nH\u0016J\u000e\u0010U\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010VH\u0016J\u0008\u0010W\u001a\u000209H\u0002J\u0008\u0010X\u001a\u00020\u001cH\u0016J\u0008\u0010Y\u001a\u00020\u001cH\u0016J\u0010\u0010Z\u001a\u0002092\u0006\u0010[\u001a\u000200H\u0016J6\u0010\\\u001a\u0002092\u0008\u0010[\u001a\u0004\u0018\u0001002\u001a\u0010]\u001a\u0016\u0012\u0004\u0012\u00020_\u0018\u00010^j\n\u0012\u0004\u0012\u00020_\u0018\u0001``2\u0006\u0010a\u001a\u00020\nH\u0016J$\u0010b\u001a\u0002092\u0008\u0010/\u001a\u0004\u0018\u0001002\u0008\u0010c\u001a\u0004\u0018\u00010d2\u0006\u0010e\u001a\u00020\nH\u0016J6\u0010f\u001a\u0002092\u0008\u0010[\u001a\u0004\u0018\u0001002\u001a\u0010]\u001a\u0016\u0012\u0004\u0012\u00020_\u0018\u00010^j\n\u0012\u0004\u0012\u00020_\u0018\u0001``2\u0006\u0010a\u001a\u00020\nH\u0016J\u0012\u0010g\u001a\u00020\u001c2\u0008\u0010h\u001a\u0004\u0018\u00010iH\u0016J\u0018\u0010j\u001a\u0002092\u0006\u0010[\u001a\u0002002\u0006\u0010k\u001a\u00020\u001cH\u0016J\u0012\u0010l\u001a\u00020\u001c2\u0008\u0010h\u001a\u0004\u0018\u00010iH\u0016J\u0018\u0010m\u001a\u0002092\u0006\u0010[\u001a\u0002002\u0006\u0010n\u001a\u00020\u001cH\u0016J\u0008\u0010o\u001a\u000209H\u0016J\u0008\u0010p\u001a\u000209H\u0016J\u0008\u0010q\u001a\u000209H\u0002J\u0010\u0010r\u001a\u0002092\u0006\u0010s\u001a\u00020\u001cH\u0016J\u0010\u0010t\u001a\u0002092\u0008\u0010u\u001a\u0004\u0018\u00010$J\u0010\u0010v\u001a\u00020\u001c2\u0006\u0010u\u001a\u00020$H\u0002J\u000e\u0010w\u001a\u0002092\u0006\u0010u\u001a\u00020$J\u0018\u0010x\u001a\u0002092\u0006\u0010y\u001a\u00020\n2\u0006\u0010z\u001a\u00020\nH\u0016J\u0016\u0010{\u001a\u0002092\u000c\u0010|\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010VH\u0016J\u0018\u0010}\u001a\u0002092\u0006\u0010~\u001a\u00020\n2\u0006\u0010\u007f\u001a\u00020\nH\u0016J\t\u0010\u0080\u0001\u001a\u000209H\u0016J\t\u0010\u0081\u0001\u001a\u000209H\u0016J\t\u0010\u0082\u0001\u001a\u000209H\u0016J\u0010\u0010\u0083\u0001\u001a\u0002092\u0007\u0010\u0084\u0001\u001a\u00020\nR\u0014\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000e\u0010\u000cR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001dR$\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001c8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010\u001d\"\u0004\u0008 \u0010!R\u0010\u0010\"\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010/\u001a\u0004\u0018\u0001008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u00102\u00a8\u0006\u0086\u0001"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$IDocModelListener;",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;",
        "mode",
        "Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;",
        "mScreenModel",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;",
        "(Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;)V",
        "DEFAULT_THUMBNAIL_HEIGHT",
        "",
        "getDEFAULT_THUMBNAIL_HEIGHT$annotations",
        "()V",
        "DEFAULT_THUMBNAIL_MARGIN",
        "getDEFAULT_THUMBNAIL_MARGIN$annotations",
        "drawnRect",
        "Landroid/graphics/Rect;",
        "getDrawnRect",
        "()Landroid/graphics/Rect;",
        "drawnRectOfAllObject",
        "Landroid/graphics/RectF;",
        "getDrawnRectOfAllObject",
        "()Landroid/graphics/RectF;",
        "foregroundImagePath",
        "",
        "getForegroundImagePath",
        "()Ljava/lang/String;",
        "isChanged",
        "",
        "()Z",
        "isDiscard",
        "isDiscardDoc",
        "setDiscardDoc",
        "(Z)V",
        "mDocPath",
        "mEraserInfo",
        "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
        "mIsDocLoaded",
        "mIsNotifyShowPreview",
        "mIsReadySetDocument",
        "mPaintingDocModel",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;",
        "mPenInfo",
        "mSpenView",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;",
        "mZoomModel",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;",
        "paintingDoc",
        "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;",
        "getPaintingDoc",
        "()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;",
        "captureAllPage",
        "Landroid/graphics/Bitmap;",
        "captureForegroundPage",
        "captureRect",
        "rect",
        "clearPaintingViewDoc",
        "",
        "clearViews",
        "close",
        "closeViewControl",
        "commitStroke",
        "compareInfo",
        "info1",
        "Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;",
        "info2",
        "createDocument",
        "filePath",
        "discardDoc",
        "getDocModel",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;",
        "getEraserActionType",
        "getObjectCount",
        "()Ljava/lang/Integer;",
        "getPageDocHeight",
        "getPageDocWidth",
        "getPaintingViewPan",
        "Landroid/graphics/PointF;",
        "getPreviewBitmap",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;",
        "getValidRect",
        "lMargin",
        "tMargin",
        "rMargin",
        "bMargin",
        "getView",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;",
        "initSpenView",
        "isDocLoaded",
        "isEmpty",
        "onCommit",
        "spenPaintingDoc",
        "onObjectAdded",
        "arrayList",
        "Ljava/util/ArrayList;",
        "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
        "Lkotlin/collections/ArrayList;",
        "i",
        "onObjectChanged",
        "objectChangedInfo",
        "Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;",
        "type",
        "onObjectRemoved",
        "onPreTouch",
        "event",
        "Landroid/view/MotionEvent;",
        "onRedoable",
        "redoable",
        "onTouch",
        "onUndoable",
        "undoable",
        "redo",
        "redoAll",
        "setDocument",
        "setMouseWheelZoomEnabled",
        "wheelZoomEnabled",
        "setPenEraserInfo",
        "info",
        "setPenSetting",
        "setPenSettingInfo",
        "setThumbnailMargin",
        "horizontal",
        "vertical",
        "setView",
        "view",
        "setZoomRatios",
        "viewWidth",
        "viewHeight",
        "showCanvas",
        "undo",
        "undoAll",
        "updateDisallowTouchDownArea",
        "navigationBarHeight",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private DEFAULT_THUMBNAIL_HEIGHT:I

.field private DEFAULT_THUMBNAIL_MARGIN:I

.field private mDocPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsDocLoaded:Z

.field private mIsNotifyShowPreview:Z

.field private mIsReadySetDocument:Z

.field private mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mScreenModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mZoomModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade$Companion;

    const-string v0, "BrushFacade"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;-><init>(Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mScreenModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mZoomModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;

    return-void
.end method

.method public static final synthetic access$getMSpenView$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;)Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    return-object p0
.end method

.method private final compareInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z
    .locals 3

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget v2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    iget p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    if-ne p1, p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private static synthetic getDEFAULT_THUMBNAIL_HEIGHT$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getDEFAULT_THUMBNAIL_MARGIN$annotations()V
    .locals 0

    return-void
.end method

.method private final getDrawnRectOfAllObject()Landroid/graphics/RectF;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string v1, "getDrawnRectOfAllObject"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->getDrawnRectOfAllObject()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final initSpenView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->setListeners()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setEraserSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_2
    return-void
.end method

.method private final setDocument()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setDocument"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mScreenModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mDocPath:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->initializeDocModel(Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create doc model : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mDocPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->setDoc(Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->setDocModelListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$IDocModelListener;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mZoomModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->setDocSize(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set painting doc to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doc Loaded /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mIsDocLoaded:Z

    const/16 v0, 0x2c89

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_2
    const/16 v0, 0x2cec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private final setPenSetting(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->compareInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public captureAllPage()Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string v1, "captureAllPage"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x11100111

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;->capturePage(FI)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public captureForegroundPage()Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string v1, "captureForegroundPage"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x111

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;->capturePage(FI)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public captureRect(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string v1, "captureAllPage"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;->captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final clearPaintingViewDoc()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPaintingViewDoc - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;->setPaintingDoc(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Z)Z

    :cond_0
    return-void
.end method

.method public clearViews()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string v1, "clearViews"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->clearPaintingViewDoc()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->clearViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mZoomModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->initialize()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mIsNotifyShowPreview:Z

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;->setOnLoadedDocumentListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->clearViews()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mScreenModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mZoomModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->close()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closeViewControl()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->closeViewControl()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->commitStroke()V

    return-void
.end method

.method public commitStroke()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string v1, "commitStroke"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->commitStroke()V

    :cond_0
    return-void
.end method

.method public final createDocument(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mIsReadySetDocument:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string v0, "createDocument : already created"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->isAvailableMinimumMemory()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string v0, "createDocument fail not enough storage"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDocument : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mDocPath:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mDocPath:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->setDocument()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->initSpenView()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->setEraserToolTypeAction()V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mIsReadySetDocument:Z

    return-void
.end method

.method public discardDoc()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->discard()V

    :cond_0
    return-void
.end method

.method public getDocModel()Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    return-object v0
.end method

.method public getDrawnRect()Landroid/graphics/Rect;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getValidRect(IIII)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "validRect is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "height of validRect : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , t: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " b: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gtz v3, :cond_1

    return-object v2

    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->DEFAULT_THUMBNAIL_MARGIN:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_2
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getHeight()I

    move-result v2

    :cond_3
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-le v3, v2, :cond_4

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->DEFAULT_THUMBNAIL_HEIGHT:I

    if-ge v3, v4, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v4, v3

    int-to-float v3, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v3

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    if-gez v4, :cond_5

    sub-int/2addr v5, v4

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_5
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_6

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_6
    return-object v0
.end method

.method public getEraserActionType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getForegroundImagePath()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string v1, "getForegroundImagePath"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->getForegroundImagePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpenPaintingDoc foregroundImagePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getObjectCount()Ljava/lang/Integer;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string v1, "getObjectCount"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "getObjectCount : null model"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->getObjectCount(Z)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getObjectCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getPageDocHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPageDocWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPaintingViewPan()Landroid/graphics/PointF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getPan()Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPreviewBitmap()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mZoomModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mZoomModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->isInitZoomRatios()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getForegroundImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getHeight()I

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getZoomScale()F

    move-result v7

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getPan()Landroid/graphics/PointF;

    move-result-object v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;-><init>(Landroid/graphics/Bitmap;IIFLandroid/graphics/PointF;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getValidRect(IIII)Landroid/graphics/Rect;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string v1, "getValidRect"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p1, "getValidRect : null SpenView"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    :try_start_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;->getValidRect(IIII)Landroid/graphics/RectF;

    move-result-object p1

    new-instance p2, Landroid/graphics/Rect;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p3, p1, Landroid/graphics/RectF;->left:F

    float-to-int p3, p3

    iget p4, p1, Landroid/graphics/RectF;->top:F

    float-to-int p4, p4

    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-direct {p2, p3, p4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p2

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3
.end method

.method public getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    return-object v0
.end method

.method public isChanged()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isDiscardDoc()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->isDiscardDoc()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDocLoaded()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDocLoaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mIsDocLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mIsDocLoaded:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getDrawnRectOfAllObject()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getDrawnRect()Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, " ]"

    const-string v3, " ][ "

    if-eqz v0, :cond_0

    sget-object v4, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPaintingEmpty >> getDrawnRectOfAllObject = [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    sget-object v4, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPaintingEmpty >> drawnRect = [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getObjectCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPaintingEmpty, isEmpty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onCommit(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "spenPaintingDoc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onObjectAdded(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)V"
        }
    .end annotation

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string p2, "onObjectAdded"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2afe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public onObjectChanged(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;I)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string p2, "onObjectChanged"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onObjectRemoved(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)V"
        }
    .end annotation

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string p2, "onObjectRemoved"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2aff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->onPreTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    const/16 p1, 0x2b01

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_1
    return v0
.end method

.method public onRedoable(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Z)V
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "spenPaintingDoc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRedoable. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 p1, 0x2afb

    goto :goto_0

    :cond_0
    const/16 p1, 0x2afd

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/16 p1, 0x2b5f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_1
    return v1
.end method

.method public onUndoable(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Z)V
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "spenPaintingDoc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUndoable. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 p1, 0x2afa

    goto :goto_0

    :cond_0
    const/16 p1, 0x2afc

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public redo()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->closeViewControl()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->isRedoable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->redo()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;->updateRedo([Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)V

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "redo #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "0"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public redoAll()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->closeViewControl()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->isRedoable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->redoAll()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;->updateRedo([Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)V

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "redo all #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "0"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setDiscardDoc(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->setDiscardDoc(Z)V

    :cond_0
    return-void
.end method

.method public setMouseWheelZoomEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;->setMouseWheelZoomEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final setPenEraserInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setEraserSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_0
    return-void
.end method

.method public final setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->getMColor()Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->setColor(I[F)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->setPenSetting(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2c27

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setThumbnailMargin(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->DEFAULT_THUMBNAIL_MARGIN:I

    iput p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->DEFAULT_THUMBNAIL_HEIGHT:I

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView<",
            "*>;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->setView(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mIsReadySetDocument:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->setDocument()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->initSpenView()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->showCanvas()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "IView is not SpenPaintingView!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setZoomRatios(II)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mZoomModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    int-to-float v0, p1

    const v2, 0x3f666666    # 0.9f

    mul-float v4, v0, v2

    int-to-float v0, p2

    mul-float v5, v0, v2

    const/4 v0, 0x1

    if-ge p1, p2, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    move v6, v2

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->setZoomRatios(IIFFI)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mZoomModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->getMinZoomRatio()F

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mZoomModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->getFitZoomRatio()F

    move-result p2

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getMinZoomScale()F

    move-result v3

    cmpg-float v3, v3, p1

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMinZoomRatio. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setMinZoomScale(F)Z

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mIsNotifyShowPreview:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->getOBSV_PROPERTY_UPDATE_PREVIEW()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_3
    cmpl-float v3, p2, v1

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mZoomModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getZoomScale()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->isNeedSetFitZoom(F)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set fit zoom : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v1, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->setZoom(FFF)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mZoomModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->setFitZoomUpdated()V

    :cond_4
    if-lez v2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getZoomScale()F

    move-result p2

    cmpl-float p2, p1, p2

    if-lez p2, :cond_5

    invoke-virtual {p0, p1, v1, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->setZoom(FFF)V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mZoomModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->isInitZoomRatios()Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x2b5d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->isDocLoaded()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mIsNotifyShowPreview:Z

    if-nez p1, :cond_6

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->getOBSV_PROPERTY_SHOW_PREVIEW_IMAGES()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mIsNotifyShowPreview:Z

    :cond_6
    return-void

    :cond_7
    :goto_2
    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setZoomRatios. fail."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showCanvas()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;->setPaintingDoc(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Z)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade$showCanvas$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade$showCanvas$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;->setOnLoadedDocumentListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;)V

    :cond_0
    return-void
.end method

.method public undo()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->closeViewControl()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->isUndoable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->undo()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;->updateUndo([Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)V

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "undo #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "0"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public undoAll()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->closeViewControl()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->isUndoable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mPaintingDocModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->undoAll()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;->updateUndo([Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)V

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "undo all #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "0"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateDisallowTouchDownArea(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->mSpenView:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz v0, :cond_0

    div-int/lit8 p1, p1, 0x4

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;->setTouchMargin(IIII)V

    :cond_0
    return-void
.end method
