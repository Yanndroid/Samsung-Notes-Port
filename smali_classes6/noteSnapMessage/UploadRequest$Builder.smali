.class public final LnoteSnapMessage/UploadRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LnoteSnapMessage/UploadRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LnoteSnapMessage/UploadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LnoteSnapMessage/UploadRequest;",
        "LnoteSnapMessage/UploadRequest$Builder;",
        ">;",
        "LnoteSnapMessage/UploadRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LnoteSnapMessage/UploadRequest;->h()LnoteSnapMessage/UploadRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LnoteSnapMessage/h;)V
    .locals 0

    invoke-direct {p0}, LnoteSnapMessage/UploadRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBinary()LnoteSnapMessage/UploadRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadRequest;

    invoke-static {v0}, LnoteSnapMessage/UploadRequest;->a(LnoteSnapMessage/UploadRequest;)V

    return-object p0
.end method

.method public clearBinaryInfo()LnoteSnapMessage/UploadRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadRequest;

    invoke-static {v0}, LnoteSnapMessage/UploadRequest;->b(LnoteSnapMessage/UploadRequest;)V

    return-object p0
.end method

.method public clearRequest()LnoteSnapMessage/UploadRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadRequest;

    invoke-static {v0}, LnoteSnapMessage/UploadRequest;->c(LnoteSnapMessage/UploadRequest;)V

    return-object p0
.end method

.method public getBinary()LnoteSnapMessage/Binary;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadRequest;

    invoke-virtual {v0}, LnoteSnapMessage/UploadRequest;->getBinary()LnoteSnapMessage/Binary;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryInfo()LnoteSnapMessage/BinaryInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadRequest;

    invoke-virtual {v0}, LnoteSnapMessage/UploadRequest;->getBinaryInfo()LnoteSnapMessage/BinaryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRequestCase()LnoteSnapMessage/UploadRequest$RequestCase;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadRequest;

    invoke-virtual {v0}, LnoteSnapMessage/UploadRequest;->getRequestCase()LnoteSnapMessage/UploadRequest$RequestCase;

    move-result-object v0

    return-object v0
.end method

.method public hasBinary()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadRequest;

    invoke-virtual {v0}, LnoteSnapMessage/UploadRequest;->hasBinary()Z

    move-result v0

    return v0
.end method

.method public hasBinaryInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadRequest;

    invoke-virtual {v0}, LnoteSnapMessage/UploadRequest;->hasBinaryInfo()Z

    move-result v0

    return v0
.end method

.method public mergeBinary(LnoteSnapMessage/Binary;)LnoteSnapMessage/UploadRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p1}, LnoteSnapMessage/UploadRequest;->d(LnoteSnapMessage/UploadRequest;LnoteSnapMessage/Binary;)V

    return-object p0
.end method

.method public mergeBinaryInfo(LnoteSnapMessage/BinaryInfo;)LnoteSnapMessage/UploadRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p1}, LnoteSnapMessage/UploadRequest;->e(LnoteSnapMessage/UploadRequest;LnoteSnapMessage/BinaryInfo;)V

    return-object p0
.end method

.method public setBinary(LnoteSnapMessage/Binary$Builder;)LnoteSnapMessage/UploadRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/Binary;

    invoke-static {v0, p1}, LnoteSnapMessage/UploadRequest;->f(LnoteSnapMessage/UploadRequest;LnoteSnapMessage/Binary;)V

    return-object p0
.end method

.method public setBinary(LnoteSnapMessage/Binary;)LnoteSnapMessage/UploadRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p1}, LnoteSnapMessage/UploadRequest;->f(LnoteSnapMessage/UploadRequest;LnoteSnapMessage/Binary;)V

    return-object p0
.end method

.method public setBinaryInfo(LnoteSnapMessage/BinaryInfo$Builder;)LnoteSnapMessage/UploadRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0, p1}, LnoteSnapMessage/UploadRequest;->g(LnoteSnapMessage/UploadRequest;LnoteSnapMessage/BinaryInfo;)V

    return-object p0
.end method

.method public setBinaryInfo(LnoteSnapMessage/BinaryInfo;)LnoteSnapMessage/UploadRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p1}, LnoteSnapMessage/UploadRequest;->g(LnoteSnapMessage/UploadRequest;LnoteSnapMessage/BinaryInfo;)V

    return-object p0
.end method
