.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/IDisplayStateListener;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/interrupt/IInterruptListener;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/ISystemKeyReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity$MessageHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_RELEASE_WAKE_LOCK:I = 0x1

.field private static final RELEASE_WAKE_LOCK_DELAY:I = 0x1388

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDisplayStateListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;

.field private final mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity$MessageHandler;

.field private mInterruptListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/interrupt/InterruptListener;

.field private mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

.field private mSystemKeyReceiver:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ScreenOffActivity"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity$MessageHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity$MessageHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/NavigationBarUtil;->enrollExcludedListToHideNavigationBar(Ljava/lang/Class;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "acquireWakeLock#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->acquireWakeLock(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity$MessageHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->releaseWakeLock()V

    return-void
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initWindowAttributes()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "initWindowAttributes#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/DeleteNoteByRemovePinOnAOD;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20003

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->setTurnScreenOn(Landroid/app/Activity;ZZ)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->setShowWhenLocked(Landroid/app/Activity;ZZ)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->setForceHideFloatingMultiWindow(Landroid/app/Activity;)Z

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->setExtensionFlagMultiWindowHandlerHidden(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/KeepScreenOnFlagFeature;->needToAddKeepScreenOnFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->setFitInsetsTypesNavigationBar(Landroid/view/Window;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->setRequestedOrientation()V

    return-void
.end method

.method private loadCachedNote()V
    .locals 6

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->loadCachedNoteUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->loadCacheNotePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadCachedNote# uuid/notePath"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "sdoc_uuid"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "doc_path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->removeCachedNoteUuid()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->removeCachedNotePath()V

    :cond_0
    return-void
.end method

.method private loadPinnedNote()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "loadPinnedNote# invalid uri!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->loadPinnedNoteUuidByUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;-><init>()V

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->loadPinnedNotePathByUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadPinnedNote# uuid/notePath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sdoc_uuid"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "doc_path"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private onDispatchActionDownEvent()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDispatchActionDownEvent#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->onDispatchActionDownEvent()V

    :cond_0
    return-void
.end method

.method private onDispatchActionUpEvent()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDispatchActionUpEvent#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->onDispatchActionUpEvent()V

    :cond_0
    return-void
.end method

.method private onHomeKeyPressed()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "onHomeKeyPressed#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->onHomeKeyPressed()V

    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "releaseWakeLock#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->releaseWakeLock()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private requestSystemKeyEvent(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSystemKeyEvent# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->hasSWNavigation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mSystemKeyReceiver:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;

    invoke-virtual {p1, p0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->registerReceivers(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/ISystemKeyReceiver;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mSystemKeyReceiver:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->unregisterReceivers(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mSystemKeyReceiver:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;

    :cond_2
    :goto_0
    return-void
.end method

.method private setRequestedOrientation()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->isSupportRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method


# virtual methods
.method public addFragment()V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "addFragment#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    instance-of v3, v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateStarting;

    const-string v4, "state"

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateStarting;

    :goto_0
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;

    goto :goto_0

    :cond_1
    const-string v2, "addFragment# exceptional case!!!"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->createFragment()Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->composer_fragment_container:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;->getFragmentTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    return-void
.end method

.method public synthetic blockUserInput(Z)V
    .locals 0

    invoke-static {p0, p1}, Le4/a;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Z)V

    return-void
.end method

.method public createFragment()Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;-><init>()V

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->onDispatchActionUpEvent()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->onDispatchActionDownEvent()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hasCachedNote()Z
    .locals 1

    invoke-static {p0}, Le4/a;->b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)Z

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "initialize#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->isPenAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenDetach;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenButtonHoverTap;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->isUseMultiplePens()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "initialize# pen startCommand but pen is attached !!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateCreated;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateCreated;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onInitialize(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public synthetic isEditedNote()Z
    .locals 1

    invoke-static {p0}, Le4/a;->c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)Z

    move-result v0

    return v0
.end method

.method public synthetic isEmptyNote()Z
    .locals 1

    invoke-static {p0}, Le4/a;->d(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)Z

    move-result v0

    return v0
.end method

.method public synthetic onClosingAnimationPenAttach()V
    .locals 0

    invoke-static {p0}, Le4/a;->e(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->onConfigurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/StaticalModelInitializer;->initialize(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->acquireWakeLock()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mDisplayStateListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->registerListener(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/IDisplayStateListener;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/interrupt/InterruptListener;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/interrupt/InterruptListener;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mInterruptListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/interrupt/InterruptListener;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/interrupt/InterruptListener;->registerListener(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/interrupt/IInterruptListener;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateCreated;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateCreated;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    const-string v1, "show"

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onNotifyExecution(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->initWindowAttributes()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/SkipPreInitializeFeature;->needToSkipPreInitialize()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "STATE_CREATED"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/SkipPreInitializeFeature;->setScreenOffActivityState(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "9985"

    const-string v0, "Screen off Memo"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    const-string v1, "close"

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onNotifyExecution(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/StaticalModelInitializer;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->release()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->releaseWakeLock()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->requestSystemKeyEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mDisplayStateListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->unregisterListener()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mInterruptListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/interrupt/InterruptListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/interrupt/InterruptListener;->unregisterListener(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity$MessageHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/SkipPreInitializeFeature;->needToSkipPreInitialize()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "STATE_DESTROYED"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/SkipPreInitializeFeature;->setScreenOffActivityState(Ljava/lang/String;)V

    :cond_2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onDisplayStateChanged(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->onDisplayStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "onFinish#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onInitialized()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "onInitialized#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/StaticalModelInitializer;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->registerObservers()V

    return-void
.end method

.method public onInterrupted()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->onInterrupted()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown# keyCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->onHomeKeyPressed()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;->makeAODCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/IAODCommand;

    move-result-object v1

    const-string v2, "do_not_update_window_flag"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNewIntent# startCommand/aodCommand/doNotUpdateWindowFlag/isFinishing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v6, "null"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v5, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/StartNone;

    const/4 v7, 0x1

    if-nez v5, :cond_1

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenAttach;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    const-string v5, "show"

    invoke-interface {v0, p0, v5, v7}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onNotifyExecution(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;Z)V

    :cond_1
    instance-of v0, v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/AODNone;

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0, v7, v7}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->setTurnScreenOn(Landroid/app/Activity;ZZ)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->acquireWakeLock()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->setRequestedOrientation()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sdoc_uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "doc_path"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNewIntent# uuid/notePath"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->getDisableNone()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->disable(Landroid/content/Context;I)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public synthetic onPreHide()V
    .locals 0

    invoke-static {p0}, Le4/a;->g(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public synthetic onPreShow()V
    .locals 0

    invoke-static {p0}, Le4/a;->h(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->getDisableExpand()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->disable(Landroid/content/Context;I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;->executeOnResume(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/StaticalModelInitializer;->initialize(Landroid/content/Context;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public synthetic onSave()V
    .locals 0

    invoke-static {p0}, Le4/a;->i(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public synthetic onSaveNoteCache()V
    .locals 0

    invoke-static {p0}, Le4/a;->j(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public synthetic onSavePinCache(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Le4/a;->k(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;)V

    return-void
.end method

.method public onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetState# before/after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    return-void
.end method

.method public synthetic onShowingAnimation()V
    .locals 0

    invoke-static {p0}, Le4/a;->l(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public onStarted()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStarted#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->requestSystemKeyEvent(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getPrimitiveStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->loadPinnedNote()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->loadCachedNote()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->addFragment()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateNone;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateNone;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    return-void
.end method

.method public onSystemKeyReceived(Landroid/content/Intent;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSystemKeyReceived# intent/reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "homekey"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->onHomeKeyPressed()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged# hasFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->setTurnScreenOn(Landroid/app/Activity;ZZ)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->releaseWakeLock()V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public synthetic requestReadyToShow(Z)V
    .locals 0

    invoke-static {p0, p1}, Le4/a;->n(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Z)V

    return-void
.end method

.method public requestRestart()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->TAG:Ljava/lang/String;

    const-string v1, "requestRestart#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/ExecutorFactory;->createExecutor(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic requestShowSaveNoteDialog()V
    .locals 0

    invoke-static {p0}, Le4/a;->p(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public synthetic requestShowSelectNoteDialog()V
    .locals 0

    invoke-static {p0}, Le4/a;->q(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public synthetic reserveRestart()V
    .locals 0

    invoke-static {p0}, Le4/a;->r(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public synthetic resetIntent()V
    .locals 0

    invoke-static {p0}, Le4/a;->s(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public synthetic setCloseReason(I)V
    .locals 0

    invoke-static {p0, p1}, Le4/a;->t(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;I)V

    return-void
.end method

.method public synthetic setLoadedPinNotePath(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Le4/a;->u(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic setLoadedPinUuid(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Le4/a;->v(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;)V

    return-void
.end method
