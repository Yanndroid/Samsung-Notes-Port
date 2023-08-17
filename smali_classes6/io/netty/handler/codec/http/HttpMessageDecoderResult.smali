.class public final Lio/netty/handler/codec/http/HttpMessageDecoderResult;
.super Lio/netty/handler/codec/DecoderResult;
.source "SourceFile"


# instance fields
.field private final headerSize:I

.field private final initialLineLength:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/DecoderResult;->SIGNAL_SUCCESS:Lio/netty/util/Signal;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/DecoderResult;-><init>(Ljava/lang/Throwable;)V

    iput p1, p0, Lio/netty/handler/codec/http/HttpMessageDecoderResult;->initialLineLength:I

    iput p2, p0, Lio/netty/handler/codec/http/HttpMessageDecoderResult;->headerSize:I

    return-void
.end method


# virtual methods
.method public headerSize()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http/HttpMessageDecoderResult;->headerSize:I

    return v0
.end method

.method public initialLineLength()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http/HttpMessageDecoderResult;->initialLineLength:I

    return v0
.end method

.method public totalSize()I
    .locals 2

    iget v0, p0, Lio/netty/handler/codec/http/HttpMessageDecoderResult;->initialLineLength:I

    iget v1, p0, Lio/netty/handler/codec/http/HttpMessageDecoderResult;->headerSize:I

    add-int/2addr v0, v1

    return v0
.end method
