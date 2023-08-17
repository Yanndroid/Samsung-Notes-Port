.class Lorg/apache/xmlbeans/impl/store/Xobj$CommentXobj;
.super Lorg/apache/xmlbeans/impl/store/Xobj$NodeXobj;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Comment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Xobj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentXobj"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj$NodeXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;II)V

    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_appendData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public deleteData(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_deleteData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;II)V

    return-void
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->_emptyNodeList:Lorg/w3c/dom/NodeList;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I

    move-result v0

    return v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_insertData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;ILjava/lang/String;)V

    return-void
.end method

.method public newNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Xobj$CommentXobj;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$CommentXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    return-object v0
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_replaceData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;IILjava/lang/String;)V

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_setData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_substringData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
