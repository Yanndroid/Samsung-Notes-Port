.class public final Lio/netty/handler/codec/compression/BrotliOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/compression/CompressionOptions;


# static fields
.field public static final DEFAULT:Lio/netty/handler/codec/compression/BrotliOptions;


# instance fields
.field private final parameters:Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/netty/handler/codec/compression/BrotliOptions;

    new-instance v1, Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;

    invoke-direct {v1}, Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;->setQuality(I)Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;

    move-result-object v1

    sget-object v2, Lcom/aayushatharva/brotli4j/encoder/Encoder$Mode;->TEXT:Lcom/aayushatharva/brotli4j/encoder/Encoder$Mode;

    invoke-virtual {v1, v2}, Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;->setMode(Lcom/aayushatharva/brotli4j/encoder/Encoder$Mode;)Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/BrotliOptions;-><init>(Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;)V

    sput-object v0, Lio/netty/handler/codec/compression/BrotliOptions;->DEFAULT:Lio/netty/handler/codec/compression/BrotliOptions;

    return-void
.end method

.method public constructor <init>(Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Parameters"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;

    iput-object p1, p0, Lio/netty/handler/codec/compression/BrotliOptions;->parameters:Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->cause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "Brotli is not available"

    invoke-direct {p1, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public parameters()Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliOptions;->parameters:Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;

    return-object v0
.end method
