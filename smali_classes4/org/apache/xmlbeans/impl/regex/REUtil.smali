.class public final Lorg/apache/xmlbeans/impl/regex/REUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CACHESIZE:I = 0x14

.field public static final regexCache:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    sput-object v0, Lorg/apache/xmlbeans/impl/regex/REUtil;->regexCache:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final composeFromSurrogates(II)I
    .locals 1

    const v0, 0xd800

    sub-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0xa

    const/high16 v0, 0x10000

    add-int/2addr p0, v0

    add-int/2addr p0, p1

    const p1, 0xdc00

    sub-int/2addr p0, p1

    return p0
.end method

.method public static final createOptionString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_0

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_1

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_2

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_4

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_5

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_6

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_7

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_8

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_9

    const/16 p0, 0x2c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createRegex(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/regex/RegularExpression;
    .locals 6

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->parseOptions(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lorg/apache/xmlbeans/impl/regex/REUtil;->regexCache:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x14

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    :try_start_0
    sget-object v4, Lorg/apache/xmlbeans/impl/regex/REUtil;->regexCache:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    aget-object v4, v4, v3

    if-nez v4, :cond_0

    const/4 v3, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v4, p0, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->equals(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    const/4 v0, 0x1

    if-eqz v5, :cond_3

    if-eqz v3, :cond_4

    sget-object p0, Lorg/apache/xmlbeans/impl/regex/REUtil;->regexCache:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    invoke-static {p0, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v5, p0, v2

    goto :goto_2

    :cond_3
    new-instance v5, Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    invoke-direct {v5, p0, p1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lorg/apache/xmlbeans/impl/regex/REUtil;->regexCache:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    const/16 p1, 0x13

    invoke-static {p0, v2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v5, p0, v2

    :cond_4
    :goto_2
    monitor-exit v1

    return-object v5

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static final decomposeToSurrogates(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [C

    const/high16 v1, 0x10000

    sub-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0xa

    const v2, 0xd800

    add-int/2addr v1, v2

    int-to-char v1, v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    and-int/lit16 p0, p0, 0x3ff

    const v1, 0xdc00

    add-int/2addr p0, v1

    int-to-char p0, p0

    const/4 v1, 0x1

    aput-char p0, v0, v1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static dumpString(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public static final getOptionValue(I)I
    .locals 1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_9

    const/16 v0, 0x46

    if-eq p0, v0, :cond_8

    const/16 v0, 0x48

    if-eq p0, v0, :cond_7

    const/16 v0, 0x58

    if-eq p0, v0, :cond_6

    const/16 v0, 0x69

    if-eq p0, v0, :cond_5

    const/16 v0, 0x6d

    if-eq p0, v0, :cond_4

    const/16 v0, 0x73

    if-eq p0, v0, :cond_3

    const/16 v0, 0x75

    if-eq p0, v0, :cond_2

    const/16 v0, 0x77

    if-eq p0, v0, :cond_1

    const/16 v0, 0x78

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    goto :goto_0

    :cond_1
    const/16 p0, 0x40

    goto :goto_0

    :cond_2
    const/16 p0, 0x20

    goto :goto_0

    :cond_3
    const/4 p0, 0x4

    goto :goto_0

    :cond_4
    const/16 p0, 0x8

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    goto :goto_0

    :cond_6
    const/16 p0, 0x200

    goto :goto_0

    :cond_7
    const/16 p0, 0x80

    goto :goto_0

    :cond_8
    const/16 p0, 0x100

    goto :goto_0

    :cond_9
    const/16 p0, 0x400

    :goto_0
    return p0
.end method

.method public static final isHighSurrogate(I)Z
    .locals 1

    const v0, 0xfc00

    and-int/2addr p0, v0

    const v0, 0xd800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isLowSurrogate(I)Z
    .locals 1

    const v0, 0xfc00

    and-int/2addr p0, v0

    const v0, 0xdc00

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10

    const-string v0, "\""

    const-string v1, ", "

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, ""

    array-length v5, p0

    if-nez v5, :cond_0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Error:Usage: java REUtil -i|-m|-s|-u|-w|-X regularExpression String"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_0
    move v6, v3

    move-object v5, v4

    move-object v4, v2

    :goto_0
    array-length v7, p0

    if-ge v6, v7, :cond_b

    aget-object v7, p0, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_8

    aget-object v7, p0, v6

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_1

    goto/16 :goto_3

    :cond_1
    aget-object v7, p0, v6

    const-string v8, "-i"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "i"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    :cond_2
    aget-object v7, p0, v6

    const-string v8, "-m"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "m"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    aget-object v7, p0, v6

    const-string v8, "-s"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "s"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    aget-object v7, p0, v6

    const-string v8, "-u"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "u"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    aget-object v7, p0, v6

    const-string v8, "-w"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "w"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    aget-object v7, p0, v6

    const-string v8, "-X"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "X"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Unknown option: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v9, p0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    :goto_3
    if-nez v2, :cond_9

    aget-object v2, p0, v6

    goto :goto_4

    :cond_9
    if-nez v4, :cond_a

    aget-object v4, p0, v6

    goto :goto_4

    :cond_a
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Unnecessary: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v9, p0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_b
    new-instance p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    invoke-direct {p0, v2, v5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "RegularExpression: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v5, Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-direct {v5}, Lorg/apache/xmlbeans/impl/regex/Match;-><init>()V

    invoke-virtual {p0, v4, v5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches(Ljava/lang/String;Lorg/apache/xmlbeans/impl/regex/Match;)Z

    move p0, v3

    :goto_5
    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/regex/Match;->getNumberOfGroups()I

    move-result v4

    if-ge p0, v4, :cond_10

    if-nez p0, :cond_c

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Matched range for the whole pattern: "

    :goto_6
    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :goto_7
    invoke-virtual {v5, p0}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v4

    if-gez v4, :cond_d

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "-1"

    :goto_8
    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p0}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p0}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p0}, Lorg/apache/xmlbeans/impl/regex/Match;->getCapturedText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/regex/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_9
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :catch_1
    move-exception p0

    if-nez v2, :cond_e

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_b

    :cond_e
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "org.apache.xerces.utils.regex.ParseException: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "        "

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/ParseException;->getLocation()I

    move-result p0

    if-ltz p0, :cond_10

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_a
    if-ge v3, p0, :cond_f

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_f
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "^"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    :goto_b
    return-void
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/regex/REUtil;->createRegex(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->createRegex(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final parseOptions(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/regex/REUtil;->getOptionValue(I)I

    move-result v2

    if-eqz v2, :cond_1

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/xmlbeans/impl/regex/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unknown Option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/regex/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_2
    return v1
.end method

.method public static quoteMeta(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, ".*+?{[()|\\^$"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    sub-int v5, v0, v3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    if-lez v3, :cond_0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v5, 0x5c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static stripExtendedComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_8

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x9

    if-eq v2, v4, :cond_7

    const/16 v5, 0xa

    if-eq v2, v5, :cond_7

    const/16 v6, 0xc

    if-eq v2, v6, :cond_7

    const/16 v7, 0xd

    if-eq v2, v7, :cond_7

    const/16 v8, 0x20

    if-ne v2, v8, :cond_1

    goto :goto_2

    :cond_1
    const/16 v9, 0x23

    if-ne v2, v9, :cond_3

    :cond_2
    move v2, v3

    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_7

    if-ne v2, v5, :cond_2

    goto :goto_2

    :cond_3
    const/16 v10, 0x5c

    if-ne v2, v10, :cond_6

    if-ge v3, v0, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v9, :cond_5

    if-eq v2, v4, :cond_5

    if-eq v2, v5, :cond_5

    if-eq v2, v6, :cond_5

    if-eq v2, v7, :cond_5

    if-ne v2, v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    :goto_1
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    :goto_2
    move v2, v3

    goto :goto_0

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final substring(Ljava/text/CharacterIterator;II)Ljava/lang/String;
    .locals 3

    sub-int/2addr p2, p1

    new-array v0, p2, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, v1, p1

    invoke-interface {p0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
