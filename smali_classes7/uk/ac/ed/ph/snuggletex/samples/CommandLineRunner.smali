.class public Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final args:[Ljava/lang/String;

.field private final inputFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isQuiet:Z

.field private requestedWebOutput:Z

.field private snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->args:[Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->inputFiles:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    const/4 p1, 0x0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->requestedWebOutput:Z

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->isQuiet:Z

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;

    invoke-direct {v0, p0}, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->execute()I

    move-result p0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private parseBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "false"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to have value true, false, on, off, 1 or 0, but got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method private parseCommandLineArguments()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    :goto_0
    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->args:[Ljava/lang/String;

    array-length v5, v4

    const-string v6, "-web"

    const/4 v7, 0x1

    if-ge v2, v5, :cond_3

    aget-object v5, v4, v2

    array-length v8, v4

    sub-int/2addr v8, v7

    if-ge v2, v8, :cond_0

    add-int/lit8 v8, v2, 0x1

    aget-object v4, v4, v8

    goto :goto_1

    :cond_0
    move-object v4, v0

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_1

    :try_start_0
    invoke-static {v4}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;->valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;

    move-result-object v3

    iput-boolean v7, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->requestedWebOutput:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown web page type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Legal values are"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;->values()[Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No value provided for -web option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_2
    add-int/2addr v2, v7

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->requestedWebOutput:Z

    if-eqz v2, :cond_4

    invoke-static {v3}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptionsTemplates;->createWebPageOptions(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;)Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    move-result-object v2

    goto :goto_3

    :cond_4
    new-instance v2, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {v2}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;-><init>()V

    :goto_3
    iput-object v2, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    move v2, v1

    :goto_4
    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->args:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_27

    aget-object v4, v3, v2

    array-length v5, v3

    sub-int/2addr v5, v7

    if-ge v2, v5, :cond_5

    add-int/lit8 v5, v2, 0x1

    aget-object v3, v3, v5

    goto :goto_5

    :cond_5
    move-object v3, v0

    :goto_5
    const-string v5, "-"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->inputFiles:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_7
    const-string v8, "-?"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_26

    const-string v8, "-h"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_26

    const-string v8, "-help"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_a

    :cond_8
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    :cond_9
    const-string v8, "-quiet"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iput-boolean v7, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->isQuiet:Z

    goto/16 :goto_9

    :cond_a
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v3, :cond_25

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "indent"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-gez v3, :cond_b

    goto :goto_7

    :cond_b
    move v4, v1

    goto :goto_8

    :catch_1
    move v3, v1

    :goto_7
    move v4, v7

    :goto_8
    if-nez v4, :cond_d

    if-nez v3, :cond_c

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v3, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setIndenting(Z)V

    goto :goto_6

    :cond_c
    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4, v7}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setIndenting(Z)V

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setIndent(I)V

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Indent amount must be a non-negative integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v8, "errors"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    :try_start_2
    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-static {v3}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    move-result-object v5

    invoke-virtual {v4, v5}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setErrorOutputOptions(Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown errors option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Legal values are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->values()[Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const-string v8, "inlinecss"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {p0, v5, v3}, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->parseBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setInliningCSS(Z)V

    goto/16 :goto_6

    :cond_10
    const-string v8, "xhtmlprefix"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_11

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setXHTMLPrefix(Ljava/lang/String;)V

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v3, v7}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setPrefixingXHTML(Z)V

    goto/16 :goto_6

    :cond_11
    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v3, v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setPrefixingXHTML(Z)V

    goto/16 :goto_6

    :cond_12
    const-string v8, "mathmlprefix"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_13

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setMathMLPrefix(Ljava/lang/String;)V

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v3, v7}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setPrefixingMathML(Z)V

    goto/16 :goto_6

    :cond_13
    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v3, v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setPrefixingMathML(Z)V

    goto/16 :goto_6

    :cond_14
    const-string v8, "snugglexmlprefix"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_15

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setSnuggleXMLPrefix(Ljava/lang/String;)V

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v3, v7}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setPrefixingSnuggleXML(Z)V

    goto/16 :goto_6

    :cond_15
    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v3, v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setPrefixingSnuggleXML(Z)V

    goto/16 :goto_6

    :cond_16
    const-string v8, "annotatemathml"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {p0, v5, v3}, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->parseBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setAddingMathSourceAnnotations(Z)V

    goto/16 :goto_6

    :cond_17
    const-string v8, "mathvariantmapping"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {p0, v5, v3}, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->parseBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setMathVariantMapping(Z)V

    goto/16 :goto_6

    :cond_18
    const-string v8, "enc"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setEncoding(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_19
    const-string v8, "xmldecl"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {p0, v5, v3}, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->parseBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setIncludingXMLDeclaration(Z)V

    goto/16 :goto_6

    :cond_1a
    const-string v8, "entities"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {p0, v5, v3}, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->parseBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setUsingNamedEntities(Z)V

    goto/16 :goto_6

    :cond_1b
    const-string v8, "dtpublic"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setDoctypePublic(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1c
    const-string v8, "dtsystem"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setDoctypeSystem(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1d
    const-string v8, "ctype"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1e
    const-string v8, "lang"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setLang(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1f
    const-string v8, "title"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_20
    const-string v8, "head"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {p0, v5, v3}, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->parseBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setAddingTitleHeading(Z)V

    goto/16 :goto_6

    :cond_21
    const-string v8, "style"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {p0, v5, v3}, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->parseBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setIncludingStyleElement(Z)V

    goto/16 :goto_6

    :cond_22
    const-string v8, "css"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    new-array v5, v7, [Ljava/lang/String;

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->addCSSStylesheetURLs([Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_23
    const-string v8, "clientxsl"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    new-array v5, v7, [Ljava/lang/String;

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->addClientSideXSLTStylesheetURLs([Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value provided for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " option"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_9
    add-int/2addr v2, v7

    goto/16 :goto_4

    :cond_26
    :goto_a
    return v1

    :cond_27
    return v7
.end method

.method private showHelp()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "For help and usage, use the -? option"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private showUsage()V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "uk/ac/ed/ph/snuggletex/command-line-usage.txt"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/util/IOUtilities;->transfer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    const-string v2, "Unexpected Exception printing out usage info"

    invoke-direct {v1, v2, v0}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public execute()I
    .locals 5

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->args:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->showHelp()V

    return v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->parseCommandLineArguments()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->showUsage()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    return v1

    :cond_1
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->inputFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "No input files specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->showHelp()V

    return v1

    :cond_2
    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;-><init>()V

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->createSession()Luk/ac/ed/ph/snuggletex/SnuggleSession;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->inputFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Luk/ac/ed/ph/snuggletex/SnuggleInput;

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Ljava/io/InputStream;)V

    goto :goto_2

    :cond_3
    new-instance v3, Luk/ac/ed/ph/snuggletex/SnuggleInput;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Ljava/io/File;)V

    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parseInput(Luk/ac/ed/ph/snuggletex/SnuggleInput;)Z

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->requestedWebOutput:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;->FLUSH:Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;

    invoke-virtual {v0, v1, v2, v3}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->writeWebPage(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;Ljava/io/OutputStream;Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;)Z

    goto :goto_3

    :cond_5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->snuggleOptions:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v0, v2}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->buildXMLString(Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got IOException running SnuggleTeX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4
    iget-boolean v1, p0, Luk/ac/ed/ph/snuggletex/samples/CommandLineRunner;->isQuiet:Z

    if-nez v1, :cond_6

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/ac/ed/ph/snuggletex/InputError;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v1}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->formatErrorAsString(Luk/ac/ed/ph/snuggletex/InputError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    return v0

    :catch_1
    move-exception v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
