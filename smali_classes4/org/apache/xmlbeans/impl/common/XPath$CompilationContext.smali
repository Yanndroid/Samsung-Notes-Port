.class Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/common/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompilationContext"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _column:I

.field private _currentNodeVar:Ljava/lang/String;

.field private _expr:Ljava/lang/String;

.field private _externalNamespaces:Ljava/util/Map;

.field private _lastDeepDot:Z

.field private _line:I

.field public _namespaces:Ljava/util/Map;

.field private _offset:I

.field private _sawDeepDot:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/common/XPath;->class$org$apache$xmlbeans$impl$common$XPath:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.common.XPath"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/XPath;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/common/XPath;->class$org$apache$xmlbeans$impl$common$XPath:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_currentNodeVar:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    const-string p2, "$this"

    :cond_2
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_currentNodeVar:Ljava/lang/String;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_namespaces:Ljava/util/Map;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_3
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_externalNamespaces:Ljava/util/Map;

    return-void
.end method

.method private addStep(ZZLorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/common/XPath$Step;)Lorg/apache/xmlbeans/impl/common/XPath$Step;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/common/XPath$Step;-><init>(ZZLorg/apache/poi/javax/xml/namespace/QName;)V

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    move-object p1, p4

    :goto_0
    iget-object p2, p1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    if-eqz p2, :cond_1

    move-object p1, p2

    goto :goto_0

    :cond_1
    iput-object v0, p1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iput-object p1, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_prev:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    return-object p4
.end method

