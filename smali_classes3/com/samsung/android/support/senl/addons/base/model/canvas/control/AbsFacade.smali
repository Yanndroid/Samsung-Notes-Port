.class public abstract Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;
.super Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$CanvasActionListener;,
        Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0008&\u0018\u0000 i2\u00020\u00012\u00020\u0002:\u0002hiB\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010)\u001a\u00020*H\u0016J\u0008\u0010+\u001a\u00020*H\u0016J\u0008\u0010,\u001a\u00020*H\u0016J\u0008\u0010-\u001a\u00020*H\u0014J\u0008\u0010.\u001a\u00020/H\u0014J\u0010\u00100\u001a\u00020*2\u0006\u00101\u001a\u00020\u0010H\u0014J\u0010\u00102\u001a\u00020*2\u0006\u00103\u001a\u00020\u0007H\u0016J\u0008\u00104\u001a\u00020\u000cH\u0016J\n\u00105\u001a\u0004\u0018\u000106H\u0016J\u000e\u00107\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0018H\u0016J\u0008\u00108\u001a\u00020\u0010H\u0014J\u000f\u00109\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0002\u0010:J\u000e\u0010;\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010!H\u0016J\u000e\u0010<\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010#H\u0016J\n\u0010=\u001a\u0004\u0018\u00010%H\u0016J\u0008\u0010>\u001a\u00020*H\u0002J\u0008\u0010?\u001a\u00020\u0007H\u0016J\u0008\u0010@\u001a\u00020\u0007H\u0016J\u0008\u0010A\u001a\u00020*H\u0016J(\u0010B\u001a\u00020*2\u0006\u0010C\u001a\u00020\u00102\u0006\u0010D\u001a\u00020\u00102\u0006\u0010E\u001a\u00020\u00102\u0006\u0010F\u001a\u00020\u0010H\u0004J\u0010\u0010G\u001a\u00020*2\u0006\u0010H\u001a\u00020\u0010H\u0004J\u0012\u0010I\u001a\u00020\u00072\u0008\u0010J\u001a\u0004\u0018\u00010KH\u0014J\u0012\u0010L\u001a\u00020\u00072\u0008\u0010J\u001a\u0004\u0018\u00010KH\u0014J\u0008\u0010M\u001a\u00020*H\u0004J\u0008\u0010N\u001a\u00020*H\u0016J\u0008\u0010O\u001a\u00020*H\u0016J\u0008\u0010P\u001a\u00020*H\u0014J\u0012\u0010Q\u001a\u00020*2\u0008\u0010R\u001a\u0004\u0018\u00010\u000cH\u0016J\u0010\u0010S\u001a\u00020*2\u0006\u0010H\u001a\u000206H\u0014J\u0016\u0010T\u001a\u00020*2\u000c\u0010U\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0018H\u0016J\u0008\u0010V\u001a\u00020*H\u0004J\u0008\u0010W\u001a\u00020*H\u0004J\u0012\u0010X\u001a\u00020*2\u0008\u0010Y\u001a\u0004\u0018\u00010\u001bH\u0016J\u0016\u0010Z\u001a\u00020*2\u000c\u0010[\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010#H\u0014J\u0016\u0010\\\u001a\u00020*2\u000c\u0010]\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010!H\u0016J\u0008\u0010^\u001a\u00020*H\u0004J\u0016\u0010_\u001a\u00020*2\u000c\u0010[\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010#H\u0016J \u0010`\u001a\u00020*2\u0006\u0010a\u001a\u00020b2\u0006\u0010c\u001a\u00020b2\u0006\u0010d\u001a\u00020bH\u0014J\u0008\u0010e\u001a\u00020*H\u0016J\u0008\u0010f\u001a\u00020*H\u0016J\u0008\u0010g\u001a\u00020*H\u0016R\u0014\u0010\u0006\u001a\u00020\u00078DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(\u00a8\u0006j"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;",
        "mMode",
        "Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;",
        "(Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;)V",
        "isSpenOnlyMode",
        "",
        "()Z",
        "mCallback",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "mCanvasContainer",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;",
        "mCanvasController",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;",
        "mCanvasListenerEnableMask",
        "",
        "mColor",
        "Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;",
        "getMColor",
        "()Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;",
        "setMColor",
        "(Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;)V",
        "mDocModel",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;",
        "mIsLockForSaving",
        "mPreTouchListener",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;",
        "getMPreTouchListener",
        "()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;",
        "setMPreTouchListener",
        "(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;)V",
        "mSettingView",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;",
        "mView",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;",
        "mWindowPosition",
        "",
        "toolTypeAction",
        "getToolTypeAction",
        "()I",
        "clearAll",
        "",
        "clearViews",
        "close",
        "closeViewControl",
        "createCanvasActionListener",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;",
        "enableCanvasListener",
        "mask",
        "enableFBR",
        "enable",
        "getCanvasContainer",
        "getCurrentColor",
        "Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;",
        "getDocModel",
        "getEraserActionType",
        "getObjectCount",
        "()Ljava/lang/Integer;",
        "getSettingView",
        "getView",
        "getViewPositionInWindow",
        "initToolType",
        "isRedoable",
        "isUndoable",
        "lockForSave",
        "onCanvasSizeChanged",
        "left",
        "top",
        "right",
        "bottom",
        "onColorPicked",
        "color",
        "onPreTouch",
        "event",
        "Landroid/view/MotionEvent;",
        "onTouch",
        "onZoom",
        "redo",
        "redoAll",
        "resetViewState",
        "setCanvasContainer",
        "layout",
        "setCurrentColor",
        "setDoc",
        "doc",
        "setEraserToolTypeAction",
        "setListeners",
        "setPreTouchListener",
        "listner",
        "setSettingInfo",
        "view",
        "setSettingView",
        "settingView",
        "setTooltype",
        "setView",
        "setZoom",
        "scale",
        "",
        "centerX",
        "centerY",
        "undo",
        "undoAll",
        "unlockForSave",
        "CanvasActionListener",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCanvasContainer:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCanvasController:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCanvasListenerEnableMask:I

