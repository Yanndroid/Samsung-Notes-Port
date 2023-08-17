.class public final Lio/netty/handler/ssl/OpenSslEngine;
.super Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/OpenSslContext;Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-static {p0}, Lio/netty/handler/ssl/OpenSsl;->releaseIfNeeded(Lio/netty/util/ReferenceCounted;)V

    return-void
.end method
