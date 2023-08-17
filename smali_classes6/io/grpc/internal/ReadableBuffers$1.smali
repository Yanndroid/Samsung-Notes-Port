.class Lio/grpc/internal/ReadableBuffers$1;
.super Lio/grpc/internal/ForwardingReadableBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ReadableBuffers;->ignoreClose(Lio/grpc/internal/ReadableBuffer;)Lio/grpc/internal/ReadableBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lio/grpc/internal/ReadableBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/internal/ForwardingReadableBuffer;-><init>(Lio/grpc/internal/ReadableBuffer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method
