.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/ICoveredListener;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver$IBroadcastListener;


# static fields
.field private static final SCREEN_OFF_NOTIFICATION_CHANNEL:Ljava/lang/String; = "ScreenOffMemoServiceNotificationChannel"

.field private static final SETTINGS_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

.field private mIntent:Landroid/content/Intent;

.field private mScreenOnReceiver:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ScreenOffService"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private attachCovered()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "attachCovered#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    if-nez v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->createCovered()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->preInitialize()V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->canWorkOnBackground()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/NotifyExecutionFeature;->isCheckingServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->onAttachView(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->initView(IZ)V

    return-void
.end method

.method private createCovered()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "createCovered#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->init()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    invoke-direct {v0, p0, v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/ICoveredListener;)V

    :cond_0
    return-void
.end method

.method private detachCovered()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "detachCovered#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->onDetachView()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    return-void
.end method

.method private hasPermissionCanDrawOverlays()Z
    .locals 4

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasPermissionCanDrawOverlays# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private isAllowedIntent(Landroid/content/Intent;)Z
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v0, "isAllowedIntent# invalid intent"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private isAllowedStartCase()Z
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->isNotAllowedWithStaticFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/RunningChecker;->isScreenOffActivityRunning()Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->isCoverClosed(Landroid/content/Context;Z)Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->getCoverType()I

    move-result v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAllowedStartCase# isCoverClosed/coverType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const/16 v2, 0xf

    if-ne v2, v3, :cond_1

    if-nez v0, :cond_1

    const-string v0, "isAllowedStartCase# TYPE_CLEAR_SIDE_VIEW_COVER is closed"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->isInteractive()Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v5}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;->makeAODCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/IAODCommand;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAllowedStartCase# isInteractive/isScreenOffActivityRunning/startCommand/aodCommand "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v6, v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/StartNone;

    if-eqz v6, :cond_3

    instance-of v6, v5, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/AODNone;

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/CommandFeature;->hasPenIntentComFeature()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "isAllowedStartCase# invalid command"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const-string v3, "isAllowedStartCase# convertStartCommand as PEN_DETACH"

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    const-string v7, "pen_intent_com"

    const-string v8, "pen_detach"

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->convertStartCommand(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v3

    :cond_3
    instance-of v5, v5, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultApply;

    if-eqz v5, :cond_4

    if-nez v0, :cond_4

    const-string v0, "isAllowedStartCase# get ResultApply but ScreenOffMemo is not running"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    instance-of v5, v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenAttach;

    if-eqz v5, :cond_5

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->releaseWakeLock()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->restoreCaches()V

    return v1

    :cond_5
    const/4 v0, 0x1

    if-eqz v2, :cond_7

    instance-of v2, v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PreInitialize;

    if-nez v2, :cond_6

    instance-of v2, v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenDetach;

    if-nez v2, :cond_6

    instance-of v2, v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenButtonHoverTap;

    if-nez v2, :cond_6

    move v1, v0

    :cond_6
    return v1

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->isStartedByPenIntentCommand()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMemoryForNewMemo()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "isAllowedStartCase# not enough space in internal storage"

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->base_string_not_enough_space_in_device_storage_desc:I

    invoke-static {p0, v2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->wakeUp(JI)Z

    return v1

    :cond_8
    return v0
.end method

.method private isNeedToPermissionCase()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->hasPermissionCanDrawOverlays()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "isNeedToPermissionCase# CanDrawOverlays is not granted"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->wakeUp(JI)Z

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->showAppearOnTopToast(Landroid/content/Context;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isNotAllowedWithStaticFeature()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;->isFmmLockEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v2, "isAllowedStartCase# FMM Lock is enabled"

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "user_setup_complete"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v2, "isAllowedStartCase# user setup is not completed"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexDualModeConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexTouchpadEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->isFoldableDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->isIsMainDisplay()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v2, "isAllowedStartCase# not main display"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v2, "isAllowedStartCase# connected Dex dual mode or touch pad"

    goto :goto_0
.end method

.method private isStartedByPenIntentCommand()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenDetach;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenButtonHoverTap;

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

.method private needToAttachCovered()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenDetach;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenButtonHoverTap;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToAttachCovered# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private needToDetachCovered()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenAttach;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToDetachCovered# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private notifyExecution(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "NOTIFY_EXECUTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/ExecutorFactory;->createExecutor(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onStarted()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "onStarted#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->notifyExecution(Ljava/lang/String;)V

    const/16 v0, 0xbb8

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/DVFSHandler;->requestDVFSBoost(I)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    move-result-object v0

    const-class v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->acquireWakeLock(Ljava/lang/String;J)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->isStartedByPenIntentCommand()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    const-string v1, "EXPOSE_SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    const-string v1, "SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    const-string v1, "execute_type"

    const-string v2, "activity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/ExecutorFactory;->createExecutor(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private preInitialize()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "preInitialize#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->releaseWakeLock()V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/StaticalModelInitializer;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private refreshNotifyExecution()V
    .locals 5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "ScreenOffMemoPref"

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v2

    const-string v3, "Notify_Execution_Refresh"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    const-string v1, "close"

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->notifyExecution(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshNotifyExecution# pid/prefPid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private resetScreenOnBroadCase()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mScreenOnReceiver:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "resetScreenOnBroadCase#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mScreenOnReceiver:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;->unregisterReceivers(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mScreenOnReceiver:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;

    :cond_0
    return-void
.end method

.method private restoreCaches()V
    .locals 7

    const-string v0, "_save_screenoffmemo_v0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "PREF_KEY_CACHED_NOTE_UUID"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreCaches# cachedUuid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v1, v5, v6}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentServiceIntent;->restoreCaches(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setScreenOnBroadCase()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mScreenOnReceiver:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "setScreenOnBroadCase#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mScreenOnReceiver:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;

    invoke-virtual {v0, p0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;->registerReceivers(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver$IBroadcastListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public notifyOnDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "notifyOnDestroy#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->canWorkOnBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/NotifyExecutionFeature;->isCheckingServiceRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->screenoff_screen_off_memo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;->DEFAULT:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;

    const-string v3, "ScreenOffMemoServiceNotificationChannel"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->registerService(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->register(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->unregisterService(Landroid/app/Service;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->unregister(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->resetScreenOnBroadCase()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->onDetachView()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onReceivedBroadcast(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedBroadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/StaticalModelInitializer;->release()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->isAllowedIntent(Landroid/content/Intent;)Z

    move-result p2

    const/4 p3, 0x2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return p3

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartCommand# hashCode/action/userId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getUserId(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/NotifyExecutionFeature;->isCheckingServiceRunning()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/ControlService;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand# ControlService, state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "show"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return p3

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->isAllowedStartCase()Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->release()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return p3

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PreInitialize;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->createCovered()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->preInitialize()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->refreshNotifyExecution()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->setScreenOnBroadCase()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->isNeedToPermissionCase()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->resetScreenOnBroadCase()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->needToAttachCovered()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->attachCovered()V

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->needToDetachCovered()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->detachCovered()V

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->onStarted()V

    :goto_1
    return p3
.end method
