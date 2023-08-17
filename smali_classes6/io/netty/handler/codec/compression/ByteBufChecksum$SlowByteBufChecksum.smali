.class Lio/netty/handler/codec/compression/ByteBufChecksum$SlowByteBufChecksum;
.super Lio/netty/handler/codec/compression/ByteBufChecksum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/compression/ByteBufChecksum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlowByteBufChecksum"
.end annotation


# instance fields
.field public final checksum:Ljava/util/zip/Checksum;


# direct methods
.method public constructor <init>(Ljava/util/zip/Checksum;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/compression/ByteBufChecksum;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/compression/ByteBufChecksum$SlowByteBufChecksum;->checksum:Ljava/util/zip/Checksum;

    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/compression/ByteBufChecksum$SlowByteBufChecksum;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/compression/ByteBufChecksum$SlowByteBufChecksum;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->reset()V

    return-void
.end method

.method public update(I)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/compression/ByteBufChecksum$SlowByteBufChecksum;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1}, Ljava/util/zip/Checksum;->update(I)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/compression/ByteBufChecksum$SlowByteBufChecksum;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    return-void
.end method
