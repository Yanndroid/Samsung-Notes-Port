.class public final LcoeditOtMessage/TransformResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOtMessage/TransformResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOtMessage/TransformResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOtMessage/TransformResponse;",
        "LcoeditOtMessage/TransformResponse$Builder;",
        ">;",
        "LcoeditOtMessage/TransformResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOtMessage/TransformResponse;->g()LcoeditOtMessage/TransformResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOtMessage/g;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/TransformResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFirstTransformed()LcoeditOtMessage/TransformResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformResponse;

    invoke-static {v0}, LcoeditOtMessage/TransformResponse;->a(LcoeditOtMessage/TransformResponse;)V

    return-object p0
.end method

.method public clearSecondTransformed()LcoeditOtMessage/TransformResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformResponse;

    invoke-static {v0}, LcoeditOtMessage/TransformResponse;->b(LcoeditOtMessage/TransformResponse;)V

    return-object p0
.end method

.method public getFirstTransformed()LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformResponse;

    invoke-virtual {v0}, LcoeditOtMessage/TransformResponse;->getFirstTransformed()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    return-object v0
.end method

.method public getSecondTransformed()LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformResponse;

    invoke-virtual {v0}, LcoeditOtMessage/TransformResponse;->getSecondTransformed()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    return-object v0
.end method

.method public hasFirstTransformed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformResponse;

    invoke-virtual {v0}, LcoeditOtMessage/TransformResponse;->hasFirstTransformed()Z

    move-result v0

    return v0
.end method

.method public hasSecondTransformed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformResponse;

    invoke-virtual {v0}, LcoeditOtMessage/TransformResponse;->hasSecondTransformed()Z

    move-result v0

    return v0
.end method

.method public mergeFirstTransformed(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformResponse;->c(LcoeditOtMessage/TransformResponse;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public mergeSecondTransformed(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformResponse;->d(LcoeditOtMessage/TransformResponse;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setFirstTransformed(LcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/TransformResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformResponse;->e(LcoeditOtMessage/TransformResponse;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setFirstTransformed(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformResponse;->e(LcoeditOtMessage/TransformResponse;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setSecondTransformed(LcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/TransformResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformResponse;->f(LcoeditOtMessage/TransformResponse;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setSecondTransformed(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformResponse;->f(LcoeditOtMessage/TransformResponse;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method
