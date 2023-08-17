.class public interface abstract Lio/netty/handler/codec/http/HttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http/HttpMessage;


# virtual methods
.method public abstract getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpResponse;
.end method

.method public abstract setStatus(Lio/netty/handler/codec/http/HttpResponseStatus;)Lio/netty/handler/codec/http/HttpResponse;
.end method

.method public abstract status()Lio/netty/handler/codec/http/HttpResponseStatus;
.end method
