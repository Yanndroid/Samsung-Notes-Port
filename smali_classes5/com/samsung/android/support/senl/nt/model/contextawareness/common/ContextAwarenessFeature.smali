.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature$ContextAwarenessSupportedCallable;
    }
.end annotation


# static fields
.field public static final BROWSER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.sbrowser"

.field public static final GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.gallery3d"

.field private static final MAX_VERSION_CODE_NEED_DELAY_WHEN_REQUEST_SUBSCRIBE:I = 0x18701add

.field public static final MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.messaging"

.field private static final MIN_VERSION_CODE_NEED_DELAY_WHEN_REQUEST_SUBSCRIBE:I = 0x18701ada

.field private static final SMART_SUGGESTION_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.smartsuggestions"

.field public static final SUPPORTED_DONATED_APPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sSupportedPlatform:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "ContextAwarenessFeature"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CALogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.app.sbrowser"

    const-string v4, "com.samsung.android.messaging"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->SUPPORTED_DONATED_APPS:Ljava/util/ArrayList;

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->sSupportedPlatform:Ljava/lang/Boolean;

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->isSupportedPlatform()Z

    move-result v0

    return v0
.end method

.method private static getSmartSuggestionVersion()I
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.android.smartsuggestions"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static isContainUserContextBasedContentCapability()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->with(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/DeepSky;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->getSuggestionRequest()Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionRequest;->getCapabilities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/Capability;

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/Capability;->getCapability()Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->USER_CONTEXT_BASED_CONTENT:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isContextAwarenessEnabled()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->isContextAwarenessSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->isSupportedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v2, "settings_clipping_options"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static declared-synchronized isContextAwarenessSupported()Z
    .locals 5

    const-class v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature$ContextAwarenessSupportedCallable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature$ContextAwarenessSupportedCallable;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isContextAwarenessSupported# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :goto_1
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method private static isDeepSkySupported()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->isSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedDonationApp(Landroid/content/Intent;)Z
    .locals 3

    :try_start_0
    const-string v0, "source"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->SUPPORTED_DONATED_APPS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportedDonationApp# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedDonationApp(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "source"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->SUPPORTED_DONATED_APPS:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportedDonationApp# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public static isSupportedMode()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isPowerManageMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSupportedPlatform()Z
    .locals 4

    const-string v0, "isSupportedPlatform# "

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->sSupportedPlatform:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->isDeepSkySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->isContainUserContextBasedContentCapability()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    sput-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->sSupportedPlatform:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :goto_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->sSupportedPlatform:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->sSupportedPlatform:Ljava/lang/Boolean;

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->sSupportedPlatform:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static needDelayWhenRequestSubscribe()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->getSmartSuggestionVersion()I

    move-result v0

    const v1, 0x18701ada

    if-lt v0, v1, :cond_0

    const v1, 0x18701add

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
