.class public abstract Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;
.super Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/ISDocSaveModel$OnProcessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000 G2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001GB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001cH\u0016J\n\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u001f\u001a\u00020\rH\u0016J\u0008\u0010 \u001a\u00020\rH\u0016J\u0010\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u0008H\u0016J\u0008\u0010#\u001a\u00020\rH\u0016J\u0010\u0010$\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&H\u0016J\u0008\u0010\'\u001a\u00020\u001cH\u0016J\u0008\u0010(\u001a\u00020\u001cH\u0016J\u0010\u0010)\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u0008H\u0016J\u0010\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020\rH\u0016J \u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020\u00082\u0006\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u00020\rH\u0016J \u00100\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020\u00082\u0006\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u00020\rH\u0016J\u0010\u00101\u001a\u00020\u001c2\u0006\u00102\u001a\u000203H\u0016J\u0010\u00104\u001a\u00020\u001c2\u0006\u00105\u001a\u00020\u0008H\u0016J\u0008\u00106\u001a\u00020\u001cH\u0016J\u0008\u00107\u001a\u00020\u001cH\u0016J\u0010\u00108\u001a\u00020\u001c2\u0006\u00109\u001a\u000203H\u0016J\u0008\u0010:\u001a\u00020\u001cH\u0016J\u0008\u0010;\u001a\u00020\u001cH\u0016J\u0012\u0010<\u001a\u00020\u001c2\u0008\u0010=\u001a\u0004\u0018\u000103H\u0016J\u0012\u0010>\u001a\u00020\u001c2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010?\u001a\u00020\u001c2\u0008\u0010@\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010A\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\rH\u0016J\u0012\u0010B\u001a\u00020\u001c2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0016J\u0010\u0010E\u001a\u00020\u001c2\u0006\u0010F\u001a\u00020\u0008H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006H"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/ISDocSaveModel$OnProcessListener;",
        "handler",
        "Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;",
        "(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;)V",
        "mCloseLevel",
        "",
        "mDataHandler",
        "mFinishHandler",
        "Landroid/os/Handler;",
        "mIsClosed",
        "",
        "mIsMultiwindow",
        "mLifeCycleController",
        "Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;",
        "getMLifeCycleController",
        "()Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;",
        "setMLifeCycleController",
        "(Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;)V",
        "mSettingsModel",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "getMSettingsModel",
        "()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "setMSettingsModel",
        "(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V",
        "bringToFront",
        "",
        "close",
        "getDataHandler",
        "isClosed",
        "isMultiwindow",
        "onBLEEvent",
        "eventId",
        "onBack",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onCreate",
        "onDestroyView",
        "onDispatchEvent",
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
        "onOptionItemSelected",
        "id",
        "onPause",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "pendingSaveForRecreatedView",
        "requestClose",
        "setArgument",
        "argument",
        "setDataHandler",
        "setLifeCycleController",
        "controller",
        "setMultiwindow",
        "setOptionChangeCallback",
        "callback",
        "Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl$IOptionChangeCallback;",
        "setWindowType",
        "windowType",
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
.field private static final CLOSE_LEVEL_ACTIVATED:I = 0x0

.field private static final CLOSE_LEVEL_CLOSED_COMPLETED:I = 0x4

.field private static final CLOSE_LEVEL_MODEL_CLOSED:I = 0x2

.field private static final CLOSE_LEVEL_VIEWMODEL_CLOSED:I = 0x1

.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mCloseLevel:I

.field private mDataHandler:Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mFinishHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsClosed:Z

.field private mIsMultiwindow:Z

.field private mLifeCycleController:Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->Companion:Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel$Companion;

    const-string v0, "AbsInstanceModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mDataHandler:Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;

    new-instance p1, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mDataHandler:Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->onDestroyView$lambda-0(Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;)V

    return-void
.end method

.method private static final onDestroyView$lambda-0(Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mIsClosed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->close()V

    return-void
.end method


# virtual methods
.method public bringToFront()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mLifeCycleController:Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;->bringToFront()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mIsClosed:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mCloseLevel:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->unregisterSpenActivationObserver()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mDataHandler:Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mCloseLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->close()V

    return-void
.end method

.method public getDataHandler()Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mDataHandler:Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;

    return-object v0
.end method

.method public final getMLifeCycleController()Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mLifeCycleController:Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;

    return-object v0
.end method

.method public final getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mIsClosed:Z

    return v0
.end method

.method public isMultiwindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mIsMultiwindow:Z

    return v0
.end method

.method public onBLEEvent(I)V
    .locals 0

    return-void
.end method

.method public onBack()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->hideShowingPopup()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->setOrientation(I)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->registerSpenActivationObserver()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mFinishHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mFinishHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDestroyView()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mCloseLevel:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->close()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mCloseLevel:I

    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mFinishHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lr3/a;

    invoke-direct {v1, p0}, Lr3/a;-><init>(Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroyView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mCloseLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDispatchEvent(I)V
    .locals 0

    return-void
.end method

.method public onFinishDocumentByUser(Z)V
    .locals 1

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->TAG:Ljava/lang/String;

    const-string v0, "onFinishDocumentByUser"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(IZZ)V
    .locals 0

    return-void
.end method

.method public onKeyUp(IZZ)V
    .locals 0

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->onLoadFromInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onOptionItemSelected(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionItemSelected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->storeSettingPopupData()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->getSpenOnlyMode()Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mCloseLevel:I

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mCloseLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public pendingSaveForRecreatedView()V
    .locals 0

    return-void
.end method

.method public requestClose()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mCloseLevel:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->close()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mCloseLevel:I

    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestClose : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mCloseLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setArgument(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setDataHandler(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->setSpenOnlyModeHandler(Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;)V

    :cond_0
    return-void
.end method

.method public setLifeCycleController(Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mLifeCycleController:Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;

    return-void
.end method

.method public final setMLifeCycleController(Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mLifeCycleController:Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;

    return-void
.end method

.method public final setMSettingsModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-void
.end method

.method public setMultiwindow(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mIsMultiwindow:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mIsMultiwindow:Z

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changed window type - is multiWindow ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->mIsMultiwindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
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

.method public setWindowType(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->setWindowType(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->getWindowType()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->setMultiwindow(Z)V

    :cond_0
    return-void
.end method
