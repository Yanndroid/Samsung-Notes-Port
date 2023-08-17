.class final Lio/netty/util/internal/PlatformDependent$Mpsc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/PlatformDependent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mpsc"
.end annotation


# static fields
.field private static final USE_MPSC_CHUNKED_ARRAY_QUEUE:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/util/internal/PlatformDependent$Mpsc$1;

    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent$Mpsc$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->access$200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    const-string v1, "org.jctools-core.MpscChunkedArrayQueue: unavailable"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->access$200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    const-string v1, "org.jctools-core.MpscChunkedArrayQueue: available"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lio/netty/util/internal/PlatformDependent$Mpsc;->USE_MPSC_CHUNKED_ARRAY_QUEUE:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newChunkedMpscQueue(II)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    sget-boolean v0, Lio/netty/util/internal/PlatformDependent$Mpsc;->USE_MPSC_CHUNKED_ARRAY_QUEUE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueue;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueue;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;-><init>(II)V

    :goto_0
    return-object v0
.end method

.method public static newMpscQueue()Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    sget-boolean v0, Lio/netty/util/internal/PlatformDependent$Mpsc;->USE_MPSC_CHUNKED_ARRAY_QUEUE:Z

    const/16 v1, 0x400

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;

    invoke-direct {v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscUnboundedAtomicArrayQueue;

    invoke-direct {v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscUnboundedAtomicArrayQueue;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public static newMpscQueue(I)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v0, 0x800

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x400

    invoke-static {v0, p0}, Lio/netty/util/internal/PlatformDependent$Mpsc;->newChunkedMpscQueue(II)Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method
