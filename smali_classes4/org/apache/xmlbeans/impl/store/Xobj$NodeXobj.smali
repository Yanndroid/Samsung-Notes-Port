.class abstract Lorg/apache/xmlbeans/impl/store/Xobj$NodeXobj;
.super Lorg/apache/xmlbeans/impl/store/Xobj;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/NodeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Xobj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NodeXobj"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Xobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;II)V

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_appendChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_cloneNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Z)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_compareDocumentPosition(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)S

    move-result p1

    return p1
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getBaseURI(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 0

    return-object p0
.end method

.method public getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 0

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getFeature(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getLastChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_childNodes_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I

    move-result v0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getLocalName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNamespaceURI(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeType(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)S

    move-result v0

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getParentNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getPreviousSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getTextContent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getUserData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasAttributes()Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_hasAttributes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z

    move-result v0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_hasChildNodes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z

    move-result v0

    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_isDefaultNamespace(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_isEqualNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Z

    move-result p1

    return p1
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_isSameNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Z

    move-result p1

    return p1
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_isSupported(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_childNodes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_lookupNamespaceURI(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_lookupPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nodeCanHavePrefixUri()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public normalize()V
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_normalize(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_removeChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_replaceChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_setPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_setTextContent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_setUserData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
