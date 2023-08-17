.class public interface abstract Lio/netty/handler/codec/socksx/v5/Socks5AddressEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lio/netty/handler/codec/socksx/v5/Socks5AddressEncoder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/socksx/v5/Socks5AddressEncoder$1;

    invoke-direct {v0}, Lio/netty/handler/codec/socksx/v5/Socks5AddressEncoder$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/socksx/v5/Socks5AddressEncoder;->DEFAULT:Lio/netty/handler/codec/socksx/v5/Socks5AddressEncoder;

    return-void
.end method


# virtual methods
.method public abstract encodeAddress(Lio/netty/handler/codec/socksx/v5/Socks5AddressType;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V
.end method
