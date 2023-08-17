.class public interface abstract Lio/netty/handler/codec/http/multipart/HttpDataFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cleanAllHttpData()V
.end method

.method public abstract cleanAllHttpDatas()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract cleanRequestHttpData(Lio/netty/handler/codec/http/HttpRequest;)V
.end method

.method public abstract cleanRequestHttpDatas(Lio/netty/handler/codec/http/HttpRequest;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;
.end method

.method public abstract createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;J)Lio/netty/handler/codec/http/multipart/Attribute;
.end method

.method public abstract createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;
.end method

.method public abstract createFileUpload(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)Lio/netty/handler/codec/http/multipart/FileUpload;
.end method

.method public abstract removeHttpDataFromClean(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V
.end method

.method public abstract setMaxLimit(J)V
.end method
