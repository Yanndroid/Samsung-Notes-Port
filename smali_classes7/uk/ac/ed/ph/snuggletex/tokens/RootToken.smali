.class public final Luk/ac/ed/ph/snuggletex/tokens/RootToken;
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

.field private final workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v0

    sget-object v2, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ROOT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    sget-object v3, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->PARAGRAPH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    new-array v1, v1, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    invoke-direct {p0, v0, v2, v3, v1}, Luk/ac/ed/ph/snuggletex/tokens/Token;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/tokens/RootToken;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/tokens/RootToken;->contents:Ljava/util/List;

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

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/RootToken;->contents:Ljava/util/List;

    return-object v0
.end method

.method public getWorkingDocument()Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/RootToken;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

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

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/RootToken;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
