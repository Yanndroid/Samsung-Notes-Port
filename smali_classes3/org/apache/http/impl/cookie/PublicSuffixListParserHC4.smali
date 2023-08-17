.class public Lorg/apache/http/impl/cookie/PublicSuffixListParserHC4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final MAX_LINE_LEN:I = 0x100


# instance fields
.field private final filter:Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixListParserHC4;->filter:Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;

    return-void
.end method

.method private readLine(Ljava/io/Reader;Ljava/lang/StringBuilder;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    int-to-char v5, v2

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    :goto_1
    if-eq v2, v4, :cond_1

    return v3

    :cond_1
    return v0

    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v3

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x100

    if-gt v2, v3, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Line too long"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public parse(Ljava/io/Reader;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-nez v4, :cond_0

    iget-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixListParserHC4;->filter:Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;->setPublicSuffixes(Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixListParserHC4;->filter:Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;

    invoke-virtual {p1, v1}, Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;->setExceptions(Ljava/util/Collection;)V

    return-void

    :cond_0
    invoke-direct {p0, v2, p1}, Lorg/apache/http/impl/cookie/PublicSuffixListParserHC4;->readLine(Ljava/io/Reader;Ljava/lang/StringBuilder;)Z

    move-result v4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
