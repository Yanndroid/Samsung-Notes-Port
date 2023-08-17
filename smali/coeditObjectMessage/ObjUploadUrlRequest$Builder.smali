.class public final LcoeditObjectMessage/ObjUploadUrlRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditObjectMessage/ObjUploadUrlRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectMessage/ObjUploadUrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditObjectMessage/ObjUploadUrlRequest;",
        "LcoeditObjectMessage/ObjUploadUrlRequest$Builder;",
        ">;",
        "LcoeditObjectMessage/ObjUploadUrlRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditObjectMessage/ObjUploadUrlRequest;->d()LcoeditObjectMessage/ObjUploadUrlRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditObjectMessage/e;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/ObjUploadUrlRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBinaryInfo()LcoeditObjectMessage/ObjUploadUrlRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlRequest;

    invoke-static {v0}, LcoeditObjectMessage/ObjUploadUrlRequest;->a(LcoeditObjectMessage/ObjUploadUrlRequest;)V

    return-object p0
.end method

.method public getBinaryInfo()LcoeditObjectMessage/BinaryInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlRequest;

    invoke-virtual {v0}, LcoeditObjectMessage/ObjUploadUrlRequest;->getBinaryInfo()LcoeditObjectMessage/BinaryInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasBinaryInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlRequest;

    invoke-virtual {v0}, LcoeditObjectMessage/ObjUploadUrlRequest;->hasBinaryInfo()Z

    move-result v0

    return v0
.end method

.method public mergeBinaryInfo(LcoeditObjectMessage/BinaryInfo;)LcoeditObjectMessage/ObjUploadUrlRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlRequest;

    invoke-static {v0, p1}, LcoeditObjectMessage/ObjUploadUrlRequest;->b(LcoeditObjectMessage/ObjUploadUrlRequest;LcoeditObjectMessage/BinaryInfo;)V

    return-object p0
.end method

.method public setBinaryInfo(LcoeditObjectMessage/BinaryInfo$Builder;)LcoeditObjectMessage/ObjUploadUrlRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/BinaryInfo;

    invoke-static {v0, p1}, LcoeditObjectMessage/ObjUploadUrlRequest;->c(LcoeditObjectMessage/ObjUploadUrlRequest;LcoeditObjectMessage/BinaryInfo;)V

    return-object p0
.end method

.method public setBinaryInfo(LcoeditObjectMessage/BinaryInfo;)LcoeditObjectMessage/ObjUploadUrlRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlRequest;

    invoke-static {v0, p1}, LcoeditObjectMessage/ObjUploadUrlRequest;->c(LcoeditObjectMessage/ObjUploadUrlRequest;LcoeditObjectMessage/BinaryInfo;)V

    return-object p0
.end method
