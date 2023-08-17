.class public final Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;
    }
.end annotation


# static fields
.field private static final BEGIN:Ljava/lang/String; = "\\begin"

.field private static final BEGIN_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEFAULT_INDENT_WIDTH:I = 0x2

.field public static final DEFAULT_MAX_INDENT_LEVEL:I = 0xa

.field private static final END:Ljava/lang/String; = "\\end"

.field private static final END_PATTERN:Ljava/util/regex/Pattern;

.field private static final LINE_SEPARATOR:Ljava/lang/String;


# instance fields
.field private blankLineCount:I

.field private compactingBlankLines:Z

.field private indentLevel:I

.field private indentWidth:I

.field private maxIndentLevel:I

.field private final outputWriter:Ljava/io/Writer;

.field private parsingState:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

.field private verbatimMode:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->LINE_SEPARATOR:Ljava/lang/String;

    const-string v0, "\\\\begin\\s*+\\{(.+?)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->BEGIN_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\\\end\\s*+\\{(.+?)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->END_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->outputWriter:Ljava/io/Writer;

    const/4 p1, 0x2

    iput p1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->indentWidth:I

    const/16 p1, 0xa

    iput p1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->maxIndentLevel:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->compactingBlankLines:Z

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->reset()V

    return-void
.end method

.method private createIndent(I)V
    .locals 3

    iget v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->maxIndentLevel:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->indentWidth:I

    mul-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->outputWriter:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleLine(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->LINE_SEPARATOR:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->verbatimMode:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-boolean v1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->verbatimMode:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    sget-object v4, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$utilities$LaTeXIndenter$ParsingState:[I

    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->parsingState:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_9

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v0, 0x3

    if-eq v4, v0, :cond_4

    const/4 v0, 0x4

    if-ne v4, v0, :cond_3

    if-eqz v1, :cond_2

    goto/16 :goto_5

    :cond_2
    sget-object v0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;->DEFAULT:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->parsingState:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\end"

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected switch case "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->parsingState:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    sget-object v0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;->DEFAULT:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->parsingState:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\begin"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->outputWriter:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->compactingBlankLines:Z

    if-nez v0, :cond_8

    :goto_2
    iget v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->blankLineCount:I

    if-ge v3, v0, :cond_8

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->outputWriter:Ljava/io/Writer;

    sget-object v1, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    iput v2, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->blankLineCount:I

    sget-object v0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;->DEFAULT:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->parsingState:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    goto :goto_4

    :cond_9
    if-eqz v1, :cond_a

    sget-object p1, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;->EMPTY_LINES:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->parsingState:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    :goto_3
    iget p1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->blankLineCount:I

    add-int/2addr p1, v3

    iput p1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->blankLineCount:I

    goto :goto_5

    :cond_a
    :goto_4
    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->handleLineInDefaultState(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method private handleLineFragmentInDefaultState(Ljava/lang/String;)V
    .locals 6

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->verbatimMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "\\end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->indentLevel:I

    sub-int/2addr v0, v2

    iput v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->indentLevel:I

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->indentLevel:I

    invoke-direct {p0, v3}, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->createIndent(I)V

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->outputWriter:Ljava/io/Writer;

    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->outputWriter:Ljava/io/Writer;

    sget-object v4, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    sget-object v3, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->END_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const-string v5, "verbatim"

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->verbatimMode:Z

    if-nez v4, :cond_3

    iget v4, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->indentLevel:I

    sub-int/2addr v4, v2

    iput v4, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->indentLevel:I

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->verbatimMode:Z

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    iget v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->indentLevel:I

    add-int/2addr v0, v2

    iput v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->indentLevel:I

    :cond_5
    sget-object v0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->BEGIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->verbatimMode:Z

    if-nez v0, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v2, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->verbatimMode:Z

    goto :goto_3

    :cond_7
    iget v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->indentLevel:I

    add-int/2addr v0, v2

    iput v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->indentLevel:I

    goto :goto_3

    :cond_8
    return-void
.end method

.method private handleLineInDefaultState(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\\begin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->handleLineFragmentInDefaultState(Ljava/lang/String;)V

    sget-object p1, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;->BEGIN_DECLARATION:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    :goto_0
    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->parsingState:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    goto :goto_1

    :cond_0
    const-string v0, "\\end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->handleLineFragmentInDefaultState(Ljava/lang/String;)V

    sget-object p1, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;->END_DECLARATION:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->handleLineFragmentInDefaultState(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getIndentWidth()I
    .locals 1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->indentWidth:I

    return v0
.end method

.method public getMaxIndentLevel()I
    .locals 1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->maxIndentLevel:I

    return v0
.end method

.method public isCompactingBlankLines()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->compactingBlankLines:Z

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->indentLevel:I

    iput-boolean v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->verbatimMode:Z

    iput v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->blankLineCount:I

    sget-object v0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;->DEFAULT:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->parsingState:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    return-void
.end method

.method public run(Ljava/io/Reader;)V
    .locals 2

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->reset()V

    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->handleLine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    throw v0
.end method

.method public setCompactingBlankLines(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->compactingBlankLines:Z

    return-void
.end method

.method public setIndentWidth(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->indentWidth:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "indentWidth must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxIndentLevel(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;->maxIndentLevel:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxIndentLevel must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
