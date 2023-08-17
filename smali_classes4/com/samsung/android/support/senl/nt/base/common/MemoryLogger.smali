.class public Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$DebugMemInfo;,
        Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$DumpMemInfo;,
        Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$MemInfo;,
        Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[Memory]"

.field private static mDumpRunnable:Ljava/lang/Runnable; = null

.field private static volatile mDumpRunning:Z = false

.field private static mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static mHandler:Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;

.field private static mHasDumpPermission:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->executeDumpCmd()V

    return-void
.end method

.method public static bridge synthetic b(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->setDumpRunning(Z)V

    return-void
.end method

.method private static declared-synchronized createHandler()V
    .locals 3

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mHandler:Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mHandler:Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized dump()V
    .locals 3

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->hasDumpPermission()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$DebugMemInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$DebugMemInfo;-><init>(Lcom/samsung/android/support/senl/nt/base/common/a;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$DebugMemInfo;->print()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v2, "[Memory]"

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$1;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$1;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mDumpRunnable:Ljava/lang/Runnable;

    :cond_1
    sget-boolean v1, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mDumpRunning:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mDumpRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static dump(I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->stop()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->createHandler()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mHandler:Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->setRepeatState(I)V

    sget-object p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mHandler:Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static dump(II)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->stop()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->createHandler()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mHandler:Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->setCountState(II)V

    sget-object p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mHandler:Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static executeDumpCmd()V
    .locals 5

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpsys meminfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$DumpMemInfo;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$DumpMemInfo;-><init>()V

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$DumpMemInfo;->parseLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$DumpMemInfo;->print()V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$DumpMemInfo;->suspectActivityLeak()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Memory]"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mHandler:Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->setStopFlag()V

    :catch_1
    :cond_1
    :goto_2
    return-void
.end method

.method public static getTotalPss()I
    .locals 6

    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStats()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MemStats:   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v4, " / "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "summary.total-pss"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Memory]"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static hasDumpPermission()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mHasDumpPermission:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mHasDumpPermission:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const-string v1, "android.permission.DUMP"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mHasDumpPermission:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized setDumpRunning(Z)V
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mDumpRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static stop()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->mHandler:Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
