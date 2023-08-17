.class public final LcoeditOperation/CoeditOperation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CoeditOperationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOperation/CoeditOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOperation/CoeditOperation;",
        "LcoeditOperation/CoeditOperation$Builder;",
        ">;",
        "LcoeditOperation/CoeditOperationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOperation/CoeditOperation;->I()LcoeditOperation/CoeditOperation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOperation/b;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChangeType()LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0}, LcoeditOperation/CoeditOperation;->a(LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public clearDeleteCharacters()LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0}, LcoeditOperation/CoeditOperation;->b(LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public clearDeleteElements()LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0}, LcoeditOperation/CoeditOperation;->c(LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public clearDeleteObjectSpan()LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0}, LcoeditOperation/CoeditOperation;->d(LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public clearIndex()LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0}, LcoeditOperation/CoeditOperation;->e(LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public clearInsertCharacters()LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0}, LcoeditOperation/CoeditOperation;->f(LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public clearInsertElements()LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0}, LcoeditOperation/CoeditOperation;->g(LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public clearInsertObjectSpan()LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0}, LcoeditOperation/CoeditOperation;->h(LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public clearReplaceAttributes()LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0}, LcoeditOperation/CoeditOperation;->i(LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public clearSetAnnotations()LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0}, LcoeditOperation/CoeditOperation;->j(LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public clearSize()LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0}, LcoeditOperation/CoeditOperation;->k(LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public clearUpdateAttributes()LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0}, LcoeditOperation/CoeditOperation;->l(LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public getChangeType()LcoeditOperation/ChangeType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getChangeType()LcoeditOperation/ChangeType;

    move-result-object v0

    return-object v0
.end method

.method public getChangeTypeValue()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getChangeTypeValue()I

    move-result v0

    return v0
.end method

.method public getDeleteCharacters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getDeleteCharacters()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteCharactersBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getDeleteCharactersBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteElements()LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getDeleteElements()LcoeditOperation/CoeditOperation$Elements;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteObjectSpan()LcoeditOperation/CoeditOperation$ObjectSpan;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getDeleteObjectSpan()LcoeditOperation/CoeditOperation$ObjectSpan;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v0

    return v0
.end method

.method public getInsertCharacters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getInsertCharacters()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInsertCharactersBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getInsertCharactersBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInsertElements()LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getInsertElements()LcoeditOperation/CoeditOperation$Elements;

    move-result-object v0

    return-object v0
.end method

.method public getInsertObjectSpan()LcoeditOperation/CoeditOperation$ObjectSpan;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getInsertObjectSpan()LcoeditOperation/CoeditOperation$ObjectSpan;

    move-result-object v0

    return-object v0
.end method

.method public getReplaceAttributes()LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getReplaceAttributes()LcoeditOperation/CoeditOperation$ReplaceAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getSetAnnotations()LcoeditOperation/CoeditOperation$SetAnnotations;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getSetAnnotations()LcoeditOperation/CoeditOperation$SetAnnotations;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getSize()I

    move-result v0

    return v0
.end method

.method public getUpdateAttributes()LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getUpdateAttributes()LcoeditOperation/CoeditOperation$UpdateAttributes;

    move-result-object v0

    return-object v0
.end method

.method public hasDeleteElements()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->hasDeleteElements()Z

    move-result v0

    return v0
.end method

.method public hasDeleteObjectSpan()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->hasDeleteObjectSpan()Z

    move-result v0

    return v0
.end method

.method public hasInsertElements()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->hasInsertElements()Z

    move-result v0

    return v0
.end method

.method public hasInsertObjectSpan()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->hasInsertObjectSpan()Z

    move-result v0

    return v0
.end method

.method public hasReplaceAttributes()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->hasReplaceAttributes()Z

    move-result v0

    return v0
.end method

.method public hasSetAnnotations()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->hasSetAnnotations()Z

    move-result v0

    return v0
.end method

.method public hasUpdateAttributes()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->hasUpdateAttributes()Z

    move-result v0

    return v0
.end method

