.class public interface abstract Lio/grpc/internal/MessageDeframer$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/MessageDeframer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract bytesRead(I)V
.end method

.method public abstract deframeFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract deframerClosed(Z)V
.end method

.method public abstract messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
.end method
