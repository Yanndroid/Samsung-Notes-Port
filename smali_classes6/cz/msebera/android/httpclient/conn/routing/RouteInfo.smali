.class public interface abstract Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;,
        Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;
    }
.end annotation


# virtual methods
.method public abstract getHopCount()I
.end method

.method public abstract getHopTarget(I)Lcz/msebera/android/httpclient/HttpHost;
.end method

.method public abstract getLayerType()Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;
.end method

.method public abstract getLocalAddress()Ljava/net/InetAddress;
.end method

.method public abstract getProxyHost()Lcz/msebera/android/httpclient/HttpHost;
.end method

.method public abstract getTargetHost()Lcz/msebera/android/httpclient/HttpHost;
.end method

.method public abstract getTunnelType()Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;
.end method

.method public abstract isLayered()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isTunnelled()Z
.end method
