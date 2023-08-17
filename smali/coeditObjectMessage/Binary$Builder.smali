.class public final LcoeditObjectMessage/Binary$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditObjectMessage/BinaryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectMessage/Binary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditObjectMessage/Binary;",
        "LcoeditObjectMessage/Binary$Builder;",
        ">;",
        "LcoeditObjectMessage/BinaryOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditObjectMessage/Binary;->e()LcoeditObjectMessage/Binary;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditObjectMessage/a;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/Binary$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChunk()LcoeditObjectMessage/Binary$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/Binary;

    invoke-static {v0}, LcoeditObjectMessage/Binary;->a(LcoeditObjectMessage/Binary;)V

    return-object p0
.end method

.method public clearReadSize()LcoeditObjectMessage/Binary$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/Binary;

    invoke-static {v0}, LcoeditObjectMessage/Binary;->b(LcoeditObjectMessage/Binary;)V

    return-object p0
.end method

.method public getChunk()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/Binary;

    invoke-virtual {v0}, LcoeditObjectMessage/Binary;->getChunk()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/Binary;

    invoke-virtual {v0}, LcoeditObjectMessage/Binary;->getReadSize()I

    move-result v0

    return v0
.end method

.method public setChunk(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/Binary$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/Binary;

    invoke-static {v0, p1}, LcoeditObjectMessage/Binary;->c(LcoeditObjectMessage/Binary;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReadSize(I)LcoeditObjectMessage/Binary$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/Binary;

    invoke-static {v0, p1}, LcoeditObjectMessage/Binary;->d(LcoeditObjectMessage/Binary;I)V

    return-object p0
.end method
