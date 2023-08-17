.class public final Luk/ac/ed/ph/snuggletex/dombuilding/HSpaceHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertLaTeXSize(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->extract()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "\\s*(-?[\\d\\.]+)\\s*(\\w+)\\s*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_0

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDEUN0:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p1, p2, p3, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    return-object v3

    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "pt"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "in"

    if-nez v8, :cond_6

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "cm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "mm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "em"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "ex"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    const-string v8, "pc"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/high16 p1, 0x41400000    # 12.0f

    mul-float/2addr v2, p1

    :goto_0
    move-object v1, v7

    goto :goto_2

    :cond_2
    const-string v8, "bp"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 p1, 0x42900000    # 72.0f

    div-float/2addr v2, p1

    move-object v1, v9

    goto :goto_2

    :cond_3
    const-string v8, "dd"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const p1, 0x449ac000    # 1238.0f

    mul-float/2addr v2, p1

    const p1, 0x4490a000    # 1157.0f

    :goto_1
    div-float/2addr v2, p1

    goto :goto_0

    :cond_4
    const-string v8, "sp"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/high16 p1, 0x47800000    # 65536.0f

    goto :goto_1

    :cond_5
    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDEUN2:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    invoke-virtual {p1, p2, p3, v2, v6}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    return-object v3

    :cond_6
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDEUN1:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v4

    aput-object v0, v6, v5

    invoke-virtual {p1, p2, p3, v1, v6}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    return-object v3
.end method

.method public handleCommand(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 3

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Luk/ac/ed/ph/snuggletex/dombuilding/HSpaceHandler;->convertLaTeXSize(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getLatexMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object p3

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    if-ne p3, v2, :cond_1

    const-string p3, "mspace"

    invoke-virtual {p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string p2, "width"

    invoke-interface {p1, p2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p3, "span"

    invoke-virtual {p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "margin-left:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";font-size:0"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "style"

    invoke-interface {p2, v0, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "\u00a0"

    invoke-virtual {p1, p2, p3, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendTextNode(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    :goto_0
    return-void
.end method
