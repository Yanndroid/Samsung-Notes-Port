.class final Lio/netty/handler/codec/http/HttpContentCompressor$ZstdEncoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http/CompressionEncoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpContentCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ZstdEncoderFactory"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http/HttpContentCompressor;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http/HttpContentCompressor;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor$ZstdEncoderFactory;->this$0:Lio/netty/handler/codec/http/HttpContentCompressor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/codec/http/HttpContentCompressor;Lio/netty/handler/codec/http/HttpContentCompressor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpContentCompressor$ZstdEncoderFactory;-><init>(Lio/netty/handler/codec/http/HttpContentCompressor;)V

    return-void
.end method


# virtual methods
.method public createEncoder()Lio/netty/handler/codec/MessageToByteEncoder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/MessageToByteEncoder<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/netty/handler/codec/compression/ZstdEncoder;

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpContentCompressor$ZstdEncoderFactory;->this$0:Lio/netty/handler/codec/http/HttpContentCompressor;

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpContentCompressor;->access$700(Lio/netty/handler/codec/http/HttpContentCompressor;)Lio/netty/handler/codec/compression/ZstdOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/compression/ZstdOptions;->compressionLevel()I

    move-result v1

    iget-object v2, p0, Lio/netty/handler/codec/http/HttpContentCompressor$ZstdEncoderFactory;->this$0:Lio/netty/handler/codec/http/HttpContentCompressor;

    invoke-static {v2}, Lio/netty/handler/codec/http/HttpContentCompressor;->access$700(Lio/netty/handler/codec/http/HttpContentCompressor;)Lio/netty/handler/codec/compression/ZstdOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/compression/ZstdOptions;->blockSize()I

    move-result v2

    iget-object v3, p0, Lio/netty/handler/codec/http/HttpContentCompressor$ZstdEncoderFactory;->this$0:Lio/netty/handler/codec/http/HttpContentCompressor;

    invoke-static {v3}, Lio/netty/handler/codec/http/HttpContentCompressor;->access$700(Lio/netty/handler/codec/http/HttpContentCompressor;)Lio/netty/handler/codec/compression/ZstdOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/handler/codec/compression/ZstdOptions;->maxEncodeSize()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/compression/ZstdEncoder;-><init>(III)V

    return-object v0
.end method
