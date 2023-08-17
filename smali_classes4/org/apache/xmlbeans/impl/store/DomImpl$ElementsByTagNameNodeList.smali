.class Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNodeList;
.super Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/DomImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElementsByTagNameNodeList"
.end annotation


# instance fields
.field private _name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNodeList;->_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNodeList;->_name:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNodeList;->_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method
