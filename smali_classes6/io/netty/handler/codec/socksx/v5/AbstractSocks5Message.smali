.class public abstract Lio/netty/handler/codec/socksx/v5/AbstractSocks5Message;
.super Lio/netty/handler/codec/socksx/AbstractSocksMessage;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/socksx/v5/Socks5Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/socksx/AbstractSocksMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final version()Lio/netty/handler/codec/socksx/SocksVersion;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/socksx/SocksVersion;->SOCKS5:Lio/netty/handler/codec/socksx/SocksVersion;

    return-object v0
.end method
