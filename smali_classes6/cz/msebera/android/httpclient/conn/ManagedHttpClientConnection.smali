.class public interface abstract Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpClientConnection;
.implements Lcz/msebera/android/httpclient/HttpInetConnection;


# virtual methods
.method public abstract bind(Ljava/net/Socket;)V
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getSSLSession()Ljavax/net/ssl/SSLSession;
.end method

.method public abstract getSocket()Ljava/net/Socket;
.end method
