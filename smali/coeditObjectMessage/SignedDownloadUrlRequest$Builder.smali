.class public final LcoeditObjectMessage/SignedDownloadUrlRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditObjectMessage/SignedDownloadUrlRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectMessage/SignedDownloadUrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditObjectMessage/SignedDownloadUrlRequest;",
        "LcoeditObjectMessage/SignedDownloadUrlRequest$Builder;",
        ">;",
        "LcoeditObjectMessage/SignedDownloadUrlRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditObjectMessage/SignedDownloadUrlRequest;->d()LcoeditObjectMessage/SignedDownloadUrlRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditObjectMessage/h;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/SignedDownloadUrlRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearObjId()LcoeditObjectMessage/SignedDownloadUrlRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v0}, LcoeditObjectMessage/SignedDownloadUrlRequest;->a(LcoeditObjectMessage/SignedDownloadUrlRequest;)V

    return-object p0
.end method

.method public getObjId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-virtual {v0}, LcoeditObjectMessage/SignedDownloadUrlRequest;->getObjId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-virtual {v0}, LcoeditObjectMessage/SignedDownloadUrlRequest;->getObjIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setObjId(Ljava/lang/String;)LcoeditObjectMessage/SignedDownloadUrlRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v0, p1}, LcoeditObjectMessage/SignedDownloadUrlRequest;->b(LcoeditObjectMessage/SignedDownloadUrlRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setObjIdBytes(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/SignedDownloadUrlRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v0, p1}, LcoeditObjectMessage/SignedDownloadUrlRequest;->c(LcoeditObjectMessage/SignedDownloadUrlRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
