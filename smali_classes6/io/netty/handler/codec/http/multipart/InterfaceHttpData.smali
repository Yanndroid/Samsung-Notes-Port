.class public interface abstract Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lio/netty/util/ReferenceCounted;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
        ">;",
        "Lio/netty/util/ReferenceCounted;"
    }
.end annotation


# virtual methods
.method public abstract getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract retain()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
.end method

.method public abstract retain(I)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
.end method

.method public abstract touch()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
.end method

.method public abstract touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
.end method
