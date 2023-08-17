.class public final LcoeditOtMessage/ComposeResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOtMessage/ComposeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOtMessage/ComposeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOtMessage/ComposeResponse;",
        "LcoeditOtMessage/ComposeResponse$Builder;",
        ">;",
        "LcoeditOtMessage/ComposeResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOtMessage/ComposeResponse;->d()LcoeditOtMessage/ComposeResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOtMessage/b;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/ComposeResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPairs()LcoeditOtMessage/ComposeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeResponse;

    invoke-static {v0}, LcoeditOtMessage/ComposeResponse;->a(LcoeditOtMessage/ComposeResponse;)V

    return-object p0
.end method

.method public getPairs()LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeResponse;

    invoke-virtual {v0}, LcoeditOtMessage/ComposeResponse;->getPairs()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    return-object v0
.end method

.method public hasPairs()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeResponse;

    invoke-virtual {v0}, LcoeditOtMessage/ComposeResponse;->hasPairs()Z

    move-result v0

    return v0
.end method

.method public mergePairs(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/ComposeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeResponse;

    invoke-static {v0, p1}, LcoeditOtMessage/ComposeResponse;->b(LcoeditOtMessage/ComposeResponse;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setPairs(LcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/ComposeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1}, LcoeditOtMessage/ComposeResponse;->c(LcoeditOtMessage/ComposeResponse;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setPairs(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/ComposeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeResponse;

    invoke-static {v0, p1}, LcoeditOtMessage/ComposeResponse;->c(LcoeditOtMessage/ComposeResponse;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method
