.class public Lio/grpc/internal/ApplicationThreadDeframer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/Deframer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ApplicationThreadDeframer$CloseableInitializingMessageProducer;,
        Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;,
        Lio/grpc/internal/ApplicationThreadDeframer$TransportExecutor;
    }
.end annotation


# instance fields
.field private final appListener:Lio/grpc/internal/ApplicationThreadDeframerListener;

.field private final deframer:Lio/grpc/internal/MessageDeframer;

.field private final storedListener:Lio/grpc/internal/MessageDeframer$Listener;


# direct methods
.method public constructor <init>(Lio/grpc/internal/MessageDeframer$Listener;Lio/grpc/internal/ApplicationThreadDeframer$TransportExecutor;Lio/grpc/internal/MessageDeframer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/grpc/internal/SquelchLateMessagesAvailableDeframerListener;

    const-string v1, "listener"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/MessageDeframer$Listener;

    invoke-direct {v0, p1}, Lio/grpc/internal/SquelchLateMessagesAvailableDeframerListener;-><init>(Lio/grpc/internal/MessageDeframer$Listener;)V

    iput-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->storedListener:Lio/grpc/internal/MessageDeframer$Listener;

    new-instance p1, Lio/grpc/internal/ApplicationThreadDeframerListener;

    invoke-direct {p1, v0, p2}, Lio/grpc/internal/ApplicationThreadDeframerListener;-><init>(Lio/grpc/internal/MessageDeframer$Listener;Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;)V

    iput-object p1, p0, Lio/grpc/internal/ApplicationThreadDeframer;->appListener:Lio/grpc/internal/ApplicationThreadDeframerListener;

    invoke-virtual {p3, p1}, Lio/grpc/internal/MessageDeframer;->setListener(Lio/grpc/internal/MessageDeframer$Listener;)V

    iput-object p3, p0, Lio/grpc/internal/ApplicationThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    return-void
.end method

.method public static synthetic access$000(Lio/grpc/internal/ApplicationThreadDeframer;)Lio/grpc/internal/MessageDeframer;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    return-object p0
.end method

.method public static synthetic access$100(Lio/grpc/internal/ApplicationThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->appListener:Lio/grpc/internal/ApplicationThreadDeframerListener;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0}, Lio/grpc/internal/MessageDeframer;->stopDelivery()V

    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->storedListener:Lio/grpc/internal/MessageDeframer$Listener;

    new-instance v1, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;

    new-instance v2, Lio/grpc/internal/ApplicationThreadDeframer$5;

    invoke-direct {v2, p0}, Lio/grpc/internal/ApplicationThreadDeframer$5;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;Lio/grpc/internal/ApplicationThreadDeframer$1;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/MessageDeframer$Listener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    return-void
.end method

.method public closeWhenComplete()V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->storedListener:Lio/grpc/internal/MessageDeframer$Listener;

    new-instance v1, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;

    new-instance v2, Lio/grpc/internal/ApplicationThreadDeframer$4;

    invoke-direct {v2, p0}, Lio/grpc/internal/ApplicationThreadDeframer$4;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;Lio/grpc/internal/ApplicationThreadDeframer$1;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/MessageDeframer$Listener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    return-void
.end method

.method public deframe(Lio/grpc/internal/ReadableBuffer;)V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->storedListener:Lio/grpc/internal/MessageDeframer$Listener;

    new-instance v1, Lio/grpc/internal/ApplicationThreadDeframer$CloseableInitializingMessageProducer;

    new-instance v2, Lio/grpc/internal/ApplicationThreadDeframer$2;

    invoke-direct {v2, p0, p1}, Lio/grpc/internal/ApplicationThreadDeframer$2;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Lio/grpc/internal/ReadableBuffer;)V

    new-instance v3, Lio/grpc/internal/ApplicationThreadDeframer$3;

    invoke-direct {v3, p0, p1}, Lio/grpc/internal/ApplicationThreadDeframer$3;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Lio/grpc/internal/ReadableBuffer;)V

    invoke-direct {v1, p0, v2, v3}, Lio/grpc/internal/ApplicationThreadDeframer$CloseableInitializingMessageProducer;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;Ljava/io/Closeable;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/MessageDeframer$Listener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    return-void
.end method

.method public getAppListener()Lio/grpc/internal/MessageDeframer$Listener;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->appListener:Lio/grpc/internal/ApplicationThreadDeframerListener;

    return-object v0
.end method

.method public request(I)V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->storedListener:Lio/grpc/internal/MessageDeframer$Listener;

    new-instance v1, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;

    new-instance v2, Lio/grpc/internal/ApplicationThreadDeframer$1;

    invoke-direct {v2, p0, p1}, Lio/grpc/internal/ApplicationThreadDeframer$1;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;I)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;Lio/grpc/internal/ApplicationThreadDeframer$1;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/MessageDeframer$Listener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    return-void
.end method

.method public setDecompressor(Lio/grpc/Decompressor;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/MessageDeframer;->setDecompressor(Lio/grpc/Decompressor;)V

    return-void
.end method

.method public setFullStreamDecompressor(Lio/grpc/internal/GzipInflatingBuffer;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/MessageDeframer;->setFullStreamDecompressor(Lio/grpc/internal/GzipInflatingBuffer;)V

    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/MessageDeframer;->setMaxInboundMessageSize(I)V

    return-void
.end method
