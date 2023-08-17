.class public Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModeState"
.end annotation


# instance fields
.field public foundTerminator:Z

.field public latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

.field public final startPosition:I

.field public final terminator:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;

.field public final tokenisationMode:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

.field public final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;ILuk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokenisationMode:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    iput p3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->startPosition:I

    iput-object p4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->terminator:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->foundTerminator:Z

    return-void
.end method


# virtual methods
.method public computeLastTokenEndIndex()I
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->startPosition:I

    return v0

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v0

    iget v0, v0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->endIndex:I

    return v0
.end method
