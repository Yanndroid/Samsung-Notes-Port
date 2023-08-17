.class public final LcoeditOperation/CoeditOperation$SetAnnotations$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CoeditOperation$SetAnnotationsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOperation/CoeditOperation$SetAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOperation/CoeditOperation$SetAnnotations;",
        "LcoeditOperation/CoeditOperation$SetAnnotations$Builder;",
        ">;",
        "LcoeditOperation/CoeditOperation$SetAnnotationsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOperation/CoeditOperation$SetAnnotations;->i()LcoeditOperation/CoeditOperation$SetAnnotations;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOperation/i;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$SetAnnotations$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAnnotation(Ljava/lang/Iterable;)LcoeditOperation/CoeditOperation$SetAnnotations$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOperation/CoeditOperation$KeyValueUpdate;",
            ">;)",
            "LcoeditOperation/CoeditOperation$SetAnnotations$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$SetAnnotations;->a(LcoeditOperation/CoeditOperation$SetAnnotations;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAnnotation(ILcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;)LcoeditOperation/CoeditOperation$SetAnnotations$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$SetAnnotations;->b(LcoeditOperation/CoeditOperation$SetAnnotations;ILcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-object p0
.end method

.method public addAnnotation(ILcoeditOperation/CoeditOperation$KeyValueUpdate;)LcoeditOperation/CoeditOperation$SetAnnotations$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$SetAnnotations;->b(LcoeditOperation/CoeditOperation$SetAnnotations;ILcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-object p0
.end method

.method public addAnnotation(LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;)LcoeditOperation/CoeditOperation$SetAnnotations$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$SetAnnotations;->c(LcoeditOperation/CoeditOperation$SetAnnotations;LcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-object p0
.end method

.method public addAnnotation(LcoeditOperation/CoeditOperation$KeyValueUpdate;)LcoeditOperation/CoeditOperation$SetAnnotations$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$SetAnnotations;->c(LcoeditOperation/CoeditOperation$SetAnnotations;LcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-object p0
.end method

.method public clearAnnotation()LcoeditOperation/CoeditOperation$SetAnnotations$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$SetAnnotations;->d(LcoeditOperation/CoeditOperation$SetAnnotations;)V

    return-object p0
.end method

.method public clearEndIndex()LcoeditOperation/CoeditOperation$SetAnnotations$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$SetAnnotations;->e(LcoeditOperation/CoeditOperation$SetAnnotations;)V

    return-object p0
.end method

.method public getAnnotation(I)LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-virtual {v0, p1}, LcoeditOperation/CoeditOperation$SetAnnotations;->getAnnotation(I)LcoeditOperation/CoeditOperation$KeyValueUpdate;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotationCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$SetAnnotations;->getAnnotationCount()I

    move-result v0

    return v0
.end method

.method public getAnnotationList()Ljava/util/List;
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

    check-cast v0, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$SetAnnotations;->getAnnotationList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEndIndex()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$SetAnnotations;->getEndIndex()I

    move-result v0

    return v0
.end method

.method public removeAnnotation(I)LcoeditOperation/CoeditOperation$SetAnnotations$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$SetAnnotations;->f(LcoeditOperation/CoeditOperation$SetAnnotations;I)V

    return-object p0
.end method

.method public setAnnotation(ILcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;)LcoeditOperation/CoeditOperation$SetAnnotations$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$SetAnnotations;->g(LcoeditOperation/CoeditOperation$SetAnnotations;ILcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-object p0
.end method

.method public setAnnotation(ILcoeditOperation/CoeditOperation$KeyValueUpdate;)LcoeditOperation/CoeditOperation$SetAnnotations$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-static {v0, p1, p2}, LcoeditOperation/CoeditOperation$SetAnnotations;->g(LcoeditOperation/CoeditOperation$SetAnnotations;ILcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-object p0
.end method

.method public setEndIndex(I)LcoeditOperation/CoeditOperation$SetAnnotations$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$SetAnnotations;->h(LcoeditOperation/CoeditOperation$SetAnnotations;I)V

    return-object p0
.end method
