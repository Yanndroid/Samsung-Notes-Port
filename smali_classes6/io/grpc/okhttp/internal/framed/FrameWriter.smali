.class public interface abstract Lio/grpc/okhttp/internal/framed/FrameWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract ackSettings(Lio/grpc/okhttp/internal/framed/Settings;)V
.end method

.method public abstract connectionPreface()V
.end method

.method public abstract data(ZILokio/Buffer;I)V
.end method

.method public abstract flush()V
.end method

.method public abstract goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V
.end method

.method public abstract headers(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract maxDataLength()I
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract pushPromise(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V
.end method

.method public abstract settings(Lio/grpc/okhttp/internal/framed/Settings;)V
.end method

.method public abstract synReply(ZILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract synStream(ZZIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract windowUpdate(IJ)V
.end method
