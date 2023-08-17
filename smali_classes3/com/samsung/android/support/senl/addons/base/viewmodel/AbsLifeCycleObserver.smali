.class public abstract Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver$Companion;,
        Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver$OnInflateCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 J2\u00020\u00012\u00020\u0002:\u0002JKB\u0019\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0018H\u0016J\u0008\u0010\u001a\u001a\u00020\u0010H\u0016J\u0008\u0010\u001b\u001a\u00020\u000eH\u0016J\u0008\u0010\u001c\u001a\u00020\u0010H\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0018H\u0016J\u0008\u0010 \u001a\u00020!H\u0016J\u0012\u0010\"\u001a\u00020\u001e2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u001c\u0010%\u001a\u00020\u001e2\u0008\u0010&\u001a\u0004\u0018\u00010\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0008\u0010*\u001a\u00020\u001eH\u0016J\u0008\u0010+\u001a\u00020\u001eH\u0016J\u0010\u0010,\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0018H\u0016J\u0010\u0010-\u001a\u00020\u001e2\u0006\u0010.\u001a\u00020!H\u0016J \u0010/\u001a\u00020\u001e2\u0006\u00100\u001a\u00020\u00182\u0006\u00101\u001a\u00020!2\u0006\u00102\u001a\u00020!H\u0016J \u00103\u001a\u00020\u001e2\u0006\u00100\u001a\u00020\u00182\u0006\u00101\u001a\u00020!2\u0006\u00102\u001a\u00020!H\u0016J\u0010\u00104\u001a\u00020\u001e2\u0006\u00105\u001a\u00020!H\u0016J\u0010\u00106\u001a\u00020\u001e2\u0006\u0010\u0013\u001a\u00020\u0018H\u0016J\u0008\u00107\u001a\u00020\u001eH\u0016J\u0008\u00108\u001a\u00020\u001eH\u0016J\u0012\u00109\u001a\u00020\u001e2\u0008\u0010:\u001a\u0004\u0018\u00010)H\u0016J\u0008\u0010;\u001a\u00020\u001eH\u0016J\u0008\u0010<\u001a\u00020\u001eH\u0016J\u0012\u0010=\u001a\u00020\u001e2\u0008\u0010>\u001a\u0004\u0018\u00010?H\u0016J\u0012\u0010@\u001a\u00020\u001e2\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0016J\u0010\u0010C\u001a\u00020\u001e2\u0006\u0010D\u001a\u00020\u0018H\u0016J\u0010\u0010E\u001a\u00020\u001e2\u0006\u0010F\u001a\u00020\u0018H\u0016J\u0010\u0010G\u001a\u00020\u001e2\u0006\u0010H\u001a\u00020IH\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006L"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;",
        "model",
        "Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;",
        "facade",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;",
        "(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V",
        "mInstanceModel",
        "getMInstanceModel",
        "()Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;",
        "setMInstanceModel",
        "(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;)V",
        "getContentResolution",
        "",
        "getContentScreenSize",
        "Landroid/util/Size;",
        "getData",
        "",
        "id",
        "",
        "getInflateCallback",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer$OnInflateCallback;",
        "getOrientation",
        "",
        "getScreenResolution",
        "getScreenSize",
        "getWindowResolution",
        "getWindowSize",
        "onBLEEvent",
        "",
        "eventId",
        "onBack",
        "",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onCreate",
        "intent",
        "Landroid/content/Intent;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onDestroyView",
        "onDispatchEvent",
        "onFinishDocumentByUser",
        "save",
        "onKeyDown",
        "keycode",
        "withCtrl",
        "withShift",
        "onKeyUp",
        "onMultiWindowModeChanged",
        "isInMultiWndowMode",
        "onOptionItemSelected",
        "onPause",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "onStart",
        "onStop",
        "setLifeCycleController",
        "control",
        "Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;",
        "setOptionChangeCallback",
        "callback",
        "Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl$IOptionChangeCallback;",
        "setOrientation",
        "orientation",
        "setWindowType",
        "windowType",
        "updateScreenData",
        "data",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;",
        "Companion",
        "OnInflateCallback",
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
.field private static final BINDING_ID_INFLATE_CALLBACK:Ljava/lang/String; = "inflateCallback"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ORIENTATION:Ljava/lang/String; = "orientation"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->Companion:Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    return-void
.end method


# virtual methods
.method public getContentResolution()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;->getContentResolution()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getContentScreenSize()Landroid/util/Size;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;->getContentScreenSize()Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "inflateCallback"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->getInflateCallback()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer$OnInflateCallback;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "orientation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->getOrientation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInflateCallback()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer$OnInflateCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver$OnInflateCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver$OnInflateCallback;-><init>(Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;)V

    return-object v0
.end method

.method public final getMInstanceModel()Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

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

    return v0
.end method

.method public getScreenResolution()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;->getScreenResolution()I

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

    return v0
.end method

.method public getScreenSize()Landroid/util/Size;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;->getScreenSize()Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getWindowResolution()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;->getWindowResolution()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getWindowSize()Landroid/util/Size;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;->getWindowSize()Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public onBLEEvent(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/bleremote/IBLEListener;->onBLEEvent(I)V

    :cond_0
    return-void
.end method

.method public onBack()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/IKeyListener;->onBack()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;->onCreate()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;->onDestroyView()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    return-void
.end method

.method public onDispatchEvent(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/IEventListener;->onDispatchEvent(I)V

    :cond_0
    return-void
.end method

.method public onFinishDocumentByUser(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/IEventListener;->onFinishDocumentByUser(Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/base/model/IKeyListener;->onKeyDown(IZZ)V

    :cond_0
    return-void
.end method

.method public onKeyUp(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/base/model/IKeyListener;->onKeyUp(IZZ)V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;->setMultiwindow(Z)V

    :cond_0
    return-void
.end method

.method public onOptionItemSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl;->onOptionItemSelected(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/common/ISavableModel;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public setLifeCycleController(Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;->setLifeCycleController(Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;)V

    :cond_0
    return-void
.end method

.method public final setMInstanceModel(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    return-void
.end method

.method public setOptionChangeCallback(Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl$IOptionChangeCallback;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl$IOptionChangeCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public setWindowType(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/IWindowMode;->setWindowType(I)V

    :cond_0
    return-void
.end method

.method public updateScreenData(Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->mInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenMode;->updateScreenData(Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;)V

    :cond_0
    return-void
.end method