.field private mColor:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsLockForSaving:Z

.field private mMode:Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPreTouchListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSettingView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mWindowPosition:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->Companion:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$Companion;

    const-string v0, "AbsFacade"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mMode:Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;

    new-instance p1, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mColor:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    new-instance p1, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$mCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$mCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mMode:Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->addObserver(Ljava/beans/PropertyChangeListener;)V

    const/16 p1, 0x1f

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->enableCanvasListener(I)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final getToolTypeAction()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mMode:Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v1, v2

    goto :goto_0

    :pswitch_0
    const/16 v1, 0xb

    goto :goto_0

    :pswitch_1
    const/16 v1, 0xe

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xd

    goto :goto_0

    :pswitch_3
    const/16 v1, 0xc

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->getEraserActionType()I

    move-result v1

    :cond_4
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final initToolType()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->setTooltype()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->setEraserToolTypeAction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setToolTypeAction(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mIsLockForSaving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;->clearAll()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    const-string v1, "clear all"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->clearAll()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->update()V

    :cond_2
    const/16 v0, 0x2b00

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public clearViews()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    const-string v1, "clear Views"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCanvasController:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCanvasController:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mSettingView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mSettingView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;

    :cond_2
    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mMode:Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    if-eqz v2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->removeObserver(Ljava/beans/PropertyChangeListener;)V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mMode:Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCanvasContainer:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mPreTouchListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mColor:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mWindowPosition:[I

    return-void
.end method

.method public closeViewControl()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->closeControl()V

    return-void
.end method

.method public createCanvasActionListener()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$CanvasActionListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$CanvasActionListener;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;)V

    return-object v0
.end method

.method public enableCanvasListener(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCanvasListenerEnableMask:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCanvasController:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;->enableListener(I)V

    :cond_0
    return-void
.end method

.method public enableFBR(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setFrontBufferRenderingEnabled(Z)Z

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabled FBR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCanvasContainer()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCanvasContainer:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCurrentColor()Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mColor:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    return-object v0
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    return-object v0
.end method

.method public getEraserActionType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final getMColor()Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mColor:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    return-object v0
.end method

.method public final getMPreTouchListener()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mPreTouchListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;

    return-object v0
.end method

.method public getObjectCount()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;->getObjectCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSettingView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mSettingView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;

    return-object v0
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    return-object v0
.end method

.method public getViewPositionInWindow()[I
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mWindowPosition:[I

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mWindowPosition:[I

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mWindowPosition:[I

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getLocationInWindow([I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mWindowPosition:[I

    return-object v0
.end method

.method public isRedoable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;->isRedoable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSpenOnlyMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mMode:Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/mode/ISpenOnlyMode;->getSpenOnlyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUndoable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;->isUndoable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lockForSave()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mIsLockForSaving:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->lockForSave()V

    :cond_0
    return-void
.end method

.method public final onCanvasSizeChanged(IIII)V
    .locals 0

    return-void
.end method

.method public final onColorPicked(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mColor:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->setColor(I)V

    :cond_0
    const/16 p1, 0x2c27

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mPreTouchListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;->onPreTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public final onZoom()V
    .locals 1

    const/16 v0, 0x2b5c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public redo()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mIsLockForSaving:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->closeViewControl()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;->isRedoable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;->redo()[Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    const-string v1, "redo"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x2afd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public redoAll()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mIsLockForSaving:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->closeViewControl()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;->isRedoable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;->redoAll()[Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    const-string v1, "redoAll"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetViewState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setPan(Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public setCanvasContainer(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setCanvasContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCanvasContainer:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p1, "setCanvasContainer : call again"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;->getCanvasControl()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCanvasController:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCanvasListenerEnableMask:I

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;->enableListener(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->createCanvasActionListener()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCanvasController:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;

    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;->setCanvasActionListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->setView(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;)V

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;->getSettingView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->setSettingView(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->setListeners()V

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object v0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->setSettingInfo(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->initToolType()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCanvasContainer:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;

    const/16 p1, 0x2bc0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public setCurrentColor(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mColor:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getColor()I

    move-result v1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;->getHSV()[F

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;->setColor(I[F)V

    :cond_0
    return-void
.end method

.method public setDoc(Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    const-string v1, "already has doc, but change it"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    return-void
.end method

.method public final setEraserToolTypeAction()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->getEraserActionType()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setToolTypeAction(II)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setToolTypeAction(II)V

    :cond_1
    return-void
.end method

.method public final setListeners()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCanvasController:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;->setCanvasListeners()V

    :cond_0
    return-void
.end method

.method public final setMColor(Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mColor:Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    return-void
.end method

.method public final setMPreTouchListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mPreTouchListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;

    return-void
.end method

.method public setPreTouchListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mPreTouchListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;

    return-void
.end method

.method public setSettingInfo(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;)V
    .locals 2
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

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->getSettingView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "there is not general setting view"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;->getPenSettingPopup()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IPenSettingPopup;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;->getPenSettingPopup()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IPenSettingPopup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/IPenSettingPopup;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    const-string v0, "not needed to set pen info"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setSettingView(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mSettingView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;

    return-void
.end method

.method public final setTooltype()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mMode:Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->getToolTypeAction()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTooltype actionType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/SpenUtils;->isSpenActivated()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isNotDexModeOrStandAloneMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/common/util/SpenUtils;->isSupportedSpenDisplay(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->isSpenOnlyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setToolTypeAction(II)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setToolTypeAction(II)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setToolTypeAction(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setToolTypeAction(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setToolTypeAction(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setActionType(I)V

    :cond_1
    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;)V
    .locals 3
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

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mCanvasController:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;->setCanvas(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;)V

    :cond_1
    return-void
.end method

.method public setZoom(FFF)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setZoom "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setZoomScale(FFF)V

    :cond_0
    return-void
.end method

.method public undo()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mIsLockForSaving:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->closeViewControl()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;->isUndoable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;->undo()[Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "undo"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x2afc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public undoAll()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mIsLockForSaving:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->closeViewControl()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;->isUndoable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mDocModel:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;->undoAll()[Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "undoAll"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unlockForSave()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mIsLockForSaving:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->unlockForSave()V

    :cond_0
    return-void
.end method
