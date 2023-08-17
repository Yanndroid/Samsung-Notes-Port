.class final Lorg/apache/xmlbeans/impl/common/XPath$Step;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/common/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Step"
.end annotation


# instance fields
.field public final _attr:Z

.field public _backtrack:Lorg/apache/xmlbeans/impl/common/XPath$Step;

.field public final _deep:Z

.field public _flags:I

.field public _hasBacktrack:Z

.field public final _name:Lorg/apache/poi/javax/xml/namespace/QName;

.field public _next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

.field public _prev:Lorg/apache/xmlbeans/impl/common/XPath$Step;


# direct methods
.method public constructor <init>(ZZLorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_deep:Z

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_attr:Z

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    :goto_1
    if-eqz p2, :cond_2

    or-int/lit8 p1, p1, 0x4

    :cond_2
    iput p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_flags:I

    return-void
.end method


# virtual methods
.method public isWild()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public match(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 7

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-eq v2, v4, :cond_2

    return v5

    :cond_2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v4, v6, :cond_3

    return v5

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v3, v5

    :goto_0
    return v3
.end method
