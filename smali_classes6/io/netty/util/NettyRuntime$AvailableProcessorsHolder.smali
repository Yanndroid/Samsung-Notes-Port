.class Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/NettyRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvailableProcessorsHolder"
.end annotation


# instance fields
.field private availableProcessors:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized availableProcessors()I
    .locals 2
    .annotation build Lio/netty/util/SuppressForbidden;
        reason = "to obtain default number of available processors"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->availableProcessors:I

    if-nez v0, :cond_0

    const-string v0, "io.netty.availableProcessors"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->setAvailableProcessors(I)V

    :cond_0
    iget v0, p0, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->availableProcessors:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAvailableProcessors(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "availableProcessors"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    iget v0, p0, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->availableProcessors:I

    if-nez v0, :cond_0

    iput p1, p0, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->availableProcessors:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "availableProcessors is already set to [%d], rejecting [%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
