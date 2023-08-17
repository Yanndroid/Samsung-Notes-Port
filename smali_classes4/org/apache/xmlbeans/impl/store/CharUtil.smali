.class public final Lorg/apache/xmlbeans/impl/store/CharUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;,
        Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static CHARUTIL_INITIAL_BUFSIZE:I = 0x0

.field private static final MAX_COPY:I = 0x40

.field public static synthetic class$org$apache$xmlbeans$impl$store$CharUtil:Ljava/lang/Class;

.field private static tl_charUtil:Ljava/lang/ThreadLocal;


# instance fields
.field public _cchSrc:I

.field private _charBufSize:I

.field private _charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

.field private _currentBuffer:[C

.field private _currentOffset:I

.field public _offSrc:I


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

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->$assertionsDisabled:Z

    const v0, 0x8000

    sput v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->CHARUTIL_INITIAL_BUFSIZE:I

    new-instance v0, Lorg/apache/xmlbeans/impl/store/CharUtil$1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/store/CharUtil$1;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->tl_charUtil:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charBufSize:I

    return-void
.end method

.method public static synthetic access$300()I
    .locals 1

    sget v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->CHARUTIL_INITIAL_BUFSIZE:I

    return v0
.end method

.method private allocate(I)[C
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentBuffer:[C

    if-eqz v1, :cond_1

    array-length v1, v1

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentOffset:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentBuffer:[C

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charBufSize:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentBuffer:[C

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentOffset:I

    :cond_2
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentOffset:I

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentBuffer:[C

    array-length v3, v3

    sub-int/2addr v3, v1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentBuffer:[C

    if-nez v0, :cond_4

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentOffset:I

    add-int/2addr v0, p1

    array-length v3, v1

    if-gt v0, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentOffset:I

    array-length p1, v1

    if-ne v0, p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentBuffer:[C

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentOffset:I

    :cond_5
    return-object v1
.end method

.method private canAllocate(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentBuffer:[C

    if-eqz v0, :cond_1

    array-length v0, v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_currentOffset:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static dump(Ljava/lang/Object;II)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->dumpChars(Ljava/io/PrintStream;Ljava/lang/Object;II)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public static dumpChars(Ljava/io/PrintStream;Ljava/lang/Object;II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "off="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", cch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "<null-src>"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    const-string v1, " (Error)"

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/String;

    const-string v0, "String"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p3, v0, :cond_2

    :cond_1
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    add-int v0, p2, p3

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr p3, p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->dumpText(Ljava/io/PrintStream;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    :cond_4
    instance-of v0, p1, [C

    if-eqz v0, :cond_8

    check-cast p1, [C

    const-string v0, "char[]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-nez p2, :cond_5

    array-length v0, p1

    if-eq p3, v0, :cond_6

    :cond_5
    if-ltz p2, :cond_7

    array-length v0, p1

    if-gt p2, v0, :cond_7

    add-int v0, p2, p3

    if-ltz v0, :cond_7

    array-length v2, p1

    if-le v0, v2, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->dumpText(Ljava/io/PrintStream;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    :cond_8
    instance-of v0, p1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    if-eqz v0, :cond_9

    const-string v0, "CharJoin"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    check-cast p1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    invoke-static {p1, p0, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->access$200(Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;Ljava/io/PrintStream;II)V

    goto :goto_3

    :cond_9
    const-string p1, "Unknown text source"

    goto :goto_0

    :goto_3
    return-void
.end method

.method private static dumpText(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 5

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-ne v1, v3, :cond_0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_0
    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    const-string v2, "\\n"

    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    const-string v2, "\\r"

    goto :goto_1

    :cond_2
    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    const-string v2, "\\t"

    goto :goto_1

    :cond_3
    const-string v3, "\\f"

    const/16 v4, 0xc

    if-ne v2, v4, :cond_4

    :goto_2
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-ne v2, v4, :cond_5

    goto :goto_2

    :cond_5
    const/16 v3, 0x22

    if-ne v2, v3, :cond_6

    const-string v2, "\\\""

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(C)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static getChars([CILjava/lang/Object;II)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    if-ltz p1, :cond_2

    array-length v0, p0

    if-gt p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    return-void

    :cond_4
    instance-of v0, p2, [C

    if-eqz v0, :cond_5

    check-cast p2, [C

    invoke-static {p2, p3, p0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_5
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/String;

    add-int/2addr p4, p3

    invoke-virtual {p2, p3, p4, p0, p1}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_2

    :cond_6
    check-cast p2, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    invoke-static {p2, p0, p1, p3, p4}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->access$100(Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;[CIII)V

    :goto_2
    return-void
.end method

.method public static getString(Ljava/lang/Object;II)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    instance-of v0, p0, [C

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/String;

    check-cast p0, [C

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/String;

    if-nez p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p2, v0, :cond_4

    return-object p0

    :cond_4
    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    check-cast p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    invoke-static {p0, v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->access$000(Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p3, :cond_2

    return-void

    :cond_2
    instance-of v0, p1, [C

    if-eqz v0, :cond_3

    check-cast p1, [C

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/String;

    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p3, v0, :cond_4

    goto :goto_1

    :cond_4
    add-int/2addr p3, p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    check-cast p1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    invoke-static {p1, p0, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->access$000(Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;Ljava/lang/StringBuffer;II)V

    :goto_2
    return-void
.end method

.method public static getThreadLocalCharUtil()Lorg/apache/xmlbeans/impl/store/CharUtil;
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->tl_charUtil:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/CharUtil;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/store/CharUtil;

    sget v1, Lorg/apache/xmlbeans/impl/store/CharUtil;->CHARUTIL_INITIAL_BUFSIZE:I

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/CharUtil;-><init>(I)V

    sget-object v1, Lorg/apache/xmlbeans/impl/store/CharUtil;->tl_charUtil:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static isValid(Ljava/lang/Object;II)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p2, :cond_7

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    instance-of v2, p0, [C

    if-eqz v2, :cond_4

    check-cast p0, [C

    array-length v2, p0

    if-gt p1, v2, :cond_3

    add-int/2addr p1, p2

    array-length p0, p0

    if-gt p1, p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_6

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p1, v2, :cond_5

    add-int/2addr p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p1, p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    :cond_6
    instance-of v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    if-eqz v1, :cond_7

    check-cast p0, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->isValid(II)Z

    move-result p0

    return p0

    :cond_7
    :goto_0
    return v0
.end method

.method public static final isWhiteSpace(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static sizeof(Ljava/lang/Object;)I
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p0, [C

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    instance-of v0, p0, [C

    if-eqz v0, :cond_2

    check-cast p0, [C

    array-length p0, p0

    return p0

    :cond_2
    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_1
    return p0
.end method


# virtual methods
.method public getCharIterator(Ljava/lang/Object;II)Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->init(Ljava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    return-object p1
.end method

.method public getCharIterator(Ljava/lang/Object;III)Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->init(Ljava/lang/Object;III)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    return-object p1
.end method

.method public insertChars(ILjava/lang/Object;IILjava/lang/Object;II)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p7

    sget-boolean v11, Lorg/apache/xmlbeans/impl/store/CharUtil;->$assertionsDisabled:Z

    if-nez v11, :cond_1

    invoke-static/range {p2 .. p4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    if-nez v11, :cond_3

    invoke-static/range {p5 .. p7}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3
    :goto_1
    if-nez v11, :cond_5

    if-ltz v7, :cond_4

    if-gt v7, v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    :goto_2
    if-nez v10, :cond_6

    iput v4, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    iput v9, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    return-object v8

    :cond_6
    if-nez v4, :cond_7

    iput v10, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    iput v6, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    return-object v5

    :cond_7
    add-int v1, v4, v10

    iput v1, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    const/16 v12, 0x40

    if-gt v1, v12, :cond_8

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->canAllocate(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->allocate(I)[C

    move-result-object v1

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    invoke-static {v1, v2, v8, v9, v7}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    add-int/2addr v2, v7

    invoke-static {v1, v2, v5, v6, v10}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    add-int/2addr v2, v7

    add-int/2addr v2, v10

    add-int v3, v9, v7

    sub-int/2addr v4, v7

    invoke-static {v1, v2, v8, v3, v4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    if-nez v7, :cond_9

    new-instance v7, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    move-object v1, v7

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    goto :goto_3

    :cond_9
    if-ne v7, v4, :cond_a

    new-instance v7, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    goto :goto_3

    :cond_a
    new-instance v13, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    move-object v1, v13

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p1

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    new-instance v14, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    const/4 v3, 0x0

    add-int v4, v7, v10

    add-int v6, v9, v7

    move-object v1, v14

    move-object v2, v13

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    :goto_3
    iget v2, v1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_depth:I

    if-le v2, v12, :cond_b

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->saveChars(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    :cond_b
    :goto_4
    if-nez v11, :cond_d

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    invoke-static {v1, v2, v3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_d
    :goto_5
    return-object v1
.end method

.method public final isWhiteSpace(Ljava/lang/Object;II)Z
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->$assertionsDisabled:Z

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
    const/4 v0, 0x1

    if-gtz p3, :cond_2

    return v0

    :cond_2
    instance-of v1, p1, [C

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, [C

    :goto_1
    if-lez p3, :cond_4

    add-int/lit8 v1, p2, 0x1

    aget-char p2, p1, p2

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result p2

    if-nez p2, :cond_3

    return v2

    :cond_3
    add-int/lit8 p3, p3, -0x1

    move p2, v1

    goto :goto_1

    :cond_4
    return v0

    :cond_5
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_8

    check-cast p1, Ljava/lang/String;

    :goto_2
    if-lez p3, :cond_7

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result p2

    if-nez p2, :cond_6

    return v2

    :cond_6
    add-int/lit8 p3, p3, -0x1

    move p2, v1

    goto :goto_2

    :cond_7
    return v0

    :cond_8
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->init(Ljava/lang/Object;II)V

    :cond_9
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->next()C

    move-result p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result p1

    if-nez p1, :cond_9

    move v0, v2

    :cond_a
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->release()V

    return v0
.end method

.method public removeChars(IILjava/lang/Object;II)Ljava/lang/Object;
    .locals 10

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p3, p4, p5}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-ltz p1, :cond_2

    if-gt p1, p5, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-ltz p2, :cond_4

    add-int v1, p1, p2

    if-gt v1, p5, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    sub-int v1, p5, p2

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    const/4 v2, 0x0

    if-nez v1, :cond_6

    const/4 p3, 0x0

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    goto :goto_4

    :cond_6
    if-nez p1, :cond_7

    add-int/2addr p4, p2

    :goto_3
    iput p4, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    goto :goto_4

    :cond_7
    add-int v3, p1, p2

    if-ne v3, p5, :cond_8

    goto :goto_3

    :cond_8
    const/16 v3, 0x40

    if-gt v1, v3, :cond_9

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->canAllocate(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->allocate(I)[C

    move-result-object v1

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    invoke-static {v1, v2, p3, p4, p1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    add-int/2addr v2, p1

    add-int/2addr p4, p1

    add-int/2addr p4, p2

    sub-int/2addr p5, p1

    sub-int/2addr p5, p2

    invoke-static {v1, v2, p3, p4, p5}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    move-object p3, v1

    goto :goto_4

    :cond_9
    new-instance p5, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    add-int v1, p4, p1

    add-int v9, v1, p2

    move-object v4, p5

    move-object v5, p3

    move v6, p4

    move v7, p1

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    iget p1, p5, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_depth:I

    if-le p1, v3, :cond_a

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    invoke-virtual {p0, p5, v2, p1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->saveChars(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p3

    goto :goto_4

    :cond_a
    iput v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    move-object p3, p5

    :goto_4
    if-nez v0, :cond_c

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iget p2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    invoke-static {p3, p1, p2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_5
    return-object p3
.end method

.method public saveChars(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/store/CharUtil;->saveChars(Ljava/lang/Object;IILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public saveChars(Ljava/lang/Object;IILjava/lang/Object;II)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    sget-boolean v10, Lorg/apache/xmlbeans/impl/store/CharUtil;->$assertionsDisabled:Z

    if-nez v10, :cond_1

    invoke-static/range {p1 .. p3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    if-nez v10, :cond_3

    invoke-static/range {p4 .. p6}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3
    :goto_1
    invoke-direct {v0, v3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->allocate(I)[C

    move-result-object v8

    iget v9, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iget v11, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    if-nez v10, :cond_5

    if-gt v11, v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    :goto_2
    invoke-static {v8, v9, v1, v2, v11}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    add-int v12, v11, p6

    const/16 v13, 0x40

    const/4 v14, 0x0

    if-nez p6, :cond_6

    move-object v15, v8

    goto :goto_4

    :cond_6
    if-ne v5, v8, :cond_8

    add-int v4, p5, p6

    if-ne v4, v9, :cond_8

    if-nez v10, :cond_a

    instance-of v4, v5, [C

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_8
    instance-of v4, v5, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    if-eqz v4, :cond_b

    move-object v4, v5

    check-cast v4, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    iget-object v6, v4, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_srcRight:Ljava/lang/Object;

    if-ne v6, v8, :cond_b

    add-int v7, p5, p6

    iget v15, v4, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_cchLeft:I

    sub-int/2addr v7, v15

    iget v4, v4, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_offRight:I

    add-int/2addr v7, v4

    if-ne v7, v9, :cond_b

    if-nez v10, :cond_a

    instance-of v4, v6, [C

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_a
    :goto_3
    move/from16 v9, p5

    move-object v15, v5

    goto :goto_4

    :cond_b
    new-instance v15, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    move-object v4, v15

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v4 .. v9}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    iget v4, v15, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_depth:I

    if-le v4, v13, :cond_c

    invoke-virtual {v0, v15, v14, v12}, Lorg/apache/xmlbeans/impl/store/CharUtil;->saveChars(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    :cond_c
    move v9, v14

    :goto_4
    sub-int v4, v3, v11

    if-lez v4, :cond_12

    invoke-direct {v0, v4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->allocate(I)[C

    move-result-object v5

    iget v6, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iget v7, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    if-nez v10, :cond_e

    if-ne v7, v4, :cond_d

    goto :goto_5

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_e
    :goto_5
    if-nez v10, :cond_10

    if-nez v6, :cond_f

    goto :goto_6

    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_10
    :goto_6
    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-static {v5, v6, v1, v2, v4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    new-instance v1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;

    move-object/from16 p1, v1

    move-object/from16 p2, v15

    move/from16 p3, v9

    move/from16 p4, v12

    move-object/from16 p5, v5

    move/from16 p6, v6

    invoke-direct/range {p1 .. p6}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    add-int/2addr v12, v4

    iget v2, v1, Lorg/apache/xmlbeans/impl/store/CharUtil$CharJoin;->_depth:I

    if-le v2, v13, :cond_11

    invoke-virtual {v0, v1, v14, v12}, Lorg/apache/xmlbeans/impl/store/CharUtil;->saveChars(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    :cond_11
    move-object v15, v1

    goto :goto_7

    :cond_12
    move v14, v9

    :goto_7
    iput v14, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iput v12, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    if-nez v10, :cond_14

    invoke-static {v15, v14, v12}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_8

    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_14
    :goto_8
    return-object v15
.end method

.method public stripLeft(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->$assertionsDisabled:Z

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
    const/4 v0, 0x0

    if-lez p3, :cond_6

    instance-of v1, p1, [C

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, [C

    :goto_1
    if-lez p3, :cond_6

    aget-char v2, v1, p2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :goto_2
    if-lez p3, :cond_6

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->init(Ljava/lang/Object;II)V

    move v1, v0

    :goto_3
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->next()C

    move-result v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->release()V

    add-int/2addr p2, v1

    :cond_6
    if-nez p3, :cond_7

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    const/4 p1, 0x0

    return-object p1

    :cond_7
    iput p2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iput p3, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    return-object p1
.end method

.method public stripRight(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->$assertionsDisabled:Z

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
    if-lez p3, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v0, p1, p2, p3, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->init(Ljava/lang/Object;III)V

    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->hasPrev()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->prev()C

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_charIter:Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/CharUtil$CharIterator;->release()V

    :cond_4
    if-nez p3, :cond_5

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    const/4 p1, 0x0

    return-object p1

    :cond_5
    iput p2, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iput p3, p0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    return-object p1
.end method
