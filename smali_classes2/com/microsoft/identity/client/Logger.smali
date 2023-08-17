.class public final Lcom/microsoft/identity/client/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/Logger$LogLevel;
    }
.end annotation


# static fields
.field private static final sINSTANCE:Lcom/microsoft/identity/client/Logger;


# instance fields
.field private mExternalLogger:Lcom/microsoft/identity/client/ILoggerCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/microsoft/identity/client/Logger;

    invoke-direct {v0}, Lcom/microsoft/identity/client/Logger;-><init>()V

    sput-object v0, Lcom/microsoft/identity/client/Logger;->sINSTANCE:Lcom/microsoft/identity/client/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/client/Logger;)Lcom/microsoft/identity/client/ILoggerCallback;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/client/Logger;->mExternalLogger:Lcom/microsoft/identity/client/ILoggerCallback;

    return-object p0
.end method

.method public static getInstance()Lcom/microsoft/identity/client/Logger;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/client/Logger;->sINSTANCE:Lcom/microsoft/identity/client/Logger;

    return-object v0
.end method


# virtual methods
.method public setEnableLogcatLog(Z)V
    .locals 0

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->setAllowLogcat(Z)V

    return-void
.end method

.method public setEnablePII(Z)V
    .locals 0

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->setAllowPii(Z)V

    return-void
.end method

.method public declared-synchronized setExternalLogger(Lcom/microsoft/identity/client/ILoggerCallback;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/Logger;->mExternalLogger:Lcom/microsoft/identity/client/ILoggerCallback;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    new-instance v1, Lcom/microsoft/identity/client/Logger$1;

    invoke-direct {v1, p0}, Lcom/microsoft/identity/client/Logger$1;-><init>(Lcom/microsoft/identity/client/Logger;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->setExternalLogger(Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;)V

    iput-object p1, p0, Lcom/microsoft/identity/client/Logger;->mExternalLogger:Lcom/microsoft/identity/client/ILoggerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "External logger is already set, cannot be set again."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLogLevel(Lcom/microsoft/identity/client/Logger$LogLevel;)V
    .locals 2

    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/client/Logger$2;->$SwitchMap$com$microsoft$identity$client$Logger$LogLevel:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown logLevel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->setLogLevel(Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;)V

    return-void
.end method