.method private computeBacktrack(Lorg/apache/xmlbeans/impl/common/XPath$Step;)V
    .locals 12

    :goto_0
    if-eqz p1, :cond_10

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    :goto_1
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_deep:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    goto :goto_1

    :cond_0
    iget-boolean v1, p1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_deep:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    :goto_2
    if-eq p1, v0, :cond_f

    iput-boolean v2, p1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_hasBacktrack:Z

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    move-object v3, p1

    move v4, v1

    :goto_3
    if-eq v3, v0, :cond_2

    iget-object v5, v3, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/common/XPath$Step;->isWild()Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, v3, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_attr:Z

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    iget-object v3, v3, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v4, 0x1

    new-array v6, v5, [Lorg/apache/poi/javax/xml/namespace/QName;

    new-array v5, v5, [I

    move-object v8, p1

    move v7, v1

    :goto_4
    if-ge v7, v4, :cond_3

    iget-object v9, v8, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    aput-object v9, v6, v7

    iget-object v8, v8, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->getAnyQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, -0x1

    aput v7, v5, v1

    move v8, v1

    move v9, v7

    :goto_5
    if-ge v8, v4, :cond_6

    :goto_6
    if-le v9, v7, :cond_4

    aget-object v10, v6, v8

    aget-object v11, v6, v9

    invoke-virtual {v10, v11}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    aget v9, v5, v9

    goto :goto_6

    :cond_4
    add-int/lit8 v8, v8, 0x1

    aget-object v10, v6, v8

    add-int/lit8 v9, v9, 0x1

    aget-object v11, v6, v9

    invoke-virtual {v10, v11}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    aget v10, v5, v9

    aput v10, v5, v8

    goto :goto_5

    :cond_5
    aput v9, v5, v8

    goto :goto_5

    :cond_6
    move-object v6, p1

    :goto_7
    if-eq v6, v3, :cond_8

    iput-boolean v2, v6, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_hasBacktrack:Z

    iput-object p1, v6, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_backtrack:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    aget v7, v5, v1

    :goto_8
    if-lez v7, :cond_7

    iget-object v8, v6, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_backtrack:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iget-object v8, v8, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iput-object v8, v6, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_backtrack:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    add-int/lit8 v7, v7, -0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    iget-object v6, v6, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    goto :goto_7

    :cond_8
    if-le v4, v2, :cond_9

    add-int/lit8 v4, v4, -0x1

    aget v1, v5, v4

    move-object v4, p1

    :goto_9
    if-lez v1, :cond_a

    iget-object v4, v4, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_9
    move-object v4, p1

    :cond_a
    if-eq v3, v0, :cond_b

    iget-boolean v1, v3, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_attr:Z

    if-eqz v1, :cond_b

    iput-boolean v2, v3, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_hasBacktrack:Z

    iput-object v4, v3, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_backtrack:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iget-object v3, v3, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    :cond_b
    if-eq v3, v0, :cond_c

    iget-object v1, v3, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    if-nez v1, :cond_c

    iput-boolean v2, v3, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_hasBacktrack:Z

    iput-object v4, v3, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_backtrack:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    :cond_c
    sget-boolean v1, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    iget-boolean v1, p1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_deep:Z

    if-eqz v1, :cond_d

    goto :goto_a

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_a
    iput-boolean v2, p1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_hasBacktrack:Z

    iput-object p1, p1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_backtrack:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    :cond_f
    move-object p1, v0

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method private getAnyQName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;
    .locals 6

    iget v3, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_line:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_column:I

    iget v5, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_offset:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/xmlbeans/XmlError;->forLocation(Ljava/lang/String;ILjava/lang/String;III)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;-><init>(Lorg/apache/xmlbeans/XmlError;)V

    return-object v0
.end method

.method private parseWhitespace()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->advance()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private processNonXpathDecls()V
    .locals 0

    return-void
.end method

.method private tokenize(Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->advance(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private tokenize(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    :goto_3
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->isWhitespace(I)Z

    move-result p1

    if-eqz p1, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p2, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_7

    return v0

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->advance(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private tokenize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_7

    return v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    :goto_4
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->isWhitespace(I)Z

    move-result p1

    if-eqz p1, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p2, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_9

    return v0

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    :goto_5
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->isWhitespace(I)Z

    move-result p1

    if-eqz p1, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {p0, p3, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_b

    return v0

    :cond_b
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    :goto_6
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->isWhitespace(I)Z

    move-result p1

    if-eqz p1, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->advance(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private tokenize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_9

    return v0

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    :goto_5
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->isWhitespace(I)Z

    move-result p1

    if-eqz p1, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {p0, p2, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_b

    return v0

    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    :goto_6
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->isWhitespace(I)Z

    move-result p1

    if-eqz p1, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {p0, p3, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_d

    return v0

    :cond_d
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    :goto_7
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->isWhitespace(I)Z

    move-result p1

    if-eqz p1, :cond_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual {p0, p4, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_f

    return v0

    :cond_f
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->advance(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private tokenizeNCName()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->parseWhitespace()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->isNCNameStart()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->currChar()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->advance()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->isNCName()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Expected non-colonized name"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;

    move-result-object v0

    throw v0
.end method

.method private tokenizePath(Ljava/util/ArrayList;)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_lastDeepDot:Z

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenizeSteps()Lorg/apache/xmlbeans/impl/common/XPath$Step;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->computeBacktrack(Lorg/apache/xmlbeans/impl/common/XPath$Step;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_lastDeepDot:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_sawDeepDot:Z

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_deep:Z

    iget-object v4, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {p0, v3, v1, v4, v2}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->addStep(ZZLorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/common/XPath$Step;)Lorg/apache/xmlbeans/impl/common/XPath$Step;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-boolean v3, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_deep:Z

    iget-boolean v4, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_attr:Z

    iget-object v5, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {p0, v3, v4, v5, v2}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->addStep(ZZLorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/common/XPath$Step;)Lorg/apache/xmlbeans/impl/common/XPath$Step;

    move-result-object v2

    :goto_1
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->computeBacktrack(Lorg/apache/xmlbeans/impl/common/XPath$Step;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private tokenizeQName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 4

    const-string v0, "*"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->getAnyQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenizeNCName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_1

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenizeNCName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {v2, v1, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private tokenizeQuotedUri()Ljava/lang/String;
    .locals 4

    const-string v0, "\""

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto :goto_0

    :cond_0
    const-string v0, "\'"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x27

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->currChar()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->currChar()I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->advance()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->currChar()I

    move-result v2

    if-eq v2, v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->currChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->advance()V

    goto :goto_1

    :cond_2
    const-string v0, "Path terminated in URI literal"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;

    move-result-object v0

    throw v0

    :cond_3
    const-string v0, "Expected quote (\" or \')"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;

    move-result-object v0

    throw v0
.end method

.method private tokenizeSelector()Lorg/apache/xmlbeans/impl/common/XPath$Selector;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenizePath(Ljava/util/ArrayList;)V

    const-string v1, "|"

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/xmlbeans/impl/common/XPath$Selector;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/xmlbeans/impl/common/XPath$Step;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/impl/common/XPath$Step;

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/impl/common/XPath$Selector;-><init>([Lorg/apache/xmlbeans/impl/common/XPath$Step;)V

    return-object v1
.end method

.method private tokenizeSteps()Lorg/apache/xmlbeans/impl/common/XPath$Step;
    .locals 11

    const-string v0, "/"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_currentNodeVar:Ljava/lang/String;

    const-string v2, "$"

    const-string v3, "//"

    invoke-direct {p0, v2, v1, v3}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    const-string v5, "."

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_4

    invoke-direct {p0, v5, v3}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_currentNodeVar:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v5, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_currentNodeVar:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v5}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0, v7, v7, v4, v4}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->addStep(ZZLorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/common/XPath$Step;)Lorg/apache/xmlbeans/impl/common/XPath$Step;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    move v1, v7

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v6

    :goto_2
    move-object v2, v4

    :goto_3
    move v8, v7

    :cond_5
    :goto_4
    const-string v9, "attribute"

    const-string v10, "::"

    invoke-direct {p0, v9, v10}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "@"

    invoke-direct {p0, v9}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_7

    :cond_6
    invoke-direct {p0, v5}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v8, :cond_8

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v8, v7

    goto :goto_6

    :cond_8
    :goto_5
    move v8, v6

    goto :goto_6

    :cond_9
    const-string v9, "child"

    invoke-direct {p0, v9, v10}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenizeQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-direct {p0, v1, v7, v9, v2}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->addStep(ZZLorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/common/XPath$Step;)Lorg/apache/xmlbeans/impl/common/XPath$Step;

    move-result-object v2

    move v1, v7

    :cond_a
    :goto_6
    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    move v1, v6

    goto :goto_3

    :cond_b
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    if-eqz v8, :cond_5

    move v1, v6

    goto :goto_4

    :cond_c
    :goto_7
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenizeQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-direct {p0, v1, v6, v0, v2}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->addStep(ZZLorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/common/XPath$Step;)Lorg/apache/xmlbeans/impl/common/XPath$Step;

    move-result-object v2

    :cond_d
    iput-boolean v8, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_lastDeepDot:Z

    if-eqz v8, :cond_e

    iput-boolean v6, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_lastDeepDot:Z

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->getAnyQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-direct {p0, v6, v7, v0, v2}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->addStep(ZZLorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/common/XPath$Step;)Lorg/apache/xmlbeans/impl/common/XPath$Step;

    move-result-object v2

    :cond_e
    invoke-direct {p0, v7, v7, v4, v2}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->addStep(ZZLorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/common/XPath$Step;)Lorg/apache/xmlbeans/impl/common/XPath$Step;

    move-result-object v0

    return-object v0

    :cond_f
    const-string v0, "Absolute paths unsupported"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;

    move-result-object v0

    throw v0
.end method

.method private tokenizeXPath()Lorg/apache/xmlbeans/impl/common/XPath;
    .locals 6

    :goto_0
    const-string v0, "declare"

    const-string v1, "namespace"

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "$xmlbeans!ns_boundary"

    const-string v4, ";"

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->parseWhitespace()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenizeNCName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenizeQuotedUri()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_namespaces:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "Redefinition of namespace prefix: "

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_namespaces:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_externalNamespaces:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_externalNamespaces:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v4}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;)Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_externalNamespaces:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_offset:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;

    move-result-object v0

    throw v0

    :cond_2
    const-string v0, "Expected \'=\'"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;

    move-result-object v0

    throw v0

    :cond_3
    const-string v0, "Expected prefix after \'declare namespace\'"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;

    move-result-object v0

    throw v0

    :cond_4
    const-string v2, "default"

    const-string v5, "element"

    invoke-direct {p0, v0, v2, v5, v1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenizeQuotedUri()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_namespaces:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_namespaces:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_externalNamespaces:Ljava/util/Map;

    const-string v2, "$xmlbeans!default_uri"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_externalNamespaces:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v4}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenize(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_externalNamespaces:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_offset:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    :goto_1
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    const-string v0, "Default Namespace declaration must end with ;"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;

    move-result-object v0

    throw v0

    :cond_6
    const-string v0, "Redefinition of default element namespace : "

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;

    move-result-object v0

    throw v0

    :cond_7
    const-string v0, "Redefinition of default element namespace"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;

    move-result-object v0

    throw v0

    :cond_8
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_namespaces:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_namespaces:Ljava/util/Map;

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenizeSelector()Lorg/apache/xmlbeans/impl/common/XPath$Selector;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->parseWhitespace()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->currChar()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    new-instance v1, Lorg/apache/xmlbeans/impl/common/XPath;

    iget-boolean v2, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_sawDeepDot:Z

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/common/XPath;-><init>(Lorg/apache/xmlbeans/impl/common/XPath$Selector;ZLorg/apache/xmlbeans/impl/common/XPath$1;)V

    return-object v1

    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unexpected char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->currChar()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public advance()V
    .locals 6

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_offset:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_expr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_expr:Ljava/lang/String;

    iget v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_offset:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_offset:I

    iget v3, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_column:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_column:I

    const/16 v3, 0xa

    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    if-ne v0, v3, :cond_2

    :cond_0
    iget v5, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_line:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_line:I

    iput v2, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_column:I

    add-int/2addr v1, v2

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_expr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_expr:Ljava/lang/String;

    iget v5, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_offset:I

    add-int/2addr v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_2

    :cond_1
    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_offset:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_offset:I

    :cond_2
    return-void
.end method

.method public advance(I)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->advance()V

    move p1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public compile(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/common/XPath;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_offset:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_line:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_column:I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_expr:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->tokenizeXPath()Lorg/apache/xmlbeans/impl/common/XPath;

    move-result-object p1

    return-object p1
.end method

.method public currChar()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->currChar(I)I

    move-result v0

    return v0
.end method

.method public currChar(I)I
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_offset:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_expr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_expr:Ljava/lang/String;

    iget v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    return p1
.end method

.method public isNCName()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->currChar()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->currChar()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isNCName(I)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isNCNameStart()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->currChar()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->currChar()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isNCNameStart(I)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isWhitespace()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method public isWhitespace(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->currChar(I)I

    move-result p1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

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

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_namespaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_namespaces:Ljava/util/Map;

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_externalNamespaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_externalNamespaces:Ljava/util/Map;

    goto :goto_0

    :cond_1
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "http://www.w3.org/XML/1998/namespace"

    return-object p1

    :cond_2
    const-string v0, "xs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "http://www.w3.org/2001/XMLSchema"

    return-object p1

    :cond_3
    const-string v0, "xsi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "http://www.w3.org/2001/XMLSchema-instance"

    return-object p1

    :cond_4
    const-string v0, "fn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "http://www.w3.org/2002/11/xquery-functions"

    return-object p1

    :cond_5
    const-string v0, "xdt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "http://www.w3.org/2003/11/xpath-datatypes"

    return-object p1

    :cond_6
    const-string v0, "local"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "http://www.w3.org/2003/11/xquery-local-functions"

    return-object p1

    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Undefined prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;

    move-result-object p1

    throw p1
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_offset:I

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_expr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_expr:Ljava/lang/String;

    iget v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$CompilationContext;->_offset:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
