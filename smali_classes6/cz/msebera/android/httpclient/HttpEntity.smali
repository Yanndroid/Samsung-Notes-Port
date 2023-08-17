.class public interface abstract Lcz/msebera/android/httpclient/HttpEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract consumeContent()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getContent()Ljava/io/InputStream;
.end method

.method public abstract getContentEncoding()Lcz/msebera/android/httpclient/Header;
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getContentType()Lcz/msebera/android/httpclient/Header;
.end method

.method public abstract isChunked()Z
.end method

.method public abstract isRepeatable()Z
.end method

.method public abstract isStreaming()Z
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
.end method
