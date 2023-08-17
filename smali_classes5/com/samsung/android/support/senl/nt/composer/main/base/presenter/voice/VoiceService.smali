.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mAppContext:Landroid/content/Context;

.field private static mIsWorking:Z

.field private static mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private static mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;


# instance fields
.field private mNotificationHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

.field private mVoiceStateChangedListener:Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VoiceService"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mAppContext:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mIsWorking:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mVoiceStateChangedListener:Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mNotificationHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->stop()V

    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mIsWorking:Z

    return v0
.end method

.method public static bridge synthetic e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    return-object v0
.end method

.method private getCurrentProgress()I
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isPlayingVoiceDataState()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getRecordPlayingIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceDataTimeByIndex(I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getRecordPlayingProgress()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isPlayingObjectVoiceState()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getAudioProgress()I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getRecordingTime()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static startService(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)V
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    sget-boolean v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mIsWorking:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getVoiceModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getVoiceModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isPlayingVoiceState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getVoiceModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isRecordingVoiceState()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getVoiceModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    sput-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mIsWorking:Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private stop()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "stop self"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mAppContext:Landroid/content/Context;

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mIsWorking:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static stopService()V
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mAppContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mAppContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mAppContext:Landroid/content/Context;

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mIsWorking:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy VoiceService"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mIsWorking:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mVoiceStateChangedListener:Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->removeStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mNotificationHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->removeVoiceNotification()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mNotificationHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " startId = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    monitor-enter p1

    const/4 p2, 0x1

    :try_start_0
    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mAppContext:Landroid/content/Context;

    if-eqz p3, :cond_2

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    if-eqz p3, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isPlayingVoiceState()Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isRecordingVoiceState()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mNotificationHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    if-nez p3, :cond_1

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->getCurrentProgress()I

    move-result v5

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;-><init>(Landroid/content/Context;ZZLcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;I)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mNotificationHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mNotificationHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    invoke-virtual {p3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->connectService(Landroid/app/Service;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-class p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    monitor-enter p3
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sput-boolean p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mIsWorking:Z

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->mVoiceStateChangedListener:Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;

    invoke-static {p3}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->setStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return p2

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p3

    :try_start_6
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->stop()V

    monitor-exit p1

    return p2

    :goto_0
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p2
.end method
