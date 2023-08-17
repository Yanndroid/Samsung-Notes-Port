.class public final Lio/netty/channel/unix/DomainDatagramSocketAddress;
.super Lio/netty/channel/unix/DomainSocketAddress;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x523c6e79b616af1fL


# instance fields
.field private final localAddress:Lio/netty/channel/unix/DomainDatagramSocketAddress;

.field private final receivedAmount:I


# direct methods
.method public constructor <init>([BILio/netty/channel/unix/DomainDatagramSocketAddress;)V
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lio/netty/channel/unix/DomainSocketAddress;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lio/netty/channel/unix/DomainDatagramSocketAddress;->localAddress:Lio/netty/channel/unix/DomainDatagramSocketAddress;

    iput p2, p0, Lio/netty/channel/unix/DomainDatagramSocketAddress;->receivedAmount:I

    return-void
.end method


# virtual methods
.method public localAddress()Lio/netty/channel/unix/DomainDatagramSocketAddress;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/unix/DomainDatagramSocketAddress;->localAddress:Lio/netty/channel/unix/DomainDatagramSocketAddress;

    return-object v0
.end method

.method public receivedAmount()I
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/DomainDatagramSocketAddress;->receivedAmount:I

    return v0
.end method
