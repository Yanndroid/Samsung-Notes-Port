.class public Lcom/microsoft/identity/common/java/logging/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;
    }
.end annotation


# static fields
.field private static final $LOCK:Ljava/lang/Object;

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final UNSET:Ljava/lang/String; = "UNSET"

.field private static sAllowPii:Z

.field private static final sLogExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sLogLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

.field private static final sLoggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/logging/ILoggerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoggersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static sPlatformString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lcom/microsoft/identity/common/java/logging/Logger;->$LOCK:Ljava/lang/Object;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/microsoft/identity/common/java/logging/Logger;->sLogExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    sput-object v1, Lcom/microsoft/identity/common/java/logging/Logger;->sLogLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    sput-boolean v0, Lcom/microsoft/identity/common/java/logging/Logger;->sAllowPii:Z

    const-string v0, ""

    sput-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sPlatformString:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sPlatformString:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/microsoft/identity/common/java/logging/Logger;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method public static synthetic access$300()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggers:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$400()Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sLogLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    return-object v0
.end method

.method public static synthetic access$500(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/ILoggerCallback;Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/microsoft/identity/common/java/logging/Logger;->logDiscardedLogIfApplicable(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/ILoggerCallback;Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Z)V

    return-void
.end method

.method public static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/microsoft/identity/common/java/logging/Logger;->sAllowPii:Z

    return v0
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static errorPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static errorPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "dateTimeStamp is marked non-null but is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "N/A"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    const-string v1, " "

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "- "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_2

    const-string p0, ""

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/microsoft/identity/common/java/util/ThrowableUtil;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getDiagnosticContextMetadata()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/microsoft/identity/common/java/logging/Logger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/IRequestContext;

    move-result-object v1

    const-string v2, "correlation_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getDiagnosticContextMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/microsoft/identity/common/java/logging/Logger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/IRequestContext;

    move-result-object v1

    const-string/jumbo v2, "thread_name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "UNSET"

    :cond_0
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "UNSET"

    :cond_1
    const-string v2, "%s: %s, %s: %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "thread_name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    const-string v4, "correlation_id"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    aput-object p0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getLogLevel()Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sLogLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    return-object v0
.end method

.method private static getUTCDateTimeAsString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static infoPII(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static infoPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static isAllowPii()Z
    .locals 1

    sget-boolean v0, Lcom/microsoft/identity/common/java/logging/Logger;->sAllowPii:Z

    return v0
.end method

.method private static log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 10
    .param p1    # Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "logLevel is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->getUTCDateTimeAsString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sLogExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/microsoft/identity/common/java/logging/Logger$1;

    move-object v1, v9

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p1

    move-object v7, p0

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/microsoft/identity/common/java/logging/Logger$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Z)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static logDiscardedLogIfApplicable(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/ILoggerCallback;Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Z)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "tag is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "logLevel is marked non-null but is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/microsoft/identity/common/java/logging/IDetailedLoggerCallback;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/microsoft/identity/common/java/logging/IDetailedLoggerCallback;

    invoke-interface {p1, p2, p3, p0, p4}, Lcom/microsoft/identity/common/java/logging/IDetailedLoggerCallback;->discardedLog(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized resetLogger()V
    .locals 3

    const-class v0, Lcom/microsoft/identity/common/java/logging/Logger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/microsoft/identity/common/java/logging/Logger;->sAllowPii:Z

    const-string v2, ""

    sput-object v2, Lcom/microsoft/identity/common/java/logging/Logger;->sPlatformString:Ljava/lang/String;

    sget-object v2, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    sput-object v2, Lcom/microsoft/identity/common/java/logging/Logger;->sLogLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    sget-object v2, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setAllowPii(Z)V
    .locals 0

    sput-boolean p0, Lcom/microsoft/identity/common/java/logging/Logger;->sAllowPii:Z

    return-void
.end method

.method public static setLogLevel(Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;)V
    .locals 0

    sput-object p0, Lcom/microsoft/identity/common/java/logging/Logger;->sLogLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    return-void
.end method

.method public static setLogger(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/ILoggerCallback;)Z
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "identifier is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggers:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v1

    :cond_0
    :try_start_1
    sget-object v2, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return p0

    :cond_1
    :try_start_2
    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/microsoft/identity/common/java/logging/Logger;->sLoggersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0
.end method

.method public static setPlatformString(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/logging/Logger;->$LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/microsoft/identity/common/java/logging/Logger;->sPlatformString:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static verbosePII(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static verbosePII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static warnPII(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static warnPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/logging/Logger;->getDiagnosticContextMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method
