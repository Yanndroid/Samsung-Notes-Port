.class public abstract Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
.super Luk/ac/ed/ph/snuggletex/tokens/Token;
.source "SourceFile"


# instance fields
.field public final textFlowContext:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;


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

    invoke-direct {p0, p1, p2, p3, p5}, Luk/ac/ed/ph/snuggletex/tokens/Token;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;)V

    iput-object p4, p0, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;->textFlowContext:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    return-void
.end method

.method public varargs constructor <init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Luk/ac/ed/ph/snuggletex/tokens/Token;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    iput-object p4, p0, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;->textFlowContext:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    return-void
.end method


# virtual methods
.method public getTextFlowContext()Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;->textFlowContext:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    return-object v0
.end method
