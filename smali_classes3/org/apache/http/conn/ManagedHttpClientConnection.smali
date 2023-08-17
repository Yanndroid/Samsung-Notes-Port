.class public interface abstract Lorg/apache/http/conn/ManagedHttpClientConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpClientConnection;
.implements Lorg/apache/http/HttpInetConnection;


# virtual methods
.method public abstract bind(Ljava/net/Socket;)V
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getSSLSession()Ljavax/net/ssl/SSLSession;
.end method

.method public abstract getSocket()Ljava/net/Socket;
.end method
