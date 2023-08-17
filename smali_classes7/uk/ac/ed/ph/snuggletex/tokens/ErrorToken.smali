.class public final Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;
.super Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
.source "SourceFile"


# instance fields
.field private final error:Luk/ac/ed/ph/snuggletex/InputError;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/InputError;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;)V
    .locals 6

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/InputError;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    sget-object v2, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ERROR:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    sget-object v4, Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;->START_NEW_XHTML_BLOCK:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    const/4 v0, 0x0

    new-array v5, v0, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;->error:Luk/ac/ed/ph/snuggletex/InputError;

    return-void
.end method


# virtual methods
.method public getError()Luk/ac/ed/ph/snuggletex/InputError;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;->error:Luk/ac/ed/ph/snuggletex/InputError;

    return-object v0
.end method
