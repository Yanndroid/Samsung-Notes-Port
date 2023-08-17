.class final Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$GenericEventExecutorChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/EventExecutorChooserFactory$EventExecutorChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenericEventExecutorChooser"
.end annotation


# instance fields
.field private final executors:[Lio/netty/util/concurrent/EventExecutor;

.field private final idx:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>([Lio/netty/util/concurrent/EventExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$GenericEventExecutorChooser;->idx:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$GenericEventExecutorChooser;->executors:[Lio/netty/util/concurrent/EventExecutor;

    return-void
.end method


# virtual methods
.method public next()Lio/netty/util/concurrent/EventExecutor;
    .locals 5

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$GenericEventExecutorChooser;->executors:[Lio/netty/util/concurrent/EventExecutor;

    iget-object v1, p0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$GenericEventExecutorChooser;->idx:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    iget-object v3, p0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$GenericEventExecutorChooser;->executors:[Lio/netty/util/concurrent/EventExecutor;

    array-length v3, v3

    int-to-long v3, v3

    rem-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    long-to-int v1, v1

    aget-object v0, v0, v1

    return-object v0
.end method
