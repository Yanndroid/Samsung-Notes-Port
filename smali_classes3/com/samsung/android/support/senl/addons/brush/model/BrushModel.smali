.class public Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;
.super Lcom/samsung/android/support/senl/addons/brush/model/InstanceModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/BrushModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0016\u0018\u0000 W2\u00020\u00012\u00020\u0002:\u0001WB!\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\n\u0010\u001e\u001a\u0004\u0018\u00010\u0013H\u0016J\n\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\n\u0010!\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\"\u001a\u00020\u0008H\u0016J\u0010\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u0008H\u0016J\u0008\u0010%\u001a\u00020\u0015H\u0016J\u0010\u0010&\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020(H\u0016J\u0008\u0010)\u001a\u00020\u0015H\u0016J\u0008\u0010*\u001a\u00020\u0015H\u0016J\u0010\u0010+\u001a\u00020\u00152\u0006\u0010,\u001a\u00020\u0008H\u0016J \u0010-\u001a\u00020\u00152\u0006\u0010.\u001a\u00020\u000f2\u0006\u0010/\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u0008H\u0016J \u00101\u001a\u00020\u00152\u0006\u0010.\u001a\u00020\u000f2\u0006\u0010/\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u0008H\u0016J\u0010\u00102\u001a\u00020\u00152\u0006\u00103\u001a\u000204H\u0016J\u0008\u00105\u001a\u00020\u0015H\u0016J\u0008\u00106\u001a\u00020\u0015H\u0016J\u0010\u00107\u001a\u00020\u00152\u0006\u00108\u001a\u000204H\u0016J\u0008\u00109\u001a\u00020\u0015H\u0016J\u0008\u0010:\u001a\u00020\u0015H\u0016J\u0008\u0010;\u001a\u00020\u0015H\u0002J\u0010\u0010<\u001a\u00020\u00152\u0006\u0010=\u001a\u00020\u0008H\u0002J\u0018\u0010<\u001a\u00020\u00152\u0006\u0010=\u001a\u00020\u00082\u0006\u0010>\u001a\u00020\u0008H\u0002J\u0010\u0010?\u001a\u00020\u00082\u0006\u0010@\u001a\u00020AH\u0016J\u0012\u0010B\u001a\u00020\u00152\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\u000e\u0010C\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020DJ\u0010\u0010E\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020FH\u0016J8\u0010G\u001a\u00020\u00152\u0008\u0010H\u001a\u0004\u0018\u00010\u001b2\u0008\u0010I\u001a\u0004\u0018\u00010\u001b2\u0008\u0010J\u001a\u0004\u0018\u00010\u001b2\u0008\u0010K\u001a\u0004\u0018\u00010\u001b2\u0008\u0010L\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010M\u001a\u00020\u00082\u0006\u0010N\u001a\u00020\u000fH\u0016J\u0010\u0010O\u001a\u00020\u00082\u0006\u0010@\u001a\u00020AH\u0016J\u0010\u0010P\u001a\u00020\u00152\u0006\u0010Q\u001a\u00020\u000fH\u0016J\u0008\u0010R\u001a\u00020\u0015H\u0002J\u0018\u0010S\u001a\u00020\u00152\u0006\u0010T\u001a\u00020\u00082\u0006\u0010U\u001a\u00020\u000fH\u0016J\u0008\u0010V\u001a\u00020\u0015H\u0002R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006X"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;",
        "Lcom/samsung/android/support/senl/addons/brush/model/InstanceModel;",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;",
        "handler",
        "Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;",
        "injector",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;",
        "restored",
        "",
        "(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;Z)V",
        "mFacade",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;",
        "mIsOnFinish",
        "mIsSkipSaveNow",
        "mMinSize",
        "",
        "mPenModelsManager",
        "Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;",
        "mSaveModel",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;",
        "changMenuType",
        "",
        "close",
        "createSaveModel",
        "getColorModelsManager",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;",
        "getCurrentPenName",
        "",
        "getPenModelList",
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;",
        "getSaveModel",
        "getSettingsModel",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "getSpenFacade",
        "onBack",
        "onCompleteAllProcess",
        "isSave",
        "onCompleteUIProcess",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onDestroyView",
        "onDocumentLoaded",
        "onFinishDocumentByUser",
        "save",
        "onKeyDown",
        "keycode",
        "withCtrl",
        "withShift",
        "onKeyUp",
        "onLoadFromInstanceState",
        "inState",
        "Landroid/os/Bundle;",
        "onPause",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "onStartSave",
        "pendingSaveForRecreatedView",
        "redo",
        "requestFinish",
        "isRemainedProcess",
        "isSaved",
        "setContentScreenSize",
        "size",
        "Landroid/util/Size;",
        "setDataHandler",
        "setInjector",
        "Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector;",
        "setMenuSizeInjector",
        "Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;",
        "setPathInfo",
        "inPaintingDocPath",
        "inThumbnailPath",
        "outPaintingDocPath",
        "outThumbnailPath",
        "internalPath",
        "setRotation",
        "degree",
        "setWindowSize",
        "setWindowType",
        "windowType",
        "undo",
        "updateDisallowTouchDownArea",
        "enable",
        "navigationBarHeight",
        "updateToolType",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/BrushModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsOnFinish:Z

