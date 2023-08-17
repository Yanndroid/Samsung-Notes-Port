.class Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;
.super Lorg/apache/xmlbeans/impl/store/Xobj$NamedNodeXobj;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Element;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Xobj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElementXobj"
.end annotation


# instance fields
.field private _attributes:Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj$NamedNodeXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;II)V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_getAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_getAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_getAttributeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_getAttributeNodeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;->_attributes:Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;-><init>(Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;->_attributes:Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;->_attributes:Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_getElementsByTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_getElementsByTagNameNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DOM Level 3 Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_getTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_hasAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_hasAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public newNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_removeAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_removeAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_removeAttributeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object p1

    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_setAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_setAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_setAttributeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object p1

    return-object p1
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_element_setAttributeNodeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object p1

    return-object p1
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "DOM Level 3 Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "DOM Level 3 Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "DOM Level 3 Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
