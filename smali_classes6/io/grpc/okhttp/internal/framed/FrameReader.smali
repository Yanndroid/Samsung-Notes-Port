.class public interface abstract Lio/grpc/okhttp/internal/framed/FrameReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
    }
.end annotation


# virtual methods
.method public abstract nextFrame(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;)Z
.end method

.method public abstract readConnectionPreface()V
.end method
