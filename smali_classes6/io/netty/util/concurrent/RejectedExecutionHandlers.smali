.class public final Lio/netty/util/concurrent/RejectedExecutionHandlers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final REJECT:Lio/netty/util/concurrent/RejectedExecutionHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/util/concurrent/RejectedExecutionHandlers$1;

    invoke-direct {v0}, Lio/netty/util/concurrent/RejectedExecutionHandlers$1;-><init>()V

    sput-object v0, Lio/netty/util/concurrent/RejectedExecutionHandlers;->REJECT:Lio/netty/util/concurrent/RejectedExecutionHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backoff(IJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/RejectedExecutionHandler;
    .locals 1

    const-string v0, "retries"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    new-instance p3, Lio/netty/util/concurrent/RejectedExecutionHandlers$2;

    invoke-direct {p3, p0, p1, p2}, Lio/netty/util/concurrent/RejectedExecutionHandlers$2;-><init>(IJ)V

    return-object p3
.end method

.method public static reject()Lio/netty/util/concurrent/RejectedExecutionHandler;
    .locals 1

    sget-object v0, Lio/netty/util/concurrent/RejectedExecutionHandlers;->REJECT:Lio/netty/util/concurrent/RejectedExecutionHandler;

    return-object v0
.end method
