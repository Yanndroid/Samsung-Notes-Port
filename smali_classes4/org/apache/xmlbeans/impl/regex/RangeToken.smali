.class final Lorg/apache/xmlbeans/impl/regex/RangeToken;
.super Lorg/apache/xmlbeans/impl/regex/Token;
.source "SourceFile"


# static fields
.field private static final MAPSIZE:I = 0x100


# instance fields
.field public compacted:Z

.field public icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;

.field public map:[I

.field public nonMapIndex:I

.field public ranges:[I

.field public sorted:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Token;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->map:[I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->setSorted(Z)V

    return-void
.end method

.method public static complementRanges(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 11

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Token#complementRanges(): must be RANGE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    check-cast p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v1, v0

    const/4 v2, 0x2

    add-int/2addr v1, v2

    const/4 v3, 0x0

    aget v4, v0, v3

    if-nez v4, :cond_2

    add-int/lit8 v1, v1, -0x2

    :cond_2
    array-length v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget v0, v0, v4

    const v4, 0x10ffff

    if-ne v0, v4, :cond_3

    add-int/lit8 v1, v1, -0x2

    :cond_3
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v6

    new-array v1, v1, [I

    iput-object v1, v6, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    iget-object v7, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v8, v7, v3

    if-lez v8, :cond_4

    aput v3, v1, v3

    aget v3, v7, v3

    sub-int/2addr v3, v5

    aput v3, v1, v5

    move v3, v2

    :cond_4
    move v1, v5

    :goto_1
    iget-object v7, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v8, v7

    sub-int/2addr v8, v2

    if-ge v1, v8, :cond_5

    iget-object v8, v6, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v3, 0x1

    aget v10, v7, v1

    add-int/2addr v10, v5

    aput v10, v8, v3

    add-int/lit8 v3, v9, 0x1

    add-int/lit8 v10, v1, 0x1

    aget v7, v7, v10

    sub-int/2addr v7, v5

    aput v7, v8, v9

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_5
    if-eq v0, v4, :cond_6

    iget-object p0, v6, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v5

    aput v0, p0, v3

    aput v4, p0, v1

    :cond_6
    invoke-direct {v6}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->setCompacted()V

    return-object v6
.end method

.method private createMap()V
    .locals 10

    const/16 v0, 0x8

    new-array v1, v0, [I

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v4, v0

    if-ge v3, v4, :cond_4

    aget v4, v0, v3

    add-int/lit8 v5, v3, 0x1

    aget v0, v0, v5

    const/16 v5, 0x100

    if-ge v4, v5, :cond_3

    :goto_2
    if-gt v4, v0, :cond_1

    if-ge v4, v5, :cond_1

    div-int/lit8 v6, v4, 0x20

    aget v7, v1, v6

    and-int/lit8 v8, v4, 0x1f

    const/4 v9, 0x1

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    if-lt v0, v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    :goto_3
    move v2, v3

    :cond_4
    iput v2, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->nonMapIndex:I

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->map:[I

    return-void
.end method

.method private static escapeCharInCharClass(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_7

    const/16 v0, 0xa

    if-eq p0, v0, :cond_6

    const/16 v0, 0xc

    if-eq p0, v0, :cond_5

    const/16 v0, 0xd

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x20

    const-string v1, "0"

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    goto :goto_1

    :cond_2
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    const-string p0, "\\e"

    goto :goto_3

    :cond_4
    const-string p0, "\\r"

    goto :goto_3

    :cond_5
    const-string p0, "\\f"

    goto :goto_3

    :cond_6
    const-string p0, "\\n"

    goto :goto_3

    :cond_7
    const-string p0, "\\t"

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final isCompacted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compacted:Z

    return v0
.end method

.method private final isSorted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sorted:Z

    return v0
.end method

.method private final setCompacted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compacted:Z

    return-void
.end method

.method private final setSorted(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sorted:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compacted:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addRange(II)V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v6, p2

    move p2, p1

    move p1, v6

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aput p1, v0, v1

    aput p2, v0, v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->setSorted(Z)V

    goto :goto_1

    :cond_1
    array-length v3, v0

    add-int/lit8 v4, v3, -0x1

    aget v5, v0, v4

    add-int/2addr v5, v2

    if-ne v5, p1, :cond_2

    aput p2, v0, v4

    return-void

    :cond_2
    add-int/lit8 v2, v3, 0x2

    new-array v2, v2, [I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v0, v2, v4

    if-lt v0, p1, :cond_3

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->setSorted(Z)V

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v3, 0x1

    aput p1, v0, v3

    aput p2, v0, v1

    iget-boolean p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sorted:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    :cond_4
    :goto_1
    return-void
.end method

.method public compactRanges()V
    .locals 8

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_a

    array-length v0, v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->isCompacted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v4, v3

    if-ge v1, v4, :cond_8

    if-eq v2, v1, :cond_2

    add-int/lit8 v4, v1, 0x1

    aget v1, v3, v1

    aput v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v5, v4, 0x1

    aget v4, v3, v4

    aput v4, v3, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v1, 0x2

    :goto_1
    add-int/lit8 v1, v2, 0x1

    aget v3, v3, v1

    :goto_2
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v6, v4

    if-ge v5, v6, :cond_7

    add-int/lit8 v6, v3, 0x1

    aget v7, v4, v5

    if-ge v6, v7, :cond_3

    goto :goto_4

    :cond_3
    aget v7, v4, v5

    if-ne v6, v7, :cond_4

    add-int/lit8 v3, v5, 0x1

    aget v3, v4, v3

    aput v3, v4, v1

    aget v3, v4, v1

    :goto_3
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v5, 0x1

    aget v7, v4, v6

    if-lt v3, v7, :cond_5

    goto :goto_3

    :cond_5
    aget v7, v4, v6

    if-ge v3, v7, :cond_6

    aget v3, v4, v6

    aput v3, v4, v1

    aget v3, v4, v1

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Token#compactRanges(): Internel Error: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "] ["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v1, v1, v5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v1, v1, v6

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x2

    move v1, v5

    goto/16 :goto_0

    :cond_8
    array-length v1, v3

    if-eq v2, v1, :cond_9

    new-array v1, v2, [I

    invoke-static {v3, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    :cond_9
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->setCompacted()V

    :cond_a
    :goto_5
    return-void
.end method

.method public dumpRanges()V
    .locals 5

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "RANGE: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, " NULL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized getCaseInsensitiveToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createNRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v5, v4

    const v6, 0xffff

    if-ge v3, v5, :cond_4

    aget v4, v4, v3

    :goto_2
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v3, 0x1

    aget v5, v5, v7

    if-gt v4, v5, :cond_3

    if-le v4, v6, :cond_2

    invoke-virtual {v0, v4, v4}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    goto :goto_3

    :cond_2
    int-to-char v5, v4

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v0, v5, v5}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_4
    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    if-ne v3, v1, :cond_5

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v1

    goto :goto_4

    :cond_5
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createNRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v1

    :goto_4
    iget-object v3, v0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v4, v3

    if-ge v2, v4, :cond_8

    aget v3, v3, v2

    :goto_5
    iget-object v4, v0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-gt v3, v4, :cond_7

    if-le v3, v6, :cond_6

    invoke-virtual {v1, v3, v3}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    goto :goto_6

    :cond_6
    int-to-char v4, v3

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v1, v4, v4}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->mergeRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->mergeRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public intersectRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V
    .locals 12

    check-cast p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v0, v0

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v6, v5

    if-ge v2, v6, :cond_7

    iget-object v6, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v7, v6

    if-ge v3, v7, :cond_7

    aget v7, v5, v2

    add-int/lit8 v8, v2, 0x1

    aget v9, v5, v8

    aget v10, v6, v3

    add-int/lit8 v11, v3, 0x1

    aget v6, v6, v11

    if-ge v9, v10, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    if-lt v9, v10, :cond_5

    if-gt v7, v6, :cond_5

    if-gt v9, v6, :cond_2

    add-int/lit8 v5, v4, 0x1

    aput v7, v0, v4

    add-int/lit8 v4, v5, 0x1

    aput v9, v0, v5

    goto :goto_1

    :cond_2
    if-gt v10, v7, :cond_3

    add-int/lit8 v8, v4, 0x1

    aput v7, v0, v4

    add-int/lit8 v4, v8, 0x1

    aput v6, v0, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    goto :goto_2

    :cond_3
    if-gt v9, v6, :cond_4

    add-int/lit8 v5, v4, 0x1

    aput v10, v0, v4

    add-int/lit8 v4, v5, 0x1

    aput v9, v0, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v4, 0x1

    aput v10, v0, v4

    add-int/lit8 v4, v7, 0x1

    aput v6, v0, v7

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    goto :goto_0

    :cond_5
    if-ge v6, v7, :cond_6

    :goto_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Token#intersectRanges(): Internal Error: ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v4, v4, v8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "] & ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget p1, p1, v11

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v3, p1

    if-ge v2, v3, :cond_8

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v2, 0x1

    aget v2, p1, v2

    aput v2, v0, v4

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v2, v5, 0x1

    aget p1, p1, v5

    aput p1, v0, v3

    goto :goto_3

    :cond_8
    new-array p1, v4, [I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    invoke-static {v0, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_4
    return-void
.end method

.method public match(I)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->map:[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->createMap()V

    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/4 v1, 0x4

    const/16 v2, 0x100

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_4

    if-ge p1, v2, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->map:[I

    div-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    and-int/lit8 p1, p1, 0x1f

    shl-int p1, v4, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    move v3, v4

    :cond_1
    return v3

    :cond_2
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->nonMapIndex:I

    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v2, v1

    if-ge v0, v2, :cond_9

    aget v2, v1, v0

    if-gt v2, p1, :cond_3

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_3

    return v4

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    if-ge p1, v2, :cond_6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->map:[I

    div-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    and-int/lit8 p1, p1, 0x1f

    shl-int p1, v4, p1

    and-int/2addr p1, v0

    if-nez p1, :cond_5

    move v3, v4

    :cond_5
    return v3

    :cond_6
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->nonMapIndex:I

    :goto_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v2, v1

    if-ge v0, v2, :cond_8

    aget v2, v1, v0

    if-gt v2, p1, :cond_7

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_7

    return v3

    :cond_7
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_8
    move v3, v4

    :cond_9
    return v3
.end method

.method public mergeRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V
    .locals 8

    check-cast p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->setSorted(Z)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    array-length v0, v0

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v0, v0, [I

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v5, v4

    if-lt v1, v5, :cond_3

    iget-object v5, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-ge v2, v5, :cond_2

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    return-void

    :cond_3
    :goto_1
    array-length v5, v4

    if-lt v1, v5, :cond_4

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v0, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v6, 0x1

    aget v5, v5, v6

    aput v5, v0, v4

    goto :goto_0

    :cond_4
    iget-object v5, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v6, v5

    if-lt v2, v6, :cond_5

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v1, 0x1

    aget v1, v4, v1

    aput v1, v0, v3

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v1, v6, 0x1

    aget v4, v4, v6

    aput v4, v0, v5

    goto :goto_0

    :cond_5
    aget v6, v5, v2

    aget v7, v4, v1

    if-lt v6, v7, :cond_7

    aget v6, v5, v2

    aget v7, v4, v1

    if-ne v6, v7, :cond_6

    add-int/lit8 v6, v2, 0x1

    aget v6, v5, v6

    add-int/lit8 v7, v1, 0x1

    aget v7, v4, v7

    if-ge v6, v7, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v1, 0x1

    aget v1, v4, v1

    aput v1, v0, v3

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v1, v6, 0x1

    aget v4, v4, v6

    aput v4, v0, v5

    goto :goto_0

    :cond_7
    :goto_2
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v0, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v6, 0x1

    aget v5, v5, v6

    aput v5, v0, v4

    goto :goto_0
.end method

.method public sortRanges()V
    .locals 7

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->isSorted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_1

    return-void

    :cond_1
    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    :goto_0
    if-ltz v0, :cond_5

    const/4 v1, 0x0

    :goto_1
    if-gt v1, v0, :cond_4

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v3, v2, v1

    add-int/lit8 v4, v1, 0x2

    aget v5, v2, v4

    if-gt v3, v5, :cond_2

    aget v3, v2, v1

    aget v5, v2, v4

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v1, 0x1

    aget v3, v2, v3

    add-int/lit8 v5, v1, 0x3

    aget v5, v2, v5

    if-le v3, v5, :cond_3

    :cond_2
    aget v3, v2, v4

    aget v5, v2, v1

    aput v5, v2, v4

    aput v3, v2, v1

    add-int/lit8 v3, v1, 0x3

    aget v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    aget v6, v2, v1

    aput v6, v2, v3

    aput v5, v2, v1

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->setSorted(Z)V

    return-void
.end method

.method public subtractRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V
    .locals 12

    iget v0, p1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->intersectRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    return-void

    :cond_0
    check-cast p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v0, v0

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v6, v5

    if-ge v2, v6, :cond_8

    iget-object v6, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v7, v6

    if-ge v3, v7, :cond_8

    aget v7, v5, v2

    add-int/lit8 v8, v2, 0x1

    aget v9, v5, v8

    aget v10, v6, v3

    add-int/lit8 v11, v3, 0x1

    aget v6, v6, v11

    if-ge v9, v10, :cond_2

    add-int/lit8 v6, v4, 0x1

    aget v2, v5, v2

    aput v2, v0, v4

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v2, v8, 0x1

    aget v5, v5, v8

    aput v5, v0, v6

    goto :goto_0

    :cond_2
    if-lt v9, v10, :cond_6

    if-gt v7, v6, :cond_6

    if-gt v10, v7, :cond_3

    if-gt v9, v6, :cond_3

    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    if-gt v10, v7, :cond_4

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    goto :goto_2

    :cond_4
    if-gt v9, v6, :cond_5

    add-int/lit8 v5, v4, 0x1

    aput v7, v0, v4

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v10, v10, -0x1

    aput v10, v0, v5

    goto :goto_1

    :cond_5
    add-int/lit8 v8, v4, 0x1

    aput v7, v0, v4

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v10, v10, -0x1

    aput v10, v0, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    goto :goto_2

    :cond_6
    if-ge v6, v7, :cond_7

    :goto_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Token#subtractRanges(): Internal Error: ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v4, v4, v8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "] - ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget p1, p1, v11

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v3, p1

    if-ge v2, v3, :cond_9

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v2, 0x1

    aget v2, p1, v2

    aput v2, v0, v4

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v2, v5, 0x1

    aget p1, p1, v5

    aput p1, v0, v3

    goto :goto_3

    :cond_9
    new-array p1, v4, [I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    invoke-static {v0, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_4
    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 9

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const-string v1, ","

    const/16 v2, 0x2d

    const-string v3, "]"

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_6

    sget-object v0, Lorg/apache/xmlbeans/impl/regex/Token;->token_dot:Lorg/apache/xmlbeans/impl/regex/Token;

    if-ne p0, v0, :cond_0

    const-string p1, "."

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/regex/Token;->token_0to9:Lorg/apache/xmlbeans/impl/regex/Token;

    if-ne p0, v0, :cond_1

    const-string p1, "\\d"

    goto/16 :goto_4

    :cond_1
    sget-object v0, Lorg/apache/xmlbeans/impl/regex/Token;->token_wordchars:Lorg/apache/xmlbeans/impl/regex/Token;

    if-ne p0, v0, :cond_2

    const-string p1, "\\w"

    goto/16 :goto_4

    :cond_2
    sget-object v0, Lorg/apache/xmlbeans/impl/regex/Token;->token_spaces:Lorg/apache/xmlbeans/impl/regex/Token;

    if-ne p0, v0, :cond_3

    const-string p1, "\\s"

    goto/16 :goto_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-ge v4, v5, :cond_c

    and-int/lit16 v5, p1, 0x400

    if-eqz v5, :cond_4

    if-lez v4, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v6, v5, v4

    add-int/lit8 v7, v4, 0x1

    aget v8, v5, v7

    if-ne v6, v8, :cond_5

    aget v5, v5, v4

    goto :goto_1

    :cond_5
    aget v5, v5, v4

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v5, v5, v7

    :goto_1
    invoke-static {v5}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_6
    sget-object v0, Lorg/apache/xmlbeans/impl/regex/Token;->token_not_0to9:Lorg/apache/xmlbeans/impl/regex/Token;

    if-ne p0, v0, :cond_7

    const-string p1, "\\D"

    goto :goto_4

    :cond_7
    sget-object v0, Lorg/apache/xmlbeans/impl/regex/Token;->token_not_wordchars:Lorg/apache/xmlbeans/impl/regex/Token;

    if-ne p0, v0, :cond_8

    const-string p1, "\\W"

    goto :goto_4

    :cond_8
    sget-object v0, Lorg/apache/xmlbeans/impl/regex/Token;->token_not_spaces:Lorg/apache/xmlbeans/impl/regex/Token;

    if-ne p0, v0, :cond_9

    const-string p1, "\\S"

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "[^"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-ge v4, v5, :cond_c

    and-int/lit16 v5, p1, 0x400

    if-eqz v5, :cond_a

    if-lez v4, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v6, v5, v4

    add-int/lit8 v7, v4, 0x1

    aget v8, v5, v7

    if-ne v6, v8, :cond_b

    aget v5, v5, v4

    goto :goto_3

    :cond_b
    aget v5, v5, v4

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v5, v5, v7

    :goto_3
    invoke-static {v5}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    return-object p1
.end method
