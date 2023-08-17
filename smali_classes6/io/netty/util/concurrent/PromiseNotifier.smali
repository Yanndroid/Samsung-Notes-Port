.class public Lio/netty/util/concurrent/PromiseNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "F::",
        "Lio/netty/util/concurrent/Future<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/GenericFutureListener<",
        "TF;>;"
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final logNotifyFailure:Z

.field private final promises:[Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/util/concurrent/Promise<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/util/concurrent/PromiseNotifier;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/concurrent/PromiseNotifier;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public varargs constructor <init>(Z[Lio/netty/util/concurrent/Promise;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lio/netty/util/concurrent/Promise<",
            "-TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "promises"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    const-string v3, "promise"

    invoke-static {v2, v3}, Lio/netty/util/internal/ObjectUtil;->checkNotNullWithIAE(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, [Lio/netty/util/concurrent/Promise;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lio/netty/util/concurrent/Promise;

    iput-object p2, p0, Lio/netty/util/concurrent/PromiseNotifier;->promises:[Lio/netty/util/concurrent/Promise;

    iput-boolean p1, p0, Lio/netty/util/concurrent/PromiseNotifier;->logNotifyFailure:Z

    return-void
.end method

.method public varargs constructor <init>([Lio/netty/util/concurrent/Promise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/Promise<",
            "-TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lio/netty/util/concurrent/PromiseNotifier;-><init>(Z[Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method public static cascade(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "F::",
            "Lio/netty/util/concurrent/Future<",
            "TV;>;>(TF;",
            "Lio/netty/util/concurrent/Promise<",
            "-TV;>;)TF;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lio/netty/util/concurrent/PromiseNotifier;->cascade(ZLio/netty/util/concurrent/Future;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static cascade(ZLio/netty/util/concurrent/Future;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "F::",
            "Lio/netty/util/concurrent/Future<",
            "TV;>;>(ZTF;",
            "Lio/netty/util/concurrent/Promise<",
            "-TV;>;)TF;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/concurrent/PromiseNotifier$1;

    invoke-direct {v0, p1}, Lio/netty/util/concurrent/PromiseNotifier$1;-><init>(Lio/netty/util/concurrent/Future;)V

    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    new-instance v0, Lio/netty/util/concurrent/PromiseNotifier$2;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/netty/util/concurrent/Promise;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {v0, p0, v1, p2, p1}, Lio/netty/util/concurrent/PromiseNotifier$2;-><init>(Z[Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Future;)V

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-object p1
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/netty/util/concurrent/PromiseNotifier;->logNotifyFailure:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/util/concurrent/PromiseNotifier;->logger:Lio/netty/util/internal/logging/InternalLogger;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lio/netty/util/concurrent/PromiseNotifier;->promises:[Lio/netty/util/concurrent/Promise;

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    invoke-static {v4, p1, v0}, Lio/netty/util/internal/PromiseNotificationUtil;->trySuccess(Lio/netty/util/concurrent/Promise;Ljava/lang/Object;Lio/netty/util/internal/logging/InternalLogger;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lio/netty/util/concurrent/PromiseNotifier;->promises:[Lio/netty/util/concurrent/Promise;

    array-length v1, p1

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    invoke-static {v3, v0}, Lio/netty/util/internal/PromiseNotificationUtil;->tryCancel(Lio/netty/util/concurrent/Promise;Lio/netty/util/internal/logging/InternalLogger;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    iget-object v1, p0, Lio/netty/util/concurrent/PromiseNotifier;->promises:[Lio/netty/util/concurrent/Promise;

    array-length v3, v1

    :goto_3
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    invoke-static {v4, p1, v0}, Lio/netty/util/internal/PromiseNotificationUtil;->tryFailure(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;Lio/netty/util/internal/logging/InternalLogger;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method
