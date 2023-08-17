.class final Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScrubBuffer"
.end annotation


# static fields
.field private static final NOSPACE_STATE:I = 0x2

.field private static final SPACE_SEEN_STATE:I = 0x1

.field private static final START_STATE:I


# instance fields
.field private _sb:Ljava/lang/StringBuffer;

.field private _srcBuf:[C

.field private _state:I

.field private _wsr:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_srcBuf:[C

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_sb:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public getResultAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_wsr:I

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_state:I

    return-void
.end method

.method public scrub(Ljava/lang/Object;II)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_wsr:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_sb:Ljava/lang/StringBuffer;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    return-void

    :cond_1
    instance-of v0, p1, [C

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, [C

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_srcBuf:[C

    array-length v3, v0

    if-gt p3, v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x4000

    if-gt p3, v0, :cond_4

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_srcBuf:[C

    goto :goto_0

    :cond_4
    new-array v0, p3, [C

    :goto_0
    invoke-static {v0, v2, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    move-object p1, v0

    move p2, v2

    :goto_1
    move v0, v2

    :goto_2
    if-ge v2, p3, :cond_a

    add-int v3, p2, v2

    aget-char v3, p1, v3

    const/4 v4, 0x2

    const/16 v5, 0x20

    if-eq v3, v5, :cond_7

    const/16 v6, 0xa

    if-eq v3, v6, :cond_7

    const/16 v6, 0xd

    if-eq v3, v6, :cond_7

    const/16 v6, 0x9

    if-ne v3, v6, :cond_5

    goto :goto_3

    :cond_5
    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_state:I

    if-ne v3, v1, :cond_6

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    iput v4, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_state:I

    goto :goto_4

    :cond_7
    :goto_3
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_sb:Ljava/lang/StringBuffer;

    add-int v6, p2, v0

    sub-int v0, v2, v0

    invoke-virtual {v3, p1, v6, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, 0x1

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_wsr:I

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_8
    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_state:I

    if-ne v3, v4, :cond_9

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_state:I

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->_sb:Ljava/lang/StringBuffer;

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    invoke-virtual {v1, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method
