.class public final Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/CharUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharJoin"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field public static final MAX_DEPTH:I = 0x40


# instance fields
.field public final _cchLeft:I

.field public final _depth:I

.field public final _offLeft:I

.field public final _offRight:I

.field public final _srcLeft:Ljava/lang/Object;

.field public final _srcRight:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->class$org$apache$xmlbeans$impl$store$CharUtil:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.CharUtil"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->class$org$apache$xmlbeans$impl$store$CharUtil:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IILjava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcLeft:Ljava/lang/Object;

    iput p2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offLeft:I

    iput p3, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_cchLeft:I

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcRight:Ljava/lang/Object;

    iput p5, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offRight:I

    instance-of p2, p1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_depth:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    instance-of p2, p4, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    if-eqz p2, :cond_1

    check-cast p4, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    iget p2, p4, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_depth:I

    if-le p2, p1, :cond_1

    move p1, p2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_depth:I

    sget-boolean p2, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->$assertionsDisabled:Z

    if-nez p2, :cond_3

    const/16 p2, 0x42

    if-gt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic access$000(Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;Ljava/lang/StringBuffer;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->getString(Ljava/lang/StringBuffer;II)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;[CIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->getChars([CIII)V

    return-void
.end method

.method public static synthetic access$200(Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;Ljava/io/PrintStream;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->dumpChars(Ljava/io/PrintStream;II)V

    return-void
.end method

.method private cchRight(II)I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_cchLeft:I

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private dumpChars(II)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->dumpChars(Ljava/io/PrintStream;II)V

    return-void
.end method

.method private dumpChars(Ljava/io/PrintStream;II)V
    .locals 3

    const-string v0, "( "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcLeft:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offLeft:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_cchLeft:I

    invoke-static {p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->dumpChars(Ljava/io/PrintStream;Ljava/lang/Object;II)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcRight:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offRight:I

    invoke-direct {p0, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->cchRight(II)I

    move-result p2

    invoke-static {p1, v0, v1, p2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->dumpChars(Ljava/io/PrintStream;Ljava/lang/Object;II)V

    const-string p2, " )"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private getChars([CIII)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_cchLeft:I

    if-ge p3, v0, :cond_2

    sub-int/2addr v0, p3

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcLeft:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offLeft:I

    add-int/2addr v2, p3

    invoke-static {p1, p2, v1, v2, v0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    if-le p4, v0, :cond_3

    add-int/2addr p2, v0

    iget-object p3, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcRight:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offRight:I

    sub-int/2addr p4, v0

    invoke-static {p1, p2, p3, v1, p4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcRight:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offRight:I

    add-int/2addr v2, p3

    sub-int/2addr v2, v0

    invoke-static {p1, p2, v1, v2, p4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    :cond_3
    :goto_1
    return-void
.end method

.method private getString(Ljava/lang/StringBuffer;II)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_cchLeft:I

    if-ge p2, v0, :cond_2

    sub-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcLeft:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offLeft:I

    add-int/2addr v2, p2

    invoke-static {p1, v1, v2, v0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    if-le p3, v0, :cond_3

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcRight:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offRight:I

    sub-int/2addr p3, v0

    invoke-static {p1, p2, v1, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcRight:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offRight:I

    add-int/2addr v2, p2

    sub-int/2addr v2, v0

    invoke-static {p1, v1, v2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public depth()I
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcLeft:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->depth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcRight:Ljava/lang/Object;

    instance-of v2, v1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->depth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isValid(II)Z
    .locals 5

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_depth:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    sget-boolean v2, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->depth()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    if-ltz p1, :cond_6

    if-gez p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcLeft:Ljava/lang/Object;

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offLeft:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_cchLeft:I

    invoke-static {v2, v3, v4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcRight:Ljava/lang/Object;

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offRight:I

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->cchRight(II)I

    move-result p1

    invoke-static {v2, v3, p1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result p1

    if-nez p1, :cond_5

    return v0

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v0
.end method
