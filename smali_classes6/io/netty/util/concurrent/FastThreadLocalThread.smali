.class public Lio/netty/util/concurrent/FastThreadLocalThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final cleanupFastThreadLocals:Z

.field private threadLocalMap:Lio/netty/util/internal/InternalThreadLocalMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/concurrent/FastThreadLocalThread;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lio/netty/util/concurrent/FastThreadLocalRunnable;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lio/netty/util/concurrent/FastThreadLocalRunnable;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p2}, Lio/netty/util/concurrent/FastThreadLocalRunnable;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lio/netty/util/concurrent/FastThreadLocalRunnable;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 6

    invoke-static {p2}, Lio/netty/util/concurrent/FastThreadLocalRunnable;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    return-void
.end method

.method public static willCleanupFastThreadLocals(Ljava/lang/Thread;)Z
    .locals 1

    instance-of v0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;

    if-eqz v0, :cond_0

    check-cast p0, Lio/netty/util/concurrent/FastThreadLocalThread;

    invoke-virtual {p0}, Lio/netty/util/concurrent/FastThreadLocalThread;->willCleanupFastThreadLocals()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final setThreadLocalMap(Lio/netty/util/internal/InternalThreadLocalMap;)V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p0, v0, :cond_0

    sget-object v0, Lio/netty/util/concurrent/FastThreadLocalThread;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "It\'s not thread-safe to set \'threadLocalMap\' which doesn\'t belong to the caller thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/Throwable;)V

    :cond_0
    iput-object p1, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->threadLocalMap:Lio/netty/util/internal/InternalThreadLocalMap;

    return-void
.end method

.method public final threadLocalMap()Lio/netty/util/internal/InternalThreadLocalMap;
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p0, v0, :cond_0

    sget-object v0, Lio/netty/util/concurrent/FastThreadLocalThread;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "It\'s not thread-safe to get \'threadLocalMap\' which doesn\'t belong to the caller thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->threadLocalMap:Lio/netty/util/internal/InternalThreadLocalMap;

    return-object v0
.end method

.method public willCleanupFastThreadLocals()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    return v0
.end method
