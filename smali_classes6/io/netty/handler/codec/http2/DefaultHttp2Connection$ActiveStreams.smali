.class final Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActiveStreams"
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http2/Http2Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/codec/http2/DefaultHttp2Connection$Event;",
            ">;"
        }
    .end annotation
.end field

.field private pendingIterations:I

.field private final streams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/handler/codec/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http2/Http2Connection$Listener;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingEvents:Ljava/util/Queue;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->streams:Ljava/util/Set;

    iput-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public activate(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;)V
    .locals 2

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->allowModifications()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->addToActiveStreams(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingEvents:Ljava/util/Queue;

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams$1;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams$1;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addToActiveStreams(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;)V
    .locals 4

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->streams:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;->createdBy()Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    move-result-object v0

    iget v1, v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->numActiveStreams:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->numActiveStreams:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2Connection$Listener;

    invoke-interface {v1, p1}, Lio/netty/handler/codec/http2/Http2Connection$Listener;->onStreamActive(Lio/netty/handler/codec/http2/Http2Stream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->access$400()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    const-string v3, "Caught Throwable from listener onStreamActive."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public allowModifications()Z
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingIterations:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public deactivate(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->allowModifications()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingEvents:Ljava/util/Queue;

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams$2;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams$2;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;Ljava/util/Iterator;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->removeFromActiveStreams(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;Ljava/util/Iterator;)V

    :goto_1
    return-void
.end method

.method public decrementPendingIterations()V
    .locals 3

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingIterations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingIterations:I

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->allowModifications()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$Event;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$Event;->process()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->access$400()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Caught Throwable while processing pending ActiveStreams$Event."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public forEachActiveStream(Lio/netty/handler/codec/http2/Http2StreamVisitor;)Lio/netty/handler/codec/http2/Http2Stream;
    .locals 3

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->incrementPendingIterations()V

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->streams:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {p1, v1}, Lio/netty/handler/codec/http2/Http2StreamVisitor;->visit(Lio/netty/handler/codec/http2/Http2Stream;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->decrementPendingIterations()V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->decrementPendingIterations()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->decrementPendingIterations()V

    throw p1
.end method

.method public incrementPendingIterations()V
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingIterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingIterations:I

    return-void
.end method

.method public removeFromActiveStreams(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->streams:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;->createdBy()Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    move-result-object v0

    iget v1, v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->numActiveStreams:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->numActiveStreams:I

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->notifyClosed(Lio/netty/handler/codec/http2/Http2Stream;)V

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->removeStream(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;Ljava/util/Iterator;)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->streams:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
