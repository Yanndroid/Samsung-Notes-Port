.class public Lorg/ccil/cowan/tagsoup/PYXScanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/Scanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    new-instance p0, Lorg/ccil/cowan/tagsoup/PYXScanner;

    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/PYXScanner;-><init>()V

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v2, Lorg/ccil/cowan/tagsoup/PYXWriter;

    invoke-direct {v2, v1}, Lorg/ccil/cowan/tagsoup/PYXWriter;-><init>(Ljava/io/Writer;)V

    invoke-interface {p0, v0, v2}, Lorg/ccil/cowan/tagsoup/Scanner;->scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V

    return-void
.end method


# virtual methods
.method public resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V
    .locals 8

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v1, :cond_0

    array-length v5, v1

    if-ge v5, v4, :cond_1

    :cond_0
    new-array v1, v4, [C

    :cond_1
    invoke-virtual {v3, p1, v4, v1, p1}, Ljava/lang/String;->getChars(II[CI)V

    aget-char v5, v1, p1

    const/16 v6, 0x28

    const/4 v7, 0x1

    if-eq v5, v6, :cond_c

    const/16 v6, 0x29

    if-eq v5, v6, :cond_a

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_7

    const/16 v6, 0x3f

    if-eq v5, v6, :cond_5

    const/16 v6, 0x41

    if-eq v5, v6, :cond_4

    const/16 v3, 0x45

    if-eq v5, v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {p2, v1, p1, p1}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    move v2, p1

    :cond_3
    add-int/lit8 v4, v4, -0x1

    invoke-interface {p2, v1, v7, v4}, Lorg/ccil/cowan/tagsoup/ScanHandler;->entity([CII)V

    goto :goto_0

    :cond_4
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    invoke-interface {p2, v1, v7, v5}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    add-int/lit8 v5, v3, 0x1

    sub-int/2addr v4, v3

    sub-int/2addr v4, v7

    invoke-interface {p2, v1, v5, v4}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aval([CII)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {p2, v1, p1, p1}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    move v2, p1

    :cond_6
    add-int/lit8 v4, v4, -0x1

    invoke-interface {p2, v1, v7, v4}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pi([CII)V

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {p2, v1, p1, p1}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    move v2, p1

    :cond_8
    const-string v5, "-\\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0xa

    aput-char v3, v1, p1

    invoke-interface {p2, v1, p1, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    goto :goto_0

    :cond_9
    add-int/lit8 v4, v4, -0x1

    invoke-interface {p2, v1, v7, v4}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    goto :goto_0

    :cond_a
    if-eqz v2, :cond_b

    invoke-interface {p2, v1, p1, p1}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    move v2, p1

    :cond_b
    add-int/lit8 v4, v4, -0x1

    invoke-interface {p2, v1, v7, v4}, Lorg/ccil/cowan/tagsoup/ScanHandler;->etag([CII)V

    goto/16 :goto_0

    :cond_c
    if-eqz v2, :cond_d

    invoke-interface {p2, v1, p1, p1}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    :cond_d
    add-int/lit8 v4, v4, -0x1

    invoke-interface {p2, v1, v7, v4}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    move v2, v7

    goto/16 :goto_0

    :cond_e
    invoke-interface {p2, v1, p1, p1}, Lorg/ccil/cowan/tagsoup/ScanHandler;->eof([CII)V

    return-void
.end method

.method public startCDATA()V
    .locals 0

    return-void
.end method
