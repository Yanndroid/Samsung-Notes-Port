.class public final LcoeditOperation/CoeditOperation$Element$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CoeditOperation$ElementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOperation/CoeditOperation$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOperation/CoeditOperation$Element;",
        "LcoeditOperation/CoeditOperation$Element$Builder;",
        ">;",
        "LcoeditOperation/CoeditOperation$ElementOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOperation/CoeditOperation$Element;->l()LcoeditOperation/CoeditOperation$Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOperation/c;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$Element$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAttribute(Ljava/lang/Iterable;)LcoeditOperation/CoeditOperation$Element$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOperation/CoeditOperation$KeyValuePair;",
            ">;)",
            "LcoeditOperation/CoeditOperation$Element$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$Element;->a(LcoeditOperation/CoeditOperation$Element;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair$Builder;)LcoeditOperation/CoeditOperation$Element$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$Element;->b(LcoeditOperation/CoeditOperation$Element;ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public addAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair;)LcoeditOperation/CoeditOperation$Element$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$Element;->b(LcoeditOperation/CoeditOperation$Element;ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public addAttribute(LcoeditOperation/CoeditOperation$KeyValuePair$Builder;)LcoeditOperation/CoeditOperation$Element$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$Element;->c(LcoeditOperation/CoeditOperation$Element;LcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public addAttribute(LcoeditOperation/CoeditOperation$KeyValuePair;)LcoeditOperation/CoeditOperation$Element$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$Element;->c(LcoeditOperation/CoeditOperation$Element;LcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public clearAttribute()LcoeditOperation/CoeditOperation$Element$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$Element;->d(LcoeditOperation/CoeditOperation$Element;)V

    return-object p0
.end method

.method public clearElementEnd()LcoeditOperation/CoeditOperation$Element$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$Element;->e(LcoeditOperation/CoeditOperation$Element;)V

    return-object p0
.end method

.method public clearTagName()LcoeditOperation/CoeditOperation$Element$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$Element;->f(LcoeditOperation/CoeditOperation$Element;)V

    return-object p0
.end method

.method public getAttribute(I)LcoeditOperation/CoeditOperation$KeyValuePair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-virtual {v0, p1}, LcoeditOperation/CoeditOperation$Element;->getAttribute(I)LcoeditOperation/CoeditOperation$KeyValuePair;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$Element;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeList()Ljava/util/List;
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

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$Element;->getAttributeList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getElementEnd()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$Element;->getElementEnd()Z

    move-result v0

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$Element;->getTagNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(I)LcoeditOperation/CoeditOperation$Element$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$Element;->g(LcoeditOperation/CoeditOperation$Element;I)V

    return-object p0
.end method

.method public setAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair$Builder;)LcoeditOperation/CoeditOperation$Element$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$Element;->h(LcoeditOperation/CoeditOperation$Element;ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public setAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair;)LcoeditOperation/CoeditOperation$Element$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$Element;->h(LcoeditOperation/CoeditOperation$Element;ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public setElementEnd(Z)LcoeditOperation/CoeditOperation$Element$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$Element;->i(LcoeditOperation/CoeditOperation$Element;Z)V

    return-object p0
.end method

.method public setTagName(Ljava/lang/String;)LcoeditOperation/CoeditOperation$Element$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$Element;->j(LcoeditOperation/CoeditOperation$Element;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTagNameBytes(Lcom/google/protobuf/ByteString;)LcoeditOperation/CoeditOperation$Element$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Element;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$Element;->k(LcoeditOperation/CoeditOperation$Element;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
