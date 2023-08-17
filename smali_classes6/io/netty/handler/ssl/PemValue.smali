.class Lio/netty/handler/ssl/PemValue;
.super Lio/netty/util/AbstractReferenceCounted;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/ssl/PemEncoded;


# instance fields
.field private final content:Lio/netty/buffer/ByteBuf;

.field private final sensitive:Z


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;Z)V
    .locals 1

    invoke-direct {p0}, Lio/netty/util/AbstractReferenceCounted;-><init>()V

    const-string v0, "content"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/ByteBuf;

    iput-object p1, p0, Lio/netty/handler/ssl/PemValue;->content:Lio/netty/buffer/ByteBuf;

    iput-boolean p2, p0, Lio/netty/handler/ssl/PemValue;->sensitive:Z

    return-void
.end method


# virtual methods
.method public content()Lio/netty/buffer/ByteBuf;
    .locals 2

    invoke-virtual {p0}, Lio/netty/util/AbstractReferenceCounted;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/PemValue;->content:Lio/netty/buffer/ByteBuf;

    return-object v0

    :cond_0
    new-instance v1, Lio/netty/util/IllegalReferenceCountException;

    invoke-direct {v1, v0}, Lio/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v1
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemValue;->copy()Lio/netty/handler/ssl/PemValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemValue;->copy()Lio/netty/handler/ssl/PemValue;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/ssl/PemValue;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/PemValue;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/PemValue;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemValue;

    move-result-object v0

    return-object v0
.end method

.method public deallocate()V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/ssl/PemValue;->sensitive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/PemValue;->content:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/handler/ssl/SslUtils;->zeroout(Lio/netty/buffer/ByteBuf;)V

    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/PemValue;->content:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    return-void
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemValue;->duplicate()Lio/netty/handler/ssl/PemValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemValue;->duplicate()Lio/netty/handler/ssl/PemValue;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/ssl/PemValue;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/PemValue;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/PemValue;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemValue;

    move-result-object v0

    return-object v0
.end method

.method public isSensitive()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/ssl/PemValue;->sensitive:Z

    return v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemValue;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemValue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemEncoded;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemValue;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemValue;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemValue;
    .locals 2

    new-instance v0, Lio/netty/handler/ssl/PemValue;

    iget-boolean v1, p0, Lio/netty/handler/ssl/PemValue;->sensitive:Z

    invoke-direct {v0, p1, v1}, Lio/netty/handler/ssl/PemValue;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemValue;->retain()Lio/netty/handler/ssl/PemValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemValue;->retain(I)Lio/netty/handler/ssl/PemValue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemValue;->retain()Lio/netty/handler/ssl/PemValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/ssl/PemEncoded;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemValue;->retain(I)Lio/netty/handler/ssl/PemValue;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/ssl/PemValue;
    .locals 1

    invoke-super {p0}, Lio/netty/util/AbstractReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/PemValue;

    return-object v0
.end method

.method public retain(I)Lio/netty/handler/ssl/PemValue;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/util/AbstractReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    move-result-object p1

    check-cast p1, Lio/netty/handler/ssl/PemValue;

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemValue;->retain()Lio/netty/handler/ssl/PemValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemValue;->retain(I)Lio/netty/handler/ssl/PemValue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemValue;->retainedDuplicate()Lio/netty/handler/ssl/PemValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemValue;->retainedDuplicate()Lio/netty/handler/ssl/PemValue;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/ssl/PemValue;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/PemValue;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/PemValue;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemValue;->touch()Lio/netty/handler/ssl/PemValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemValue;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemValue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemValue;->touch()Lio/netty/handler/ssl/PemValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemEncoded;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemValue;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemValue;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/ssl/PemValue;
    .locals 1

    invoke-super {p0}, Lio/netty/util/AbstractReferenceCounted;->touch()Lio/netty/util/ReferenceCounted;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/PemValue;

    return-object v0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemValue;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/PemValue;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemValue;->touch()Lio/netty/handler/ssl/PemValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemValue;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemValue;

    move-result-object p1

    return-object p1
.end method
