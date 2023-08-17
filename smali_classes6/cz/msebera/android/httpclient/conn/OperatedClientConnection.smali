.class public interface abstract Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpClientConnection;
.implements Lcz/msebera/android/httpclient/HttpInetConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getSocket()Ljava/net/Socket;
.end method

.method public abstract getTargetHost()Lcz/msebera/android/httpclient/HttpHost;
.end method

.method public abstract isSecure()Z
.end method

.method public abstract openCompleted(ZLcz/msebera/android/httpclient/params/HttpParams;)V
.end method

.method public abstract opening(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;)V
.end method

.method public abstract update(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V
.end method
