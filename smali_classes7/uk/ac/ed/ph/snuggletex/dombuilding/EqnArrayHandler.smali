.class public final Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;


# static fields
.field public static final COLUMN_ALIGNMENTS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "right"

    const-string v1, "center"

    const-string v2, "left"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler;->COLUMN_ALIGNMENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEnvironment(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V
    .locals 10

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    invoke-static {v0}, Luk/ac/ed/ph/snuggletex/dombuilding/TabularHandler;->computeTableDimensions(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDEM01:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p1, p2, p3, v2, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    return-void

    :cond_0
    new-instance v9, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler$1;

    invoke-direct {v9, p0, p1, v0}, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler$1;-><init>(Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler;Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;I)V

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v7

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v4 .. v9}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->buildMathElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;ZLuk/ac/ed/ph/snuggletex/internal/DOMBuilder$MathContentBuilderCallback;)V

    return-void
.end method
