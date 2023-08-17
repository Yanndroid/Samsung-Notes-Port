.class public interface abstract Lio/grpc/internal/MessageFramer$Sink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/MessageFramer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Sink"
.end annotation


# virtual methods
.method public abstract deliverFrame(Lio/grpc/internal/WritableBuffer;ZZI)V
    .param p1    # Lio/grpc/internal/WritableBuffer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
