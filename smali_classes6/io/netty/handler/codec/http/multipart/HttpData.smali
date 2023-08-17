.class public interface abstract Lio/netty/handler/codec/http/multipart/HttpData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
.implements Lio/netty/buffer/ByteBufHolder;


# virtual methods
.method public abstract addContent(Lio/netty/buffer/ByteBuf;Z)V
.end method

.method public abstract checkSize(J)V
.end method

.method public abstract copy()Lio/netty/handler/codec/http/multipart/HttpData;
.end method

.method public abstract definedLength()J
.end method

.method public abstract delete()V
.end method

.method public abstract duplicate()Lio/netty/handler/codec/http/multipart/HttpData;
.end method

.method public abstract get()[B
.end method

.method public abstract getByteBuf()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract getCharset()Ljava/nio/charset/Charset;
.end method

.method public abstract getChunk(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract getFile()Ljava/io/File;
.end method

.method public abstract getMaxSize()J
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public abstract getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract isCompleted()Z
.end method

.method public abstract isInMemory()Z
.end method

.method public abstract length()J
.end method

.method public abstract renameTo(Ljava/io/File;)Z
.end method

.method public abstract replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/HttpData;
.end method

.method public abstract retain()Lio/netty/handler/codec/http/multipart/HttpData;
.end method

.method public abstract retain(I)Lio/netty/handler/codec/http/multipart/HttpData;
.end method

.method public abstract retainedDuplicate()Lio/netty/handler/codec/http/multipart/HttpData;
.end method

.method public abstract setCharset(Ljava/nio/charset/Charset;)V
.end method

.method public abstract setContent(Lio/netty/buffer/ByteBuf;)V
.end method

.method public abstract setContent(Ljava/io/File;)V
.end method

.method public abstract setContent(Ljava/io/InputStream;)V
.end method

.method public abstract setMaxSize(J)V
.end method

.method public abstract touch()Lio/netty/handler/codec/http/multipart/HttpData;
.end method

.method public abstract touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;
.end method
