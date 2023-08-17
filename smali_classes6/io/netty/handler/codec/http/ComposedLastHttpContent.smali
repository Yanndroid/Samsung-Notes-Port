.class final Lio/netty/handler/codec/http/ComposedLastHttpContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http/LastHttpContent;


# instance fields
.field private result:Lio/netty/handler/codec/DecoderResult;

.field private final trailingHeaders:Lio/netty/handler/codec/http/HttpHeaders;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/HttpHeaders;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/http/ComposedLastHttpContent;->trailingHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/DecoderResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ComposedLastHttpContent;-><init>(Lio/netty/handler/codec/http/HttpHeaders;)V

    iput-object p2, p0, Lio/netty/handler/codec/http/ComposedLastHttpContent;->result:Lio/netty/handler/codec/DecoderResult;

    return-void
.end method


# virtual methods
.method public content()Lio/netty/buffer/ByteBuf;
    .locals 1

    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->copy()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->copy()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 3

    new-instance v0, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {v0}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method

.method public decoderResult()Lio/netty/handler/codec/DecoderResult;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/ComposedLastHttpContent;->result:Lio/netty/handler/codec/DecoderResult;

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->duplicate()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->duplicate()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->copy()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public getDecoderResult()Lio/netty/handler/codec/DecoderResult;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public refCnt()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public release()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public release(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/HttpContent;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 2

    new-instance v0, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {v0}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/netty/handler/codec/http/HttpHeaders;->setAll(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->retain()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->retain(I)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->retain()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/HttpContent;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->retain(I)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->retain()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->retain(I)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->retainedDuplicate()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->retainedDuplicate()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->copy()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/ComposedLastHttpContent;->result:Lio/netty/handler/codec/DecoderResult;

    return-void
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->touch()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->touch()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpContent;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->touch()Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/ComposedLastHttpContent;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    return-object p1
.end method

.method public trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/ComposedLastHttpContent;->trailingHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method
