.class public Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;
    }
.end annotation


# static fields
.field private static final DMA_PKG_NAME:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final MIN_SDK:I = 0x18

.field public static final NETWORK_ANY:Ljava/lang/String; = "network_any"

.field private static final NO_TAGS:I = 0x0

.field private static configurationType:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE; = null

.field private static isEnableUncaughtExceptionLogging:Z = false

.field private static mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

.field private static ops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/diagmonagent/dma/aperf/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static originUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static srObj:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;->NONE:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->configurationType:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->ops:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customEventReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z
    .locals 2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-ge p0, v1, :cond_0

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "SDK is required at least version 24"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "Request CustomEventReport"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez v1, :cond_1

    const-string p1, "You first have to create DiagMonConfiguration"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "CustomEventReport is aborted"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->initLogger(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getConfigurationType()Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;

    move-result-object p0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;->DEFAULT:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;

    if-ne p0, v1, :cond_2

    const-string p0, "You can\'t use customEventReport with enableDefaultConfiguration"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->sendEventReport(Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static disableANRLogging()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "SDK is required at least version 24"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "ANR Logging can\'t be disabled because Configuration is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->underPalette()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "This API isn\'t supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->initLogger(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->getInstance()Lcom/sec/android/diagmonagent/common/util/executor/Executor;

    move-result-object v0

    new-instance v1, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/ANRExecutor;

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v3}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/ANRExecutor;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/sec/android/diagmonagent/common/util/executor/Executor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    return-void
.end method

.method public static disableUncaughtExceptionLogging()V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "SDK is required at least version 24"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->originUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableUncaughtExceptionLogging:Z

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public static enableANRLogging()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "SDK is required at least version 24"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "ANR Logging can\'t be enabled because Configuration is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->underPalette()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "This API isn\'t supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->initLogger(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->getInstance()Lcom/sec/android/diagmonagent/common/util/executor/Executor;

    move-result-object v0

    new-instance v1, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/ANRExecutor;

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v3}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/ANRExecutor;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/sec/android/diagmonagent/common/util/executor/Executor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    return-void
.end method

