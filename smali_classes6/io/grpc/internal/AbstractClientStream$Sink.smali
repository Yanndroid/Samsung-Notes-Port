.class public interface abstract Lio/grpc/internal/AbstractClientStream$Sink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AbstractClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Sink"
.end annotation


# virtual methods
.method public abstract cancel(Lio/grpc/Status;)V
.end method

.method public abstract writeFrame(Lio/grpc/internal/WritableBuffer;ZZI)V
    .param p1    # Lio/grpc/internal/WritableBuffer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract writeHeaders(Lio/grpc/Metadata;[B)V
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
