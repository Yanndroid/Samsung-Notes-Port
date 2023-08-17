.class public final Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_INDENT_WIDTH:I = 0x4

.field public static final DEFAULT_MAX_DEPTH:I = 0x10

.field private static final EMPTY:Ljava/lang/String; = "(empty)"


# instance fields
.field private indentWidth:I

.field private maxDepth:I

.field private final result:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    iput p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->indentWidth:I

    const/16 p1, 0x10

    iput p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->maxDepth:I

    return-void
.end method

.method private appendArray([Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[]@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    if-nez v0, :cond_0

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string p2, "(empty)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, p3, 0x1

    invoke-direct {p0, v2}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->makeIndent(I)V

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    aget-object v4, p1, v0

    invoke-direct {p0, v4, p2}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->getElementDumpMode(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;)Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->appendObject(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->makeIndent(I)V

    :goto_1
    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendCollection(Ljava/util/Collection;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string p2, "(empty)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, p3, 0x1

    invoke-direct {p0, v2}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->makeIndent(I)V

    invoke-direct {p0, v0, p2}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->getElementDumpMode(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;)Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    move-result-object v3

    invoke-direct {p0, v0, v3, v2}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->appendObject(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->makeIndent(I)V

    :goto_1
    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendList(Ljava/util/List;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string p2, "(empty)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, v3}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->makeIndent(I)V

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, p2}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->getElementDumpMode(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;)Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->appendObject(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->makeIndent(I)V

    :goto_1
    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendMap(Ljava/util/Map;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string p2, "(empty)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, v3}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->makeIndent(I)V

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p2}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->getElementDumpMode(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;)Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    move-result-object v2

    invoke-direct {p0, v0, v2, v3}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->appendObject(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->makeIndent(I)V

    :goto_1
    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendObject(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->maxDepth:I

    if-le p3, v0, :cond_0

    iget-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Maximum graph depth exceeded by child Object of type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->IGNORE:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string p2, "null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->appendArray([Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->appendList(Ljava/util/List;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Set;

    invoke-direct {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->appendSet(Ljava/util/Set;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->appendMap(Ljava/util/Map;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->appendCollection(Ljava/util/Collection;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V

    goto :goto_0

    :cond_7
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$internal$util$DumpMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 p3, 0x2

    if-eq v0, p3, :cond_9

    const/4 p1, 0x3

    if-ne v0, p1, :cond_8

    goto :goto_0

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected DumpMode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    iget-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_a
    invoke-direct {p0, p1, p3}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->appendObjectDeep(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method private appendObjectDeep(Ljava/lang/Object;I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v3, v1, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v0, v5

    move v6, v0

    :goto_0
    if-ge v6, v4, :cond_7

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_0

    const-string v9, "getClass"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_0

    goto :goto_1

    :cond_0
    const-string v9, "is"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_6

    :goto_1
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-class v10, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;

    if-eqz v10, :cond_1

    invoke-interface {v10}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;->value()Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    move-result-object v10

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    sget-object v11, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->IGNORE:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    if-ne v10, v11, :cond_2

    goto :goto_6

    :cond_2
    const-string v11, "\n"

    const/4 v12, 0x1

    if-nez v0, :cond_3

    iget-object v0, v1, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v13, v12

    goto :goto_3

    :cond_3
    move v13, v0

    :goto_3
    add-int/lit8 v0, v2, 0x1

    invoke-direct {v1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->makeIndent(I)V

    iget-object v14, v1, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v12, :cond_4

    iget-object v8, v1, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v8, v1, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string v9, " => "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    new-array v8, v5, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v9, p1

    :try_start_1
    invoke-virtual {v7, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v10, :cond_5

    sget-object v8, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->TO_STRING:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    invoke-direct {v1, v7, v8}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->getElementDumpMode(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;)Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    move-result-object v10

    :cond_5
    invoke-direct {v1, v7, v10, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->appendObject(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V

    iget-object v0, v1, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v9, p1

    :goto_4
    iget-object v7, v1, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string v8, "[Caused Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v0, v13

    goto :goto_7

    :cond_6
    :goto_6
    move-object/from16 v9, p1

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_8

    invoke-direct {v1, v2}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->makeIndent(I)V

    :cond_8
    iget-object v0, v1, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendSet(Ljava/util/Set;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string p2, "(empty)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, p3, 0x1

    invoke-direct {p0, v2}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->makeIndent(I)V

    invoke-direct {p0, v0, p2}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->getElementDumpMode(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;)Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    move-result-object v3

    invoke-direct {p0, v0, v3, v2}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->appendObject(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->makeIndent(I)V

    :goto_1
    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static dumpObject(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;

    invoke-direct {v1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, p0, p1}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->appendObject(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getElementDumpMode(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;)Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;->value()Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private makeIndent(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v1, p1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public appendObject(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->TO_STRING:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->getElementDumpMode(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;)Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->appendObject(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;)V

    return-void
.end method

.method public appendObject(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;)V
    .locals 1

    const-string v0, "dumpMode"

    invoke-static {p2, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->appendObject(Ljava/lang/Object;Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;I)V

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->result:Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getIndentWidth()I
    .locals 1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->indentWidth:I

    return v0
.end method

.method public getMaxDepth()I
    .locals 1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->maxDepth:I

    return v0
.end method

.method public setIndentWidth(I)V
    .locals 0

    iput p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->indentWidth:I

    return-void
.end method

.method public setMaxDepth(I)V
    .locals 0

    iput p1, p0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumper;->maxDepth:I

    return-void
.end method
