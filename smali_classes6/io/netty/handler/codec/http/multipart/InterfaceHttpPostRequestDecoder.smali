.class public interface abstract Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cleanFiles()V
.end method

.method public abstract currentPartialHttpData()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
.end method

.method public abstract destroy()V
.end method

.method public abstract getBodyHttpData(Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
.end method

.method public abstract getBodyHttpDatas()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBodyHttpDatas(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDiscardThreshold()I
.end method

.method public abstract hasNext()Z
.end method

.method public abstract isMultipart()Z
.end method

.method public abstract next()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
.end method

.method public abstract offer(Lio/netty/handler/codec/http/HttpContent;)Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;
.end method

.method public abstract removeHttpDataFromClean(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V
.end method

.method public abstract setDiscardThreshold(I)V
.end method
