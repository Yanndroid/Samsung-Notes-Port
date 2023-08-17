.class public final Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;
.super Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
.source "SourceFile"


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;",
            "Luk/ac/ed/ph/snuggletex/tokens/TokenType;",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            "Ljava/util/EnumMap<",
            "Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Ljava/util/EnumMap;)V

    return-void
.end method

.method public varargs constructor <init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    return-void
.end method
