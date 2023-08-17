.class abstract Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LoadContext"
.end annotation


# instance fields
.field private _idAttrs:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public addIdAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->_idAttrs:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->_idAttrs:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->_idAttrs:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract attr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract attr(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V
.end method

.method public abstract bookmark(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V
.end method

.method public abstract bookmarkLastAttr(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V
.end method

.method public abstract bookmarkLastNonAttr(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V
.end method

.method public abstract comment(Ljava/lang/String;)V
.end method

.method public abstract comment([CII)V
.end method

.method public abstract endDTD()V
.end method

.method public abstract endElement()V
.end method

.method public abstract finish()Lorg/apache/xmlbeans/impl/store/Cur;
.end method

.method public isAttrOfTypeId(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->_idAttrs:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ":"

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->_idAttrs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    invoke-virtual {p2}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract lineNumber(III)V
.end method

.method public abstract procInst(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startElement(Lorg/apache/poi/javax/xml/namespace/QName;)V
.end method

.method public abstract text(Ljava/lang/String;)V
.end method

.method public abstract text([CII)V
.end method

.method public abstract xmlns(Ljava/lang/String;Ljava/lang/String;)V
.end method
