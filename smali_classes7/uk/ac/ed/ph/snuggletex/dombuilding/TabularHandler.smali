.class public final Luk/ac/ed/ph/snuggletex/dombuilding/TabularHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;
.implements Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeTableDimensions(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)[I
    .locals 8

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v4, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_HLINE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v3, v4}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v4

    sget-object v5, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ERROR:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_TABLE_ROW:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v3, v4}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v4

    const-string v5, "Did not expect to find token "

    if-eqz v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v7, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_TABLE_COLUMN:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v6, v7}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " within a table row"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-le v4, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_4
    new-instance p0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " within a top-level table content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/4 p0, 0x2

    new-array p0, p0, [I

    aput v1, p0, v0

    const/4 v0, 0x1

    aput v2, p0, v0

    return-object p0
.end method


# virtual methods
.method public handleCommand(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 4

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDETB3:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getCommand()Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v2

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getTeXName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, p3, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    return-void
.end method

.method public handleEnvironment(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p3 .. p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v2

    invoke-static {v2}, Luk/ac/ed/ph/snuggletex/dombuilding/TabularHandler;->computeTableDimensions(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p3 .. p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual/range {p3 .. p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v7

    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->extract()Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v6

    move v10, v9

    move-object v11, v8

    :goto_0
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-ge v9, v12, :cond_7

    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_2

    :cond_0
    const/16 v13, 0x63

    if-eq v12, v13, :cond_4

    const/16 v13, 0x6c

    if-eq v12, v13, :cond_3

    const/16 v13, 0x72

    if-eq v12, v13, :cond_2

    const/16 v13, 0x7c

    if-eq v12, v13, :cond_1

    sget-object v13, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDETB1:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v14, v6

    invoke-virtual {v0, v1, v5, v13, v14}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    goto :goto_1

    :cond_1
    move v10, v3

    goto :goto_1

    :cond_2
    const-string v11, "align-right"

    goto :goto_1

    :cond_3
    const-string v11, "align-left"

    goto :goto_1

    :cond_4
    const-string v11, "align-center"

    :goto_1
    if-eqz v11, :cond_6

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_5

    const-string v10, "left-border"

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v6

    move-object v11, v8

    :cond_6
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDETB2:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v5, v2, v3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    return-void

    :cond_8
    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const-string v8, "right-border"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v2, :cond_a

    sget-object v7, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDETB0:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v0, v1, v5, v7, v8}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    :cond_a
    const-string v5, "table"

    invoke-virtual {v0, v1, v5}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v5, "tabular"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->applyCSSStyle(Lorg/w3c/dom/Element;[Ljava/lang/String;)V

    const-string v7, "tbody"

    invoke-virtual {v0, v1, v7}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p3 .. p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v8

    invoke-virtual {v8}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v8

    move v9, v6

    move v10, v9

    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_16

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v12, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_HLINE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v11, v12}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v12

    if-eqz v12, :cond_b

    move/from16 v17, v2

    move v10, v3

    move/from16 v16, v6

    goto/16 :goto_7

    :cond_b
    sget-object v12, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_TABLE_ROW:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v11, v12}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v12

    const-string v13, "td"

    const-string v14, "tr"

    if-eqz v12, :cond_14

    add-int/lit8 v12, v9, 0x1

    move v15, v6

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_d

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v15, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_HLINE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v3, v15}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v12, v12, 0x1

    const/4 v15, 0x1

    goto :goto_4

    :cond_c
    move v15, v6

    :cond_d
    check-cast v11, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {v11}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v14}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    move v14, v6

    :goto_5
    if-ge v14, v2, :cond_12

    invoke-virtual {v0, v11, v13}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v7}, Ljava/util/List;->clear()V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v17, v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_e

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_e
    if-eqz v10, :cond_f

    const-string v2, "top-border"

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    if-eqz v15, :cond_10

    const-string v2, "bottom-border"

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->applyCSSStyle(Lorg/w3c/dom/Element;[Ljava/lang/String;)V

    if-ge v14, v12, :cond_11

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v2

    const/16 v16, 0x0

    aget-object v2, v2, v16

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v2

    move-object/from16 p2, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v6, v2, v3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Ljava/util/List;Z)V

    goto :goto_6

    :cond_11
    move-object/from16 p2, v3

    const/4 v3, 0x1

    const/16 v16, 0x0

    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p2

    move/from16 v6, v16

    move/from16 v2, v17

    goto :goto_5

    :cond_12
    move/from16 v17, v2

    move/from16 v16, v6

    const/4 v3, 0x1

    if-eqz v15, :cond_13

    goto :goto_8

    :cond_13
    move/from16 v10, v16

    goto :goto_7

    :cond_14
    move/from16 v17, v2

    move/from16 v16, v6

    invoke-virtual {v11}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v2

    sget-object v6, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ERROR:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v2, v6, :cond_15

    invoke-virtual {v0, v1, v14}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {v0, v2, v13}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    check-cast v11, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    invoke-virtual {v0, v2, v11}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendErrorElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;)Lorg/w3c/dom/Element;

    :goto_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v16

    move/from16 v2, v17

    goto/16 :goto_3

    :cond_15
    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string v1, "Expected table contents to be \\hline or table rows"

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_8
    return-void
.end method
