.class public interface abstract Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
.end method

.method public abstract createSocket()Ljava/net/Socket;
.end method

.method public abstract isSecure(Ljava/net/Socket;)Z
.end method