.method public mergeDeleteElements(LcoeditOperation/CoeditOperation$Elements;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->m(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$Elements;)V

    return-object p0
.end method

.method public mergeDeleteObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->n(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$ObjectSpan;)V

    return-object p0
.end method

.method public mergeInsertElements(LcoeditOperation/CoeditOperation$Elements;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->o(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$Elements;)V

    return-object p0
.end method

.method public mergeInsertObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->p(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$ObjectSpan;)V

    return-object p0
.end method

.method public mergeReplaceAttributes(LcoeditOperation/CoeditOperation$ReplaceAttributes;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->q(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$ReplaceAttributes;)V

    return-object p0
.end method

.method public mergeSetAnnotations(LcoeditOperation/CoeditOperation$SetAnnotations;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->r(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$SetAnnotations;)V

    return-object p0
.end method

.method public mergeUpdateAttributes(LcoeditOperation/CoeditOperation$UpdateAttributes;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->s(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$UpdateAttributes;)V

    return-object p0
.end method

.method public setChangeType(LcoeditOperation/ChangeType;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->t(LcoeditOperation/CoeditOperation;LcoeditOperation/ChangeType;)V

    return-object p0
.end method

.method public setChangeTypeValue(I)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->u(LcoeditOperation/CoeditOperation;I)V

    return-object p0
.end method

.method public setDeleteCharacters(Ljava/lang/String;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->v(LcoeditOperation/CoeditOperation;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDeleteCharactersBytes(Lcom/google/protobuf/ByteString;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->w(LcoeditOperation/CoeditOperation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDeleteElements(LcoeditOperation/CoeditOperation$Elements$Builder;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->x(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$Elements;)V

    return-object p0
.end method

.method public setDeleteElements(LcoeditOperation/CoeditOperation$Elements;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->x(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$Elements;)V

    return-object p0
.end method

.method public setDeleteObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan$Builder;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$ObjectSpan;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->y(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$ObjectSpan;)V

    return-object p0
.end method

.method public setDeleteObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->y(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$ObjectSpan;)V

    return-object p0
.end method

.method public setIndex(I)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->z(LcoeditOperation/CoeditOperation;I)V

    return-object p0
.end method

.method public setInsertCharacters(Ljava/lang/String;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->A(LcoeditOperation/CoeditOperation;Ljava/lang/String;)V

    return-object p0
.end method

.method public setInsertCharactersBytes(Lcom/google/protobuf/ByteString;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->B(LcoeditOperation/CoeditOperation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setInsertElements(LcoeditOperation/CoeditOperation$Elements$Builder;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->C(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$Elements;)V

    return-object p0
.end method

.method public setInsertElements(LcoeditOperation/CoeditOperation$Elements;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->C(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$Elements;)V

    return-object p0
.end method

.method public setInsertObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan$Builder;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$ObjectSpan;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->D(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$ObjectSpan;)V

    return-object p0
.end method

.method public setInsertObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->D(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$ObjectSpan;)V

    return-object p0
.end method

.method public setReplaceAttributes(LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->E(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$ReplaceAttributes;)V

    return-object p0
.end method

.method public setReplaceAttributes(LcoeditOperation/CoeditOperation$ReplaceAttributes;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->E(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$ReplaceAttributes;)V

    return-object p0
.end method

.method public setSetAnnotations(LcoeditOperation/CoeditOperation$SetAnnotations$Builder;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->F(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$SetAnnotations;)V

    return-object p0
.end method

.method public setSetAnnotations(LcoeditOperation/CoeditOperation$SetAnnotations;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->F(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$SetAnnotations;)V

    return-object p0
.end method

.method public setSize(I)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->G(LcoeditOperation/CoeditOperation;I)V

    return-object p0
.end method

.method public setUpdateAttributes(LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->H(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$UpdateAttributes;)V

    return-object p0
.end method

.method public setUpdateAttributes(LcoeditOperation/CoeditOperation$UpdateAttributes;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation;->H(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$UpdateAttributes;)V

    return-object p0
.end method
