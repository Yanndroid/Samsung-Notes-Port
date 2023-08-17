.class Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;
.super Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/DomImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElementsByTagNameNSNodeList"
.end annotation


# instance fields
.field private _local:Ljava/lang/String;

.field private _uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;->_uri:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;->_local:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;->_uri:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNamespaceURI(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;->_uri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;->_local:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getLocalName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;->_local:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    return p1
.end method
