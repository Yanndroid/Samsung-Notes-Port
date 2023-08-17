.class public interface abstract Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
.end method

.method public abstract createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
.end method

.method public abstract isSecure(Ljava/net/Socket;)Z
.end method
