.class public interface abstract Lcom/google/api/client/http/HttpContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/util/StreamingContent;


# virtual methods
.method public abstract getLength()J
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract retrySupported()Z
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
.end method