.method public static enableUncaughtExceptionLogging(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "SDK is required at least version 24"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez v0, :cond_1

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "UncaughtExceptionLogging can\'t be enabled because Configuration is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->initLogger(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getConfigurationType()Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;

    move-result-object v0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;->NONE:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;

    if-ne v0, v1, :cond_2

    const-string p0, "You first have to call configuration method"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return-void

    :cond_2
    sget-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableUncaughtExceptionLogging:Z

    if-eqz v0, :cond_3

    const-string p0, "UncaughtExceptionLogging is already enabled"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableUncaughtExceptionLogging:Z

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->originUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->originUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to enableUncaughtExceptionLogging"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static generateNewOperation(Ljava/lang/String;)Lcom/sec/android/diagmonagent/dma/aperf/Operation;
    .locals 1

    new-instance v0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;

    invoke-direct {v0, p0}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static generateNewSubOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;
    .locals 1

    new-instance v0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getConfigurationType()Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;
    .locals 1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->configurationType:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;

    return-object v0
.end method

.method private static getDMAVersion(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.sec.android.diagmonagent"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "DMA Client is not exist"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    return v0
.end method

.method public static getDeviceId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "result"

    const-string v1, "request_deviceid"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, ""

    const/16 v4, 0x18

    if-ge v2, v4, :cond_0

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "SDK is required at least version 24"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v4}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->initLogger(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "serviceId"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1, v1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "Can\'t find deviceId from DMA"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    return-object v3

    :cond_2
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->printResultfromDMA(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "It is not supported because DiagMonAgent is an old version"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    return-object v3
.end method

.method private static makeSRObj(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceVersion"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getAgreeAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceAgreeType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getTrackingId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackingId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkVersion"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdkType"

    const-string v2, "S"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkgName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceNetworkMode()Z

    move-result p0

    const-string v1, "wifiOnly"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "generated SR object"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    return-object v0
.end method

.method private static registerService()V
    .locals 5

    :try_start_0
    const-class v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->makeSRObj(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Landroid/os/Bundle;

    move-result-object v1

    sput-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    invoke-static {}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->getInstance()Lcom/sec/android/diagmonagent/common/util/executor/Executor;

    move-result-object v1

    new-instance v2, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/ServiceRegistrationExecutor;

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    sget-object v4, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/ServiceRegistrationExecutor;-><init>(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/sec/android/diagmonagent/common/util/executor/Executor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to setConfiguration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static sendCustomAgreementWithdrawal(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "SDK is required at least version 24"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez v0, :cond_1

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "Congifuration shouldn\'t be null to send withdrawal"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->initLogger(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :try_start_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "Request agreement withdrawal to DiagmonAgent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.diagmonagent.terms.CUSTOM_AGREEMENT_WITHDRAWAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.diagmonagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "serviceId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string p0, "It is not supported because DiagMonAgent is an old version"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static sendEventReport(Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->getInstance()Lcom/sec/android/diagmonagent/common/util/executor/Executor;

    move-result-object v0

    new-instance v1, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/EventReportExecutor;

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3, p0}, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/EventReportExecutor;-><init>(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Landroid/os/Bundle;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)V

    invoke-interface {v0, v1}, Lcom/sec/android/diagmonagent/common/util/executor/Executor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    return-void
.end method

.method public static sendUncaughtExceptionEvent(Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->registerService()V

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->sendEventReport(Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)V

    return-void
.end method

.method public static setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "SDK is required at least version 24"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "DiagMonConfiguration is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getDMAVersion(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "It is not supported : NO_DMA"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->initLogger(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getConfigurationType()Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;

    move-result-object v0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;->DEFAULT:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;

    if-ne v0, v1, :cond_3

    const-string p0, "You can\'t use setConfiguration with enableDefaultConfiguration"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return-void

    :cond_3
    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;->CUSTOM:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->setConfigurationType(Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;)V

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->registerService()V

    return-void
.end method

.method private static setConfigurationType(Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;)V
    .locals 1

    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->configurationType:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setConfiguration type : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->configurationType:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    return-void
.end method

.method public static setDefaultConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "SDK is required at least version 24"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->initLogger(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getConfigurationType()Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;

    move-result-object v0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;->CUSTOM:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;

    if-ne v0, v1, :cond_1

    const-string p0, "setDefaultConfiguration can\'t be used because CustomLogging is using"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-eqz v0, :cond_2

    const-string p0, "setDefaultConfiguration is already set"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getDMAVersion(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "It is not supported : NO_DMA"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-direct {v0, p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setServiceId(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object p0

    const-string p1, "D"

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setAgree(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object p0

    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;->DEFAULT:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->setConfigurationType(Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$CONFIGURATION_TYPE;)V

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->registerService()V

    return-void
.end method

.method public static declared-synchronized startOperation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez v1, :cond_0

    const-string p0, "You can\'t use this API because you don\'t have any Configuration"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->ops:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->ops:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfUtil;->scalingOperation(Ljava/util/ArrayList;)V

    :goto_0
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->ops:Ljava/util/ArrayList;

    invoke-static {v1, v2, p0}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfValidation;->checkStartOpPreCondition(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "Not ready to generate Operation"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->generateNewOperation(Ljava/lang/String;)Lcom/sec/android/diagmonagent/dma/aperf/Operation;

    move-result-object p0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->ops:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpId()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized startSubOperation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->ops:Ljava/util/ArrayList;

    invoke-static {v1, p0, p1}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfValidation;->checkStartSubOpPreCondition(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfUtil;->generateUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->generateNewSubOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;

    move-result-object p1

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->ops:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfUtil;->getTheOperation(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sec/android/diagmonagent/dma/aperf/Operation;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "It Couldn\'t find operation that you made."

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->addSubOperation(Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start subOperation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->getSubOpName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->getSubOpId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") / operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->getSubOpId()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized stopOperation(Ljava/lang/String;)Z
    .locals 7

    const-class v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    monitor-enter v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-array v6, v1, [Lcom/sec/android/diagmonagent/dma/aperf/Tag;

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->stopOperation(Ljava/lang/String;JJ[Lcom/sec/android/diagmonagent/dma/aperf/Tag;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs declared-synchronized stopOperation(Ljava/lang/String;JJ[Lcom/sec/android/diagmonagent/dma/aperf/Tag;)Z
    .locals 8

    const-class v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try stop operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "You can\'t use this API because you don\'t have any Configuration"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v3

    :cond_0
    :try_start_1
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->ops:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    const-string v2, "It doesn\'t have any operations, please check it again."

    invoke-static {v2}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfUtil;->scalingOperation(Ljava/util/ArrayList;)V

    :goto_0
    array-length v2, p5

    if-lez v2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-direct {v1, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2
    invoke-static {p0, v1}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfValidation;->checkStopOpPreCondition(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p5

    if-eqz p5, :cond_3

    const-string p0, "It\'s not able to use stopOperation API."

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v3

    :cond_3
    :try_start_2
    sget-object p5, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->ops:Ljava/util/ArrayList;

    invoke-static {p5, p0}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfUtil;->getTheOperation(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sec/android/diagmonagent/dma/aperf/Operation;

    move-result-object p5

    if-nez p5, :cond_4

    const-string p0, "It Couldn\'t find operation that you made."

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v3

    :cond_4
    :try_start_3
    invoke-virtual {p5}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpDataSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_5

    invoke-virtual {p5, p1, p2}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->setOpDataSize(J)V

    :cond_5
    invoke-virtual {p5}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpItemCount()J

    move-result-wide p1

    cmp-long p1, p1, v6

    if-nez p1, :cond_6

    invoke-virtual {p5, p3, p4}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->setOpItemCount(J)V

    :cond_6
    invoke-virtual {p5}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->calculateStopOpTime()V

    invoke-virtual {p5}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getSubOps()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p5}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getSubOps()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    const-string p0, "There are unfinished sub operations. Remove the operation."

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->ops:Ljava/util/ArrayList;

    invoke-virtual {p0, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return v3

    :cond_7
    :try_start_4
    new-instance p1, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;

    const-string p2, "dummy"

    const-string p3, "00000000-0000-0000-0000-000000000000"

    invoke-direct {p1, p0, p2, p3}, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpItemCount()J

    move-result-wide p2

    invoke-virtual {p5}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpDataSize()J

    move-result-wide v2

    invoke-virtual {p1, p2, p3, v2, v3}, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->setSubOpCountSize(JJ)V

    invoke-virtual {p5}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getSubOpTotalElapsedTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->setSubOpElapsedTime(J)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5, p0}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->setSubOps(Ljava/util/ArrayList;)V

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Stop operation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    if-eqz v1, :cond_9

    invoke-virtual {p5, v1}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->addTags(Ljava/util/ArrayList;)V

    :cond_9
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->ops:Ljava/util/ArrayList;

    invoke-virtual {p0, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->getInstance()Lcom/sec/android/diagmonagent/common/util/executor/Executor;

    move-result-object p0

    new-instance p1, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;

    sget-object p2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-direct {p1, p2, p5}, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;-><init>(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Lcom/sec/android/diagmonagent/dma/aperf/Operation;)V

    invoke-interface {p0, p1}, Lcom/sec/android/diagmonagent/common/util/executor/Executor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized stopSubOperation(Ljava/lang/String;)Z
    .locals 3

    const-class v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {p0, v1, v2, v1, v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->stopSubOperation(Ljava/lang/String;JJ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized stopSubOperation(Ljava/lang/String;JJ)Z
    .locals 4

    const-class v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try stop subOperation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->ops:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfValidation;->checkStopSubOpPreCondition(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->ops:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfUtil;->whoHasTheSubOpId(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sec/android/diagmonagent/dma/aperf/Operation;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "It couldn\'t find The operation that has subOperation ID."

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v2

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getSubOps()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfUtil;->getTheSubOperation(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "It Couldn\'t find subOperation that you made."

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v2

    :cond_2
    :try_start_3
    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->setSubOpCountSize(JJ)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->calculateOpElapsedTime()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Stop subOperation: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->getSubOpName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->getSubOpId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpItemCount()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->getSubOpItemCount()J

    move-result-wide p3

    add-long/2addr p1, p3

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->setOpItemCount(J)V

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpDataSize()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->getSubOpDataSize()J

    move-result-wide p3

    add-long/2addr p1, p3

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->setOpDataSize(J)V

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getSubOpTotalElapsedTime()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->getSubOpElapsedTime()J

    move-result-wide p3

    add-long/2addr p1, p3

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->setSubOpTotalElapsedTime(J)V

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getSubOpTotalCount()J

    move-result-wide p1

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->setSubOpTotalCount(J)V

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getSubOps()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public isEnableUncaughtExceptionLogging()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "SDK is required at least version 24"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableUncaughtExceptionLogging:Z

    return v0
.end method
