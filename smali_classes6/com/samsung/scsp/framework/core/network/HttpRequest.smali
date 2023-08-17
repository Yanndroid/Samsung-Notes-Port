.class public interface abstract Lcom/samsung/scsp/framework/core/network/HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;
    }
.end annotation


# virtual methods
.method public abstract getBoundary()Ljava/lang/String;
.end method

.method public abstract getCharset()Ljava/lang/String;
.end method

.method public abstract getContent(I)Ljava/lang/Object;
.end method

.method public abstract getContentDisposition(I)Ljava/lang/String;
.end method

.method public abstract getContentType(I)Ljava/lang/String;
.end method

.method public abstract getHeaderCount()I
.end method

.method public abstract getHeaderKey(I)Ljava/lang/String;
.end method

.method public abstract getHeaderValue(I)Ljava/lang/String;
.end method

.method public abstract getLength()J
.end method

.method public abstract getMethod()Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNetworkStatusListener()Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;
.end method

.method public abstract getPartCount()I
.end method

.method public abstract getPayloadWriter(I)Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;
.end method

.method public abstract getProgressListener()Lcom/samsung/scsp/framework/core/listeners/ProgressListener;
.end method

.method public abstract getRange()J
.end method

.method public abstract getResponseListener()Lcom/samsung/scsp/framework/core/listeners/ResponseListener;
.end method

.method public abstract getSupportChunkedStreaming()Z
.end method

.method public abstract getTimeOut()I
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract setUrl(Ljava/lang/String;)V
.end method
