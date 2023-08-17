.class abstract Lio/grpc/internal/ForwardingDeframerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/MessageDeframer$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bytesRead(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingDeframerListener;->delegate()Lio/grpc/internal/MessageDeframer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/MessageDeframer$Listener;->bytesRead(I)V

    return-void
.end method

.method public deframeFailed(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingDeframerListener;->delegate()Lio/grpc/internal/MessageDeframer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/MessageDeframer$Listener;->deframeFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public deframerClosed(Z)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingDeframerListener;->delegate()Lio/grpc/internal/MessageDeframer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/MessageDeframer$Listener;->deframerClosed(Z)V

    return-void
.end method

.method public abstract delegate()Lio/grpc/internal/MessageDeframer$Listener;
.end method

.method public messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingDeframerListener;->delegate()Lio/grpc/internal/MessageDeframer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/MessageDeframer$Listener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    return-void
.end method
