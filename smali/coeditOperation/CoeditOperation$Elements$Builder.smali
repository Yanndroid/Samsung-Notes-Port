.class public final LcoeditOperation/CoeditOperation$Elements$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CoeditOperation$ElementsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOperation/CoeditOperation$Elements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOperation/CoeditOperation$Elements;",
        "LcoeditOperation/CoeditOperation$Elements$Builder;",
        ">;",
        "LcoeditOperation/CoeditOperation$ElementsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOperation/CoeditOperation$Elements;->g()LcoeditOperation/CoeditOperation$Elements;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOperation/d;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$Elements$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllElement(Ljava/lang/Iterable;)LcoeditOperation/CoeditOperation$Elements$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOperation/CoeditOperation$Element;",
            ">;)",
            "LcoeditOperation/CoeditOperation$Elements$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$Elements;->a(LcoeditOperation/CoeditOperation$Elements;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addElement(ILcoeditOperation/CoeditOperation$Element$Builder;)LcoeditOperation/CoeditOperation$Elements$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Elements;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation$Element;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$Elements;->b(LcoeditOperation/CoeditOperation$Elements;ILcoeditOperation/CoeditOperation$Element;)V

    return-object p0
.end method

.method public addElement(ILcoeditOperation/CoeditOperation$Element;)LcoeditOperation/CoeditOperation$Elements$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$Elements;->b(LcoeditOperation/CoeditOperation$Elements;ILcoeditOperation/CoeditOperation$Element;)V

    return-object p0
.end method

.method public addElement(LcoeditOperation/CoeditOperation$Element$Builder;)LcoeditOperation/CoeditOperation$Elements$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Elements;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$Element;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$Elements;->c(LcoeditOperation/CoeditOperation$Elements;LcoeditOperation/CoeditOperation$Element;)V

    return-object p0
.end method

.method public addElement(LcoeditOperation/CoeditOperation$Element;)LcoeditOperation/CoeditOperation$Elements$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$Elements;->c(LcoeditOperation/CoeditOperation$Elements;LcoeditOperation/CoeditOperation$Element;)V

    return-object p0
.end method

.method public clearElement()LcoeditOperation/CoeditOperation$Elements$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$Elements;->d(LcoeditOperation/CoeditOperation$Elements;)V

    return-object p0
.end method

.method public getElement(I)LcoeditOperation/CoeditOperation$Element;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Elements;

    invoke-virtual {v0, p1}, LcoeditOperation/CoeditOperation$Elements;->getElement(I)LcoeditOperation/CoeditOperation$Element;

    move-result-object p1

    return-object p1
.end method

.method public getElementCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Elements;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$Elements;->getElementCount()I

    move-result v0

    return v0
.end method

.method public getElementList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation$Element;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Elements;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$Elements;->getElementList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeElement(I)LcoeditOperation/CoeditOperation$Elements$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$Elements;->e(LcoeditOperation/CoeditOperation$Elements;I)V

    return-object p0
.end method

.method public setElement(ILcoeditOperation/CoeditOperation$Element$Builder;)LcoeditOperation/CoeditOperation$Elements$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Elements;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation$Element;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$Elements;->f(LcoeditOperation/CoeditOperation$Elements;ILcoeditOperation/CoeditOperation$Element;)V

    return-object p0
.end method

.method public setElement(ILcoeditOperation/CoeditOperation$Element;)LcoeditOperation/CoeditOperation$Elements$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$Elements;->f(LcoeditOperation/CoeditOperation$Elements;ILcoeditOperation/CoeditOperation$Element;)V

    return-object p0
.end method
