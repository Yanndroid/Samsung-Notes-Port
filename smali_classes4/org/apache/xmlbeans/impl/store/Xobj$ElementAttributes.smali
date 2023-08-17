.class final Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Xobj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ElementAttributes"
.end annotation


# instance fields
.field private _elementXobj:Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I

    move-result v0

    return v0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;

    invoke-static {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_removeNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;

    invoke-static {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_removeNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_setNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_setNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method
