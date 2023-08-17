.class public final LcoeditOtMessage/TransformRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOtMessage/TransformRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOtMessage/TransformRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOtMessage/TransformRequest;",
        "LcoeditOtMessage/TransformRequest$Builder;",
        ">;",
        "LcoeditOtMessage/TransformRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOtMessage/TransformRequest;->g()LcoeditOtMessage/TransformRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOtMessage/f;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/TransformRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFirst()LcoeditOtMessage/TransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformRequest;

    invoke-static {v0}, LcoeditOtMessage/TransformRequest;->a(LcoeditOtMessage/TransformRequest;)V

    return-object p0
.end method

.method public clearSecond()LcoeditOtMessage/TransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformRequest;

    invoke-static {v0}, LcoeditOtMessage/TransformRequest;->b(LcoeditOtMessage/TransformRequest;)V

    return-object p0
.end method

.method public getFirst()LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformRequest;

    invoke-virtual {v0}, LcoeditOtMessage/TransformRequest;->getFirst()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    return-object v0
.end method

.method public getSecond()LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformRequest;

    invoke-virtual {v0}, LcoeditOtMessage/TransformRequest;->getSecond()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    return-object v0
.end method

.method public hasFirst()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformRequest;

    invoke-virtual {v0}, LcoeditOtMessage/TransformRequest;->hasFirst()Z

    move-result v0

    return v0
.end method

.method public hasSecond()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformRequest;

    invoke-virtual {v0}, LcoeditOtMessage/TransformRequest;->hasSecond()Z

    move-result v0

    return v0
.end method

.method public mergeFirst(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformRequest;->c(LcoeditOtMessage/TransformRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public mergeSecond(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformRequest;->d(LcoeditOtMessage/TransformRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setFirst(LcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/TransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformRequest;->e(LcoeditOtMessage/TransformRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setFirst(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformRequest;->e(LcoeditOtMessage/TransformRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setSecond(LcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/TransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformRequest;->f(LcoeditOtMessage/TransformRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setSecond(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformRequest;->f(LcoeditOtMessage/TransformRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method
