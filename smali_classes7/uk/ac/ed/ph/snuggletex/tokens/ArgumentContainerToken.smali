.class public final Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;
.super Luk/ac/ed/ph/snuggletex/tokens/Token;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Luk/ac/ed/ph/snuggletex/tokens/Token;",
        "Ljava/lang/Iterable<",
        "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
        ">;"
    }
.end annotation

.annotation runtime Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;
    value = .enum Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->DEEP:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;


# instance fields
.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    sput-object v0, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->EMPTY_ARRAY:[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ARGUMENT_CONTAINER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const/4 v1, 0x0

    new-array v1, v1, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    invoke-direct {p0, p1, v0, p2, v1}, Luk/ac/ed/ph/snuggletex/tokens/Token;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->contents:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;",
            ")V"
        }
    .end annotation

    sget-object v0, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ARGUMENT_CONTAINER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const/4 v1, 0x0

    new-array v1, v1, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    invoke-direct {p0, p1, v0, p2, v1}, Luk/ac/ed/ph/snuggletex/tokens/Token;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->contents:Ljava/util/List;

    iput-object p4, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->computedStyle:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    return-void
.end method

.method public static createEmptyContainer(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object p0

    invoke-direct {v1, p0, p1, v0, p2}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    return-object v1
.end method

.method public static createFromContiguousTokens(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;IILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/tokens/Token;",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            "Ljava/util/List<",
            "+",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;II",
            "Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;",
            ")",
            "Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;"
        }
    .end annotation

    if-gt p3, p4, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object p0

    add-int/lit8 v0, p4, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v0

    invoke-virtual {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->rightOuterSpan(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object p0

    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2, p3, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p0, p1, v1, p5}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p5}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createEmptyContainer(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "startIndex must be <= endIndex"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromContiguousTokens(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/tokens/Token;",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            "Ljava/util/List<",
            "+",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;",
            ")",
            "Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromContiguousTokens(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;IILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p0

    return-object p0
.end method

.method public static createFromSingleToken(Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;
    .locals 1

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromSingleToken(Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p0

    return-object p0
.end method

.method public static createFromSingleToken(Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object p1

    invoke-direct {v1, p1, p0, v0, p2}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    return-object v1
.end method


# virtual methods
.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;"
        }
    .end annotation

    .annotation runtime Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;
        value = .enum Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->DEEP:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->contents:Ljava/util/List;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