.field private mIsSkipSaveNow:Z

.field private mMinSize:I

.field private mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/BrushModel$Companion;

    const-string v0, "BrushModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;Z)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/InstanceModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    const-string v0, "BrushModel : construct"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    invoke-direct {p1, p0, v0, p2}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMFacade()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->createSaveModel(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->setBrushModelListener(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$BrushModelZoomListener;)V

    :cond_0
    return-void
.end method

.method private final changMenuType()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMLifeCycleController()Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMLifeCycleController()Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;->requestChangeView()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->recreateSetting()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->rotate()V

    :cond_1
    return-void
.end method

.method private final createSaveModel(Z)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->setProcessListener(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;)V

    return-void
.end method

.method private final redo()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->isRedoable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->hasShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->clearAllPopupVisibility()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->redo()V

    :cond_1
    return-void
.end method

.method private final requestFinish(Z)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->requestFinish(ZZ)V

    return-void
.end method

.method private final requestFinish(ZZ)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->requestClose()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMLifeCycleController()Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mIsOnFinish:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMLifeCycleController()Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;->requestFinish(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mIsOnFinish:Z

    :cond_1
    return-void
.end method

.method private final undo()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->isUndoable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->hasShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->clearAllPopupVisibility()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->undo()V

    :cond_1
    return-void
.end method

.method private final updateToolType()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->updateToolType()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->setBrushModelListener(Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$BrushModelZoomListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->close()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/addons/base/model/save/AbsSaveModel;->setOnProcessListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/ISDocSaveModel$OnProcessListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->close()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->close()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->close()V

    return-void
.end method

.method public final getColorModelsManager()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMColorModelsManager()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getCurrentPenName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getCurrentPenName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getPenModelList()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMPenModelList()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSaveModel()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    return-object v0
.end method

.method public getSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    return-object v0
.end method

.method public getSpenFacade()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    return-object v0
.end method

.method public onBack()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    const-string v1, "onBack"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->onBack()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-array v1, v1, [Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->saveAsync([Ljava/lang/Boolean;)V

    :cond_1
    return v2
.end method

.method public onCompleteAllProcess(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompleteAllProcess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->requestFinish(ZZ)V

    return-void
.end method

.method public onCompleteUIProcess()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    const-string v1, "onCompleteUIProcess"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->requestFinish(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->changMenuType()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->updateToolType()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->joinSave()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->clearViews()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->savePenInfo()V

    :cond_2
    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->onDestroyView()V

    return-void
.end method

.method public onDocumentLoaded()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMLifeCycleController()Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;->requestBlockUserInput(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mIsSkipSaveNow:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mIsSkipSaveNow:Z

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    const-string v2, "onDocumentLoaded : run skipped save"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->saveSync([Ljava/lang/Boolean;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    const-string v1, "onDocumentLoaded"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFinishDocumentByUser(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->onFinishDocumentByUser(Z)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishDocumentByUser, isOnFinish/save : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mIsOnFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mIsOnFinish:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->isPaintingDocChanged()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->joinSave()V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->requestFinish(ZZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->requestFinish(ZZ)V

    :goto_0
    return-void
.end method

.method public onKeyDown(IZZ)V
    .locals 1

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->setMouseWheelZoomEnabled(Z)V

    :cond_0
    const/16 p2, 0x36

    if-eqz p3, :cond_1

    if-ne p1, p2, :cond_6

    goto :goto_0

    :cond_1
    const/16 p3, 0x30

    if-eq p1, p3, :cond_4

    const/16 p3, 0x35

    if-eq p1, p3, :cond_3

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->undo()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->redo()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getCurrentMode()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setMode(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getPenSettingVisibility()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setPenSettingVisibility(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onKeyUp(IZZ)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->setMouseWheelZoomEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onLoadFromInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "inState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->onLoadFromInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->onLoadFromInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mIsSkipSaveNow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->updateDocumentWithoutSaving()Z

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mIsSkipSaveNow:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause : skip save - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mIsSkipSaveNow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mIsOnFinish:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v1, v3, [Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->saveSync([Ljava/lang/Boolean;)V

    :cond_3
    :goto_1
    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->isDocLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMLifeCycleController()Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMLifeCycleController()Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;->requestBlockUserInput(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->showCanvas()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->updateCurrentPenInfo()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->getMBrushPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->savePenInfo()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->joinSave()V

    :cond_1
    return-void
.end method

.method public onStartSave()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->getMLifeCycleController()Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;->requestBlockUserInput(Z)V

    :cond_0
    return-void
.end method

.method public pendingSaveForRecreatedView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mIsSkipSaveNow:Z

    return-void
.end method

.method public setContentScreenSize(Landroid/util/Size;)Z
    .locals 2
    .param p1    # Landroid/util/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->setContentScreenSize(Landroid/util/Size;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mPenModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager;->setPenEraserInfo()V

    :cond_0
    return v0
.end method

.method public setDataHandler(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->setDataHandler(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->createSaveModel(Z)V

    return-void
.end method

.method public final setInjector(Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "injector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector;->getThumbnailMargin()Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;->getHorizontal()I

    move-result v1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector;->getThumbnailMargin()Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;->getVertical()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->setThumbnailMargin(II)V

    :cond_0
    return-void
.end method

.method public setMenuSizeInjector(Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "injector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/InstanceModel;->setMenuSizeInjector(Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/InstanceModel;->getMenuSizeInjector()Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;->getMinWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mMinSize:I

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mMinSize:I

    return-void
.end method

.method public final setPathInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mSaveModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->setPathInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRotation(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/BrushToastHandler;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/BrushToastHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/util/BrushToastHandler;->setRotation(I)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->setRotation(I)Z

    move-result p1

    return p1
.end method

.method public setWindowSize(Landroid/util/Size;)Z
    .locals 2
    .param p1    # Landroid/util/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mIsSkipSaveNow:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->getWindowSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->setWindowSize(Landroid/util/Size;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mMinSize:I

    add-int/lit8 v1, v1, -0xa

    if-ge v0, v1, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    const-string v1, "UI is must changed to Phone UI"

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mMinSize:I

    add-int/lit8 v1, v1, 0xa

    if-le v0, v1, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    const-string v1, "UI is must changed to Tablet UI"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->changMenuType()V

    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->setWindowSize(Landroid/util/Size;)Z

    move-result p1

    return p1
.end method

.method public setWindowType(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->setWindowType(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->enableFBR(Z)V

    return-void
.end method

.method public updateDisallowTouchDownArea(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTouchMargin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setTouchMargin: 0"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->updateDisallowTouchDownArea(I)V

    :cond_1
    return-void
.end method
