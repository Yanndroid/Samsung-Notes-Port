.class public interface abstract Lio/grpc/internal/ClientStreamListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/StreamListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ClientStreamListener$RpcProgress;
    }
.end annotation


# virtual methods
.method public abstract closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
.end method

.method public abstract headersRead(Lio/grpc/Metadata;)V
.end method
