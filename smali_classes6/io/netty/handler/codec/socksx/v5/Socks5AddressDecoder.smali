.class public interface abstract Lio/netty/handler/codec/socksx/v5/Socks5AddressDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lio/netty/handler/codec/socksx/v5/Socks5AddressDecoder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/socksx/v5/Socks5AddressDecoder$1;

    invoke-direct {v0}, Lio/netty/handler/codec/socksx/v5/Socks5AddressDecoder$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/socksx/v5/Socks5AddressDecoder;->DEFAULT:Lio/netty/handler/codec/socksx/v5/Socks5AddressDecoder;

    return-void
.end method


# virtual methods
.method public abstract decodeAddress(Lio/netty/handler/codec/socksx/v5/Socks5AddressType;Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
.end method
