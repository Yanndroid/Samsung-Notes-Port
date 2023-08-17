.class public Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService$MiningTaskRunner;,
        Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService$StartMiningServiceRunner;
    }
.end annotation


# static fields
.field private static final APP_VERSION_START:I = 0x17e0bf48

.field private static final IS_ENABLED:Z = true

.field private static final MIGRATION_PERIOD:J = 0x2710L

.field public static final PREFERENCE_NAME:Ljava/lang/String; = "TextMiningPref"

.field public static final PREFERENCE_VALUE_SEPARATOR:Ljava/lang/String; = "<@sep#1>"

.field public static final PREPERENCE_KEY_NEED_TO_RESET:Ljava/lang/String; = "needToRest_1"

.field public static final PREPERENCE_KEY_RESET_DATA_LIST:Ljava/lang/String; = "TextResetList"

.field private static final TAG:Ljava/lang/String; = "TextMiningService"

.field private static final TEXT_MINING_NOTIFICATION_CHANNEL_V2:Ljava/lang/String; = "TextMiningServiceNotificationChannel"


# instance fields
.field private mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;->enableMiningOperation(Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;Z)V

    return-void
.end method

.method public static checkNeedToResetVersion(I)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;->isNeedToResetSearchDataVersion(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "TextMiningPref"

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;->enableMiningOperation(Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;Z)V

    :cond_0
    return-void
.end method

.method private static enableMiningOperation(Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;Z)V
    .locals 2
    .param p0    # Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMiningOperation, enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextMiningService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "TextResetList"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->remove(Ljava/lang/String;)V

    :cond_0
    const-string v0, "needToRest_1"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;->needToResetData()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init, needToResetData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextMiningService"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService$StartMiningServiceRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService$StartMiningServiceRunner;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/mining/text/b;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler;->callable(Ljava/lang/Runnable;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->executeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->execute()V

    return-void
.end method

.method private static isNeedToResetSearchDataVersion(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedToResetSearchDataVersion, lastVersionCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextMiningService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x17e0bf48

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static needToResetData()Z
    .locals 3

    const-string v0, "TextMiningPref"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "needToRest_1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
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
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "TextMiningService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/model/R$string;->composer_text_recognition_dialog_title:I

    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;->BACKGROUND:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;

    const-string v3, "TextMiningServiceNotificationChannel"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->registerService(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->unregisterService(Landroid/app/Service;)V

    const-string v0, "TextMiningService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "TextMiningService"

    const-string p2, "onStartCommand"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    new-instance p3, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {p3, p1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService$MiningTaskRunner;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService$MiningTaskRunner;-><init>(Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;Lcom/samsung/android/support/senl/nt/model/mining/text/a;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x2

    return p1
.end method
