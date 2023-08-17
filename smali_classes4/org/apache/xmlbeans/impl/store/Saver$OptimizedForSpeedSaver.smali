.class final Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;
.super Lorg/apache/xmlbeans/impl/store/Saver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OptimizedForSpeedSaver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver$SaverIOException;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _buf:[C

.field public _w:Ljava/io/Writer;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Saver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    const/16 p1, 0x400

    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_w:Ljava/io/Writer;

    return-void
.end method

.method private emit(C)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_w:Ljava/io/Writer;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver$SaverIOException;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver$SaverIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method private emit(CC)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    const/4 p1, 0x1

    aput-char p2, v0, p1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_w:Ljava/io/Writer;

    const/4 p2, 0x2

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver$SaverIOException;

    invoke-direct {p2, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver$SaverIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method private emit(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_w:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver$SaverIOException;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver$SaverIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method private emit([CII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_w:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver$SaverIOException;

    invoke-direct {p2, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver$SaverIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method private emitAttrHelper(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(C)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emitName(Lorg/apache/poi/javax/xml/namespace/QName;Z)V

    const/16 p1, 0x3d

    const/16 v0, 0x22

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(CC)V

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emitAttrValue(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(C)V

    return-void
.end method

.method private emitAttrValue(Ljava/lang/CharSequence;)V
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_0

    const-string v2, "&lt;"

    :goto_1
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    const-string v2, "&amp;"

    goto :goto_1

    :cond_1
    const/16 v3, 0x22

    if-ne v2, v3, :cond_2

    const-string v2, "&quot;"

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(C)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private emitLiteral(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x22

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(C)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(C)V

    return-void
.end method

.method private emitName(Lorg/apache/poi/javax/xml/namespace/QName;Z)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver;->getUriMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver;->getNonDefaultUriMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    const/16 p2, 0x3a

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(C)V

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    return-void
.end method

.method private emitNamespacesHelper()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->iterateMappings()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->hasMapping()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(C)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emitXmlns(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->nextMapping()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private entitizeAndWriteCommentText(I)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    const/16 v4, 0x2d

    if-ge v1, p1, :cond_4

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    aget-char v5, v5, v1

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->isBadChar(C)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    const/16 v4, 0x3f

    aput-char v4, v3, v1

    goto :goto_2

    :cond_0
    if-ne v5, v4, :cond_2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    aput-char v3, v2, v1

    goto :goto_1

    :cond_1
    move v2, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v0

    :goto_2
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    array-length v3, v3

    if-ne v1, v3, :cond_3

    move v1, v0

    :cond_3
    add-int/2addr v1, v7

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    add-int/lit8 v2, p1, -0x1

    aget-char v5, v1, v2

    if-ne v5, v4, :cond_5

    aput-char v3, v1, v2

    :cond_5
    invoke-direct {p0, v1, v0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit([CII)V

    return-void
.end method

.method private entitizeAndWritePIText(I)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_3

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    aget-char v3, v3, v1

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->isBadChar(C)Z

    move-result v4

    const/16 v5, 0x3f

    if-eqz v4, :cond_0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    aput-char v5, v3, v1

    move v3, v5

    :cond_0
    const/16 v4, 0x3e

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    const/16 v3, 0x20

    aput-char v3, v2, v1

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    if-ne v3, v5, :cond_1

    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    invoke-direct {p0, v1, v0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit([CII)V

    return-void
.end method

.method private entitizeAndWriteText(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    aget-char v3, v2, v0

    const/16 v4, 0x26

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_0

    goto :goto_2

    :cond_0
    sub-int v3, v0, v1

    invoke-direct {p0, v2, v1, v3}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit([CII)V

    const-string v1, "&lt;"

    goto :goto_1

    :cond_1
    sub-int v3, v0, v1

    invoke-direct {p0, v2, v1, v3}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit([CII)V

    const-string v1, "&amp;"

    :goto_1
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit([CII)V

    return-void
.end method

.method public static save(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/io/Writer;)V
    .locals 1

    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/io/Writer;)V

    :goto_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver;->process()Z

    move-result p0
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver$SaverIOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method


# virtual methods
.method public emitComment(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 1

    const-string v0, "<!--"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->push()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->next()Z

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emitCommentText(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->pop()V

    const-string p1, "-->"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public emitCommentText(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 7

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getChars()Ljava/lang/Object;

    move-result-object v0

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit16 v4, v3, 0x200

    if-le v4, v1, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    const/16 v4, 0x200

    :goto_1
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    add-int v6, p1, v3

    invoke-static {v5, v2, v0, v6, v4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    sub-int v3, v4, v3

    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->entitizeAndWriteCommentText(I)V

    move v3, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method public emitDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<!DOCTYPE "

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    const-string p1, " SYSTEM "

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, " PUBLIC "

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emitLiteral(Ljava/lang/String;)V

    const/16 p1, 0x20

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(C)V

    :goto_0
    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emitLiteral(Ljava/lang/String;)V

    :cond_1
    const/16 p1, 0x3e

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(C)V

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Saver;->_newLine:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public emitElement(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(C)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emitName(Lorg/apache/poi/javax/xml/namespace/QName;Z)V

    move v0, v1

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emitAttrHelper(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->saveNamespacesFirst()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emitNamespacesHelper()V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->hasChildren()Z

    move-result p2

    const/16 p3, 0x3e

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->hasText()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x2f

    invoke-direct {p0, p1, p3}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(CC)V

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(C)V

    return v1
.end method

.method public emitEndDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 0

    return-void
.end method

.method public emitFinish(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 2

    const/16 v0, 0x3c

    const/16 v1, 0x2f

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(CC)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emitName(Lorg/apache/poi/javax/xml/namespace/QName;Z)V

    const/16 p1, 0x3e

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(C)V

    return-void
.end method

.method public emitPiText(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 7

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getChars()Ljava/lang/Object;

    move-result-object v0

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit16 v4, v3, 0x200

    if-le v4, v1, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    const/16 v4, 0x200

    :goto_1
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    add-int v6, p1, v3

    invoke-static {v5, v2, v0, v6, v4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    sub-int v3, v4, v3

    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->entitizeAndWritePIText(I)V

    move v3, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method public emitProcinst(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 1

    const-string v0, "<?"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->push()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->next()Z

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(C)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emitPiText(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->pop()V

    const-string p1, "?>"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public emitStartDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 0

    return-void
.end method

.method public emitText(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 7

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getChars()Ljava/lang/Object;

    move-result-object v0

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit16 v4, v3, 0x200

    if-le v4, v1, :cond_0

    move v4, v1

    :cond_0
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->_buf:[C

    add-int v6, p1, v3

    sub-int v3, v4, v3

    invoke-static {v5, v2, v0, v6, v3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->entitizeAndWriteText(I)V

    move v3, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method public emitXmlns(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "xmlns"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(C)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x3d

    const/16 v0, 0x22

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(CC)V

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emitAttrValue(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->emit(C)V

    return-void
.end method

.method public isBadChar(C)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const v0, 0xd7ff

    if-le p1, v0, :cond_3

    :cond_0
    const v0, 0xe000

    if-lt p1, v0, :cond_1

    const v0, 0xfffd

    if-le p1, v0, :cond_3

    :cond_1
    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_2

    const v0, 0x10ffff

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
