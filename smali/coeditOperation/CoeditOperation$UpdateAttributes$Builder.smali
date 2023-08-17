.class public final LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CoeditOperation$UpdateAttributesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOperation/CoeditOperation$UpdateAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOperation/CoeditOperation$UpdateAttributes;",
        "LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;",
        ">;",
        "LcoeditOperation/CoeditOperation$UpdateAttributesOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOperation/CoeditOperation$UpdateAttributes;->g()LcoeditOperation/CoeditOperation$UpdateAttributes;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOperation/j;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllChange(Ljava/lang/Iterable;)LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOperation/CoeditOperation$KeyValueUpdate;",
            ">;)",
            "LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$UpdateAttributes;->a(LcoeditOperation/CoeditOperation$UpdateAttributes;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addChange(ILcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;)LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$UpdateAttributes;->b(LcoeditOperation/CoeditOperation$UpdateAttributes;ILcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-object p0
.end method

.method public addChange(ILcoeditOperation/CoeditOperation$KeyValueUpdate;)LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$UpdateAttributes;->b(LcoeditOperation/CoeditOperation$UpdateAttributes;ILcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-object p0
.end method

.method public addChange(LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;)LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$UpdateAttributes;->c(LcoeditOperation/CoeditOperation$UpdateAttributes;LcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-object p0
.end method

.method public addChange(LcoeditOperation/CoeditOperation$KeyValueUpdate;)LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$UpdateAttributes;->c(LcoeditOperation/CoeditOperation$UpdateAttributes;LcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-object p0
.end method

.method public clearChange()LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$UpdateAttributes;->d(LcoeditOperation/CoeditOperation$UpdateAttributes;)V

    return-object p0
.end method

.method public getChange(I)LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-virtual {v0, p1}, LcoeditOperation/CoeditOperation$UpdateAttributes;->getChange(I)LcoeditOperation/CoeditOperation$KeyValueUpdate;

    move-result-object p1

    return-object p1
.end method

.method public getChangeCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$UpdateAttributes;->getChangeCount()I

    move-result v0

    return v0
.end method

.method public getChangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation$KeyValueUpdate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$UpdateAttributes;->getChangeList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeChange(I)LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$UpdateAttributes;->e(LcoeditOperation/CoeditOperation$UpdateAttributes;I)V

    return-object p0
.end method

.method public setChange(ILcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;)LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$UpdateAttributes;->f(LcoeditOperation/CoeditOperation$UpdateAttributes;ILcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-object p0
.end method

.method public setChange(ILcoeditOperation/CoeditOperation$KeyValueUpdate;)LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$UpdateAttributes;->f(LcoeditOperation/CoeditOperation$UpdateAttributes;ILcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-object p0
.end method
