.class public final LnoteSnapMessage/Binary$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LnoteSnapMessage/BinaryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LnoteSnapMessage/Binary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LnoteSnapMessage/Binary;",
        "LnoteSnapMessage/Binary$Builder;",
        ">;",
        "LnoteSnapMessage/BinaryOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LnoteSnapMessage/Binary;->e()LnoteSnapMessage/Binary;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LnoteSnapMessage/a;)V
    .locals 0

    invoke-direct {p0}, LnoteSnapMessage/Binary$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChunk()LnoteSnapMessage/Binary$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/Binary;

    invoke-static {v0}, LnoteSnapMessage/Binary;->a(LnoteSnapMessage/Binary;)V

    return-object p0
.end method

.method public clearReadSize()LnoteSnapMessage/Binary$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/Binary;

    invoke-static {v0}, LnoteSnapMessage/Binary;->b(LnoteSnapMessage/Binary;)V

    return-object p0
.end method

.method public getChunk()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/Binary;

    invoke-virtual {v0}, LnoteSnapMessage/Binary;->getChunk()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/Binary;

    invoke-virtual {v0}, LnoteSnapMessage/Binary;->getReadSize()I

    move-result v0

    return v0
.end method

.method public setChunk(Lcom/google/protobuf/ByteString;)LnoteSnapMessage/Binary$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/Binary;

    invoke-static {v0, p1}, LnoteSnapMessage/Binary;->c(LnoteSnapMessage/Binary;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReadSize(I)LnoteSnapMessage/Binary$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/Binary;

    invoke-static {v0, p1}, LnoteSnapMessage/Binary;->d(LnoteSnapMessage/Binary;I)V

    return-object p0
.end method
