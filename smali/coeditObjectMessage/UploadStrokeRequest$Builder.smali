.class public final LcoeditObjectMessage/UploadStrokeRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditObjectMessage/UploadStrokeRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectMessage/UploadStrokeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditObjectMessage/UploadStrokeRequest;",
        "LcoeditObjectMessage/UploadStrokeRequest$Builder;",
        ">;",
        "LcoeditObjectMessage/UploadStrokeRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditObjectMessage/UploadStrokeRequest;->h()LcoeditObjectMessage/UploadStrokeRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditObjectMessage/j;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/UploadStrokeRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBinary()LcoeditObjectMessage/UploadStrokeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-static {v0}, LcoeditObjectMessage/UploadStrokeRequest;->a(LcoeditObjectMessage/UploadStrokeRequest;)V

    return-object p0
.end method

.method public clearBinaryInfo()LcoeditObjectMessage/UploadStrokeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-static {v0}, LcoeditObjectMessage/UploadStrokeRequest;->b(LcoeditObjectMessage/UploadStrokeRequest;)V

    return-object p0
.end method

.method public clearRequest()LcoeditObjectMessage/UploadStrokeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-static {v0}, LcoeditObjectMessage/UploadStrokeRequest;->c(LcoeditObjectMessage/UploadStrokeRequest;)V

    return-object p0
.end method

.method public getBinary()LcoeditObjectMessage/Binary;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-virtual {v0}, LcoeditObjectMessage/UploadStrokeRequest;->getBinary()LcoeditObjectMessage/Binary;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryInfo()LcoeditObjectMessage/BinaryInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-virtual {v0}, LcoeditObjectMessage/UploadStrokeRequest;->getBinaryInfo()LcoeditObjectMessage/BinaryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRequestCase()LcoeditObjectMessage/UploadStrokeRequest$RequestCase;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-virtual {v0}, LcoeditObjectMessage/UploadStrokeRequest;->getRequestCase()LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    move-result-object v0

    return-object v0
.end method

.method public hasBinary()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-virtual {v0}, LcoeditObjectMessage/UploadStrokeRequest;->hasBinary()Z

    move-result v0

    return v0
.end method

.method public hasBinaryInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-virtual {v0}, LcoeditObjectMessage/UploadStrokeRequest;->hasBinaryInfo()Z

    move-result v0

    return v0
.end method

.method public mergeBinary(LcoeditObjectMessage/Binary;)LcoeditObjectMessage/UploadStrokeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-static {v0, p1}, LcoeditObjectMessage/UploadStrokeRequest;->d(LcoeditObjectMessage/UploadStrokeRequest;LcoeditObjectMessage/Binary;)V

    return-object p0
.end method

.method public mergeBinaryInfo(LcoeditObjectMessage/BinaryInfo;)LcoeditObjectMessage/UploadStrokeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-static {v0, p1}, LcoeditObjectMessage/UploadStrokeRequest;->e(LcoeditObjectMessage/UploadStrokeRequest;LcoeditObjectMessage/BinaryInfo;)V

    return-object p0
.end method

.method public setBinary(LcoeditObjectMessage/Binary$Builder;)LcoeditObjectMessage/UploadStrokeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/Binary;

    invoke-static {v0, p1}, LcoeditObjectMessage/UploadStrokeRequest;->f(LcoeditObjectMessage/UploadStrokeRequest;LcoeditObjectMessage/Binary;)V

    return-object p0
.end method

.method public setBinary(LcoeditObjectMessage/Binary;)LcoeditObjectMessage/UploadStrokeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-static {v0, p1}, LcoeditObjectMessage/UploadStrokeRequest;->f(LcoeditObjectMessage/UploadStrokeRequest;LcoeditObjectMessage/Binary;)V

    return-object p0
.end method

.method public setBinaryInfo(LcoeditObjectMessage/BinaryInfo$Builder;)LcoeditObjectMessage/UploadStrokeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/BinaryInfo;

    invoke-static {v0, p1}, LcoeditObjectMessage/UploadStrokeRequest;->g(LcoeditObjectMessage/UploadStrokeRequest;LcoeditObjectMessage/BinaryInfo;)V

    return-object p0
.end method

.method public setBinaryInfo(LcoeditObjectMessage/BinaryInfo;)LcoeditObjectMessage/UploadStrokeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-static {v0, p1}, LcoeditObjectMessage/UploadStrokeRequest;->g(LcoeditObjectMessage/UploadStrokeRequest;LcoeditObjectMessage/BinaryInfo;)V

    return-object p0
.end method
