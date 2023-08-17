.class abstract Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/CharacterData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/DomImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CharNode"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public _cch:I

.field private _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field public _next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

.field public _off:I

.field public _prev:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

.field private _src:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->class$org$apache$xmlbeans$impl$store$DomImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.DomImpl"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->class$org$apache$xmlbeans$impl$store$DomImpl:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_src:Ljava/lang/Object;

    return-object p0
.end method

.method public static appendNode(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->insertNode(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object p0

    return-object p0
.end method

.method public static appendNodes(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez p0, :cond_4

    return-object p1

    :cond_4
    move-object v0, p0

    :goto_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_2

    :cond_5
    iput-object p1, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    return-object p0
.end method

.method public static copyNodes(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_3

    instance-of v2, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$TextNode;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->createTextNode()Lorg/apache/xmlbeans/impl/store/DomImpl$TextNode;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->createCdataNode()Lorg/apache/xmlbeans/impl/store/DomImpl$CdataNode;

    move-result-object v2

    :goto_1
    iget v3, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_off:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    invoke-virtual {v2, p1, v3, v4}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->setChars(Ljava/lang/Object;II)V

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    if-eqz v1, :cond_2

    iput-object v2, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iput-object v1, v2, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    :cond_2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-object v1, v2

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static insertNode(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->isOnList(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->isOnList(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v1, :cond_6

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_3
    if-nez p0, :cond_9

    if-nez v0, :cond_a

    if-nez p2, :cond_8

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_9
    if-ne p0, p2, :cond_b

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iput-object p0, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    :cond_a
    :goto_4
    move-object p0, p1

    goto :goto_6

    :cond_b
    move-object v0, p0

    :goto_5
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eq v1, p2, :cond_c

    move-object v0, v1

    goto :goto_5

    :cond_c
    iput-object v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eqz v1, :cond_d

    iget-object p2, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iput-object p1, p2, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    :cond_d
    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iput-object p1, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    :goto_6
    return-object p0
.end method

.method public static isOnList(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private isValid()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_src:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-nez v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public static remove(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->isOnList(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-ne p0, p1, :cond_2

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    :goto_1
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    return-object p0
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_appendChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public appendData(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_appendData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
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

.method public deleteData(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_deleteData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;II)V

    return-void
.end method

.method public dump()V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->dump(Ljava/io/PrintStream;)V

    return-void
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 0

    invoke-virtual {p0, p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->dump(Ljava/io/PrintStream;Ljava/lang/Object;)V

    return-void
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_src:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->dump(Ljava/io/PrintStream;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Lonely CharNode: \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_src:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_off:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
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

.method public getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_src:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getFeature(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
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

.method public getQName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_insertData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;ILjava/lang/String;)V

    return-void
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

.method public isNodeAftertext()Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_src:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this method is to only be used for nodes backed up by Xobjs"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_src:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->isOnList(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Z

    move-result v0

    :goto_1
    return v0
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

.method public locale()Lorg/apache/xmlbeans/impl/store/Locale;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_src:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    :cond_2
    return-object v0
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

.method public replaceData(IILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_replaceData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;IILjava/lang/String;)V

    return-void
.end method

.method public setChars(Ljava/lang/Object;II)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_src:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_src:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    :cond_4
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_src:Ljava/lang/Object;

    iput p2, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_off:I

    iput p3, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_setData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public setDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_src:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    return-void
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

.method public substringData(II)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_substringData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tempCur()Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_src:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCharNode(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)V

    return-object v0
.end method
