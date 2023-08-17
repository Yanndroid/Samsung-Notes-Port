.class public final LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CoeditOperation$ReplaceAttributesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOperation/CoeditOperation$ReplaceAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOperation/CoeditOperation$ReplaceAttributes;",
        "LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;",
        ">;",
        "LcoeditOperation/CoeditOperation$ReplaceAttributesOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->m()LcoeditOperation/CoeditOperation$ReplaceAttributes;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOperation/h;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllNewAttribute(Ljava/lang/Iterable;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOperation/CoeditOperation$KeyValuePair;",
            ">;)",
            "LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->a(LcoeditOperation/CoeditOperation$ReplaceAttributes;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOldAttribute(Ljava/lang/Iterable;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOperation/CoeditOperation$KeyValuePair;",
            ">;)",
            "LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->b(LcoeditOperation/CoeditOperation$ReplaceAttributes;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addNewAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair$Builder;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->c(LcoeditOperation/CoeditOperation$ReplaceAttributes;ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public addNewAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->c(LcoeditOperation/CoeditOperation$ReplaceAttributes;ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public addNewAttribute(LcoeditOperation/CoeditOperation$KeyValuePair$Builder;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->d(LcoeditOperation/CoeditOperation$ReplaceAttributes;LcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public addNewAttribute(LcoeditOperation/CoeditOperation$KeyValuePair;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->d(LcoeditOperation/CoeditOperation$ReplaceAttributes;LcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public addOldAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair$Builder;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->e(LcoeditOperation/CoeditOperation$ReplaceAttributes;ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public addOldAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->e(LcoeditOperation/CoeditOperation$ReplaceAttributes;ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public addOldAttribute(LcoeditOperation/CoeditOperation$KeyValuePair$Builder;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->f(LcoeditOperation/CoeditOperation$ReplaceAttributes;LcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public addOldAttribute(LcoeditOperation/CoeditOperation$KeyValuePair;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->f(LcoeditOperation/CoeditOperation$ReplaceAttributes;LcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public clearNewAttribute()LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->g(LcoeditOperation/CoeditOperation$ReplaceAttributes;)V

    return-object p0
.end method

.method public clearOldAttribute()LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->h(LcoeditOperation/CoeditOperation$ReplaceAttributes;)V

    return-object p0
.end method

.method public getNewAttribute(I)LcoeditOperation/CoeditOperation$KeyValuePair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-virtual {v0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->getNewAttribute(I)LcoeditOperation/CoeditOperation$KeyValuePair;

    move-result-object p1

    return-object p1
.end method

.method public getNewAttributeCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->getNewAttributeCount()I

    move-result v0

    return v0
.end method

.method public getNewAttributeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation$KeyValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->getNewAttributeList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOldAttribute(I)LcoeditOperation/CoeditOperation$KeyValuePair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-virtual {v0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->getOldAttribute(I)LcoeditOperation/CoeditOperation$KeyValuePair;

    move-result-object p1

    return-object p1
.end method

.method public getOldAttributeCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->getOldAttributeCount()I

    move-result v0

    return v0
.end method

.method public getOldAttributeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation$KeyValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->getOldAttributeList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeNewAttribute(I)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->i(LcoeditOperation/CoeditOperation$ReplaceAttributes;I)V

    return-object p0
.end method

.method public removeOldAttribute(I)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->j(LcoeditOperation/CoeditOperation$ReplaceAttributes;I)V

    return-object p0
.end method

.method public setNewAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair$Builder;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->k(LcoeditOperation/CoeditOperation$ReplaceAttributes;ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public setNewAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->k(LcoeditOperation/CoeditOperation$ReplaceAttributes;ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public setOldAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair$Builder;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->l(LcoeditOperation/CoeditOperation$ReplaceAttributes;ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public setOldAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->l(LcoeditOperation/CoeditOperation$ReplaceAttributes;ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method
