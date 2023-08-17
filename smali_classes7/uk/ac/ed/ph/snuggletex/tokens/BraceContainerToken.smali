.class public final Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;
.super Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
        "Ljava/lang/Iterable<",
        "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
        ">;"
    }
.end annotation


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
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;)V
    .locals 6
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

    sget-object v2, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->BRACE_CONTAINER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const/4 v0, 0x0

    new-array v5, v0, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;->contents:Ljava/util/List;

    return-void
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

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;->contents:Ljava/util/List;

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

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
