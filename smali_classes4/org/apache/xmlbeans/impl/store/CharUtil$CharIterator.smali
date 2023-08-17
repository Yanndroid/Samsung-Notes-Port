.class public final Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/CharUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharIterator"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _cchRoot:I

.field private _maxPos:I

.field private _minPos:I

.field private _offLeaf:I

.field private _offRoot:I

.field private _pos:I

.field private _srcLeafChars:[C

.field private _srcLeafString:Ljava/lang/String;

.field private _srcRoot:Ljava/lang/Object;


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

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private currentChar()C
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_offLeaf:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_pos:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_minPos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_srcLeafChars:[C

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_srcLeafString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    aget-char v0, v1, v0

    :goto_0
    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_pos:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_cchRoot:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrev()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_pos:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init(Ljava/lang/Object;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->init(Ljava/lang/Object;III)V

    return-void
.end method

.method public init(Ljava/lang/Object;III)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->release()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_srcRoot:Ljava/lang/Object;

    iput p2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_offRoot:I

    iput p3, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_cchRoot:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_maxPos:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_minPos:I

    invoke-virtual {p0, p4}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->movePos(I)V

    return-void
.end method

.method public movePos(I)V
    .locals 5

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_cchRoot:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_minPos:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_maxPos:I

    if-le p1, v0, :cond_8

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_srcRoot:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_offRoot:I

    add-int v2, v1, p1

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_cchRoot:I

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_offLeaf:I

    :goto_1
    instance-of v1, v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    iget v1, v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_cchLeft:I

    if-ge v2, v1, :cond_3

    iget-object v3, v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcLeft:Ljava/lang/Object;

    iget v0, v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offLeft:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_offLeaf:I

    add-int/2addr v2, v0

    move-object v0, v3

    move v3, v1

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcRight:Ljava/lang/Object;

    iget v0, v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offRight:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_offLeaf:I

    sub-int v0, v1, v0

    sub-int/2addr v2, v0

    sub-int/2addr v3, v1

    move-object v0, v4

    goto :goto_1

    :cond_4
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_offLeaf:I

    sub-int/2addr v2, v1

    sub-int v1, p1, v2

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_minPos:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_maxPos:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_cchRoot:I

    if-ge p1, v2, :cond_5

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_maxPos:I

    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_srcLeafChars:[C

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_srcLeafString:Ljava/lang/String;

    instance-of v2, v0, [C

    if-eqz v2, :cond_6

    check-cast v0, [C

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_srcLeafChars:[C

    goto :goto_2

    :cond_6
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_srcLeafString:Ljava/lang/String;

    :goto_2
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->$assertionsDisabled:Z

    if-nez v0, :cond_8

    if-lt p1, v1, :cond_7

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_maxPos:I

    if-gt p1, v0, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_3
    iput p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_pos:I

    return-void
.end method

.method public next()C
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->currentChar()C

    move-result v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->movePos(I)V

    return v0
.end method

.method public prev()C
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->hasPrev()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_pos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->movePos(I)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->currentChar()C

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_srcRoot:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_srcLeafString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->_srcLeafChars:[C

    return-void
.end method
