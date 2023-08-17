.class final Lorg/apache/xmlbeans/impl/store/DomImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$SaajCdataNode;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$SaajTextNode;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$CdataNode;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$TextNode;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNodeList;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$EmptyNodeList;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$NotSupportedError;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$InuseAttributeError;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$NoModificationAllowedErr;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field public static final ATTR:I = 0x2

.field public static final CDATA:I = 0x4

.field public static final COMMENT:I = 0x8

.field public static final DOCFRAG:I = 0xb

.field public static final DOCTYPE:I = 0xa

.field public static final DOCUMENT:I = 0x9

.field public static final ELEMENT:I = 0x1

.field public static final ENTITY:I = 0x6

.field public static final ENTITYREF:I = 0x5

.field public static final NOTATION:I = 0xc

.field public static final PROCINST:I = 0x7

.field public static final TEXT:I = 0x3

.field public static _emptyNodeList:Lorg/w3c/dom/NodeList;

.field public static synthetic class$org$apache$xmlbeans$impl$store$DomImpl:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$impl$store$DomImpl$SaajData:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->class$org$apache$xmlbeans$impl$store$DomImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.DomImpl"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->class$org$apache$xmlbeans$impl$store$DomImpl:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->$assertionsDisabled:Z

    new-instance v0, Lorg/apache/xmlbeans/impl/store/DomImpl$EmptyNodeList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$EmptyNodeList;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$1;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->_emptyNodeList:Lorg/w3c/dom/NodeList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _attr_getOwnerElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attr_getOwnerElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attr_getOwnerElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _attr_getSpecified(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static _attributes_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _attributes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _attributes_removeNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_removeNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_removeNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _attributes_removeNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_removeNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_removeNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _attributes_setNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    if-ne v1, v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_setNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_setNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;

    const-string p1, "Attr to set is from another document"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attr to set is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _attributes_setNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    if-ne v1, v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_setNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_setNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;

    const-string p1, "Attr to set is from another document"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attr to set is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _characterData_appendData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static _characterData_deleteData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;II)V
    .locals 3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_2

    if-ltz p2, :cond_2

    add-int v1, p1, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p1

    :cond_0
    if-lez p2, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_setData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;-><init>()V

    throw p0
.end method

.method public static _characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static _characterData_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static _characterData_insertData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;ILjava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_setData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;-><init>()V

    throw p0
.end method

.method public static _characterData_replaceData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;IILjava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_3

    if-ltz p2, :cond_3

    add-int v1, p1, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p1

    :cond_0
    if-lez p2, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_setData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;-><init>()V

    throw p0
.end method

.method public static _characterData_setData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public static _characterData_substringData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;II)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_1

    add-int v0, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p1

    :cond_0
    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;-><init>()V

    throw p0
.end method

.method public static _childNodes_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/DomImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    instance-of v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    move-object v1, p0

    check-cast v1, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isVacant()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDomZeroOneChildren()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->childNodes_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I

    move-result p0

    return p0

    :cond_3
    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->childNodes_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _childNodes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->childNodes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    goto :goto_0

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->childNodes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static _document_createAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _document_createAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _document_createCDATASection(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createCDATASection(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/CDATASection;

    return-object p0
.end method

.method public static _document_createComment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createComment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createComment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Comment;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _document_createDocumentFragment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/DocumentFragment;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createDocumentFragment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createDocumentFragment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/DocumentFragment;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _document_createElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _document_createElementNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createElementNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createElementNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _document_createEntityReference(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _document_createProcessingInstruction(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createProcessingInstruction(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createProcessingInstruction(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _document_createTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Text;

    return-object p0
.end method

.method public static _document_getDoctype(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/DocumentType;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_getDoctype(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_getDoctype(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/DocumentType;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _document_getDocumentElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_getDocumentElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_getDocumentElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _document_getElementById(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _document_getElementsByTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_getElementsByTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_getElementsByTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _document_getElementsByTagNameNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_getElementsByTagNameNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_getElementsByTagNameNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _document_getImplementation(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/DOMImplementation;
    .locals 0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static _document_importNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_importNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Z)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_importNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Z)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _domImplementation_createDocument(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->domImplementation_createDocument(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :cond_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->domImplementation_createDocument(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public static _domImplementation_hasFeature(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "1.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "2.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return p0

    :cond_1
    const-string p2, "core"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    return v0

    :cond_2
    const-string p2, "xml"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return p0
.end method

.method public static _element_getAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static _element_getAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static _element_getAttributeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public static _element_getAttributeNodeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public static _element_getElementsByTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->element_getElementsByTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->element_getElementsByTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _element_getElementsByTagNameNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->element_getElementsByTagNameNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->element_getElementsByTagNameNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _element_getTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static _element_hasAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static _element_hasAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static _element_removeAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_removeNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static _element_removeAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_removeNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static _element_removeAttributeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_removeNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    const-string p1, "Attribute to remove does not belong to this element"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    const-string p1, "Attribute to remove is null"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _element_setAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->element_setAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->element_setAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _element_setAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->element_setAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->element_setAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _element_setAttributeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_setNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public static _element_setAttributeNodeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_setNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public static _getXmlCursor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->getXmlCursor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->getXmlCursor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _getXmlObject(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->getXmlObject(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->getXmlObject(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _getXmlStreamReader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->getXmlStreamReader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->getXmlStreamReader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _node_appendChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static _node_cloneNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Z)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_cloneNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Z)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_cloneNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Z)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _node_compareDocumentPosition(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)S
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_getBaseURI(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_getFeature(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 4

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/DomImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    instance-of v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    move-object v1, p0

    check-cast v1, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isVacant()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isFirstChildPtrDomUsable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_2
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->lastAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNextSiblingPtrDomUsable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p0, v2, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    check-cast p0, Lorg/apache/xmlbeans/impl/store/Xobj$NodeXobj;

    return-object p0

    :cond_3
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isExistingCharNodesValueUsable()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    return-object p0

    :cond_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    goto :goto_1

    :cond_5
    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static _node_getLastChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getLastChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getLastChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _node_getLocalName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeCanHavePrefixUri()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static _node_getNamespaceURI(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeCanHavePrefixUri()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static _node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    goto :goto_0

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static _node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown node type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "#document-fragment"

    return-object p0

    :pswitch_1
    const-string p0, "#document"

    return-object p0

    :pswitch_2
    const-string p0, "#comment"

    return-object p0

    :pswitch_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not impl"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    const-string p0, "#cdata-section"

    return-object p0

    :pswitch_6
    const-string p0, "#text"

    return-object p0

    :pswitch_7
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static _node_getNodeType(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)S
    .locals 0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public static _node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static _node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Document;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Document;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _node_getParentNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getParentNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getParentNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static _node_getPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeCanHavePrefixUri()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static _node_getPreviousSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getPreviousSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    goto :goto_0

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getPreviousSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static _node_getTextContent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_getUserData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_hasAttributes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_hasAttributes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_hasAttributes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _node_hasChildNodes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static _node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_3

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    if-ne v1, v0, :cond_3

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    instance-of v1, p2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;

    const-string p1, "Reference child is from another document"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_2
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;

    const-string p1, "Child to add is from another document"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Child to add is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_isDefaultNamespace(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_isEqualNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_isSameNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_isSupported(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_domImplementation_hasFeature(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static _node_lookupNamespaceURI(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_lookupPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_normalize(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_normalize(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_normalize(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _node_removeChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    if-ne v1, v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_removeChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_removeChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;

    const-string p1, "Child to remove is from another document"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    const-string p1, "Child to remove is null"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_replaceChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    instance-of v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    if-ne v1, v0, :cond_2

    instance-of v1, p2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_1

    check-cast p2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    if-ne v1, v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_replaceChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_replaceChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;

    const-string p1, "Child to replace is from another document"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;

    const-string p1, "Child to add is from another document"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    const-string p1, "Child to replace is null"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Child to add is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _node_setPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_setPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_setPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _node_setTextContent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_setUserData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _processingInstruction_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static _processingInstruction_getTarget(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static _processingInstruction_setData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public static _soapElement_addAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addAttribute(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addAttribute(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_addChildElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_addChildElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_addChildElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_addChildElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_addChildElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_addNamespaceDeclaration(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addNamespaceDeclaration(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addNamespaceDeclaration(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_addTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addTextNode(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addTextNode(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_getAllAttributes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getAllAttributes(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getAllAttributes(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_getAttributeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getAttributeValue(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getAttributeValue(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_getChildElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getChildElements(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getChildElements(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_getChildElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/util/Iterator;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getChildElements(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getChildElements(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_getElementName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getElementName(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getElementName(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_getEncodingStyle(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getEncodingStyle(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getEncodingStyle(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_getNamespacePrefixes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getNamespacePrefixes(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getNamespacePrefixes(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_getNamespaceURI(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getNamespaceURI(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getNamespaceURI(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_getVisibleNamespacePrefixes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getVisibleNamespacePrefixes(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getVisibleNamespacePrefixes(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_removeAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Z
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_removeAttribute(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_removeAttribute(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_removeContents(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_removeContents(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_removeContents(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_removeNamespaceDeclaration(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Z
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_removeNamespaceDeclaration(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_removeNamespaceDeclaration(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapElement_setEncodingStyle(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_setEncodingStyle(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_setEncodingStyle(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapEnvelope_addBody(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_addBody(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_addBody(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapEnvelope_addHeader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_addHeader(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_addHeader(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapEnvelope_createName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_createName(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_createName(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapEnvelope_createName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_createName(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_createName(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapEnvelope_getBody(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_getBody(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_getBody(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapEnvelope_getHeader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_getHeader(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_getHeader(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapNode_detachNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/Node;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_detachNode(Lorg/apache/xmlbeans/impl/soap/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_detachNode(Lorg/apache/xmlbeans/impl/soap/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapNode_getParentElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/Node;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_getParentElement(Lorg/apache/xmlbeans/impl/soap/Node;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_getParentElement(Lorg/apache/xmlbeans/impl/soap/Node;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapNode_getValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/Node;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_getValue(Lorg/apache/xmlbeans/impl/soap/Node;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_getValue(Lorg/apache/xmlbeans/impl/soap/Node;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapNode_recycleNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/Node;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_recycleNode(Lorg/apache/xmlbeans/impl/soap/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_recycleNode(Lorg/apache/xmlbeans/impl/soap/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapNode_setParentElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/Node;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_setParentElement(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_setParentElement(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapNode_setValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/Node;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_setValue(Lorg/apache/xmlbeans/impl/soap/Node;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_setValue(Lorg/apache/xmlbeans/impl/soap/Node;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapPart_addMimeHeader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_addMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_addMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapPart_getAllMimeHeaders(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getAllMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getAllMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapPart_getContent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljavax/xml/transform/Source;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getContent(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)Ljavax/xml/transform/Source;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getContent(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)Ljavax/xml/transform/Source;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapPart_getEnvelope(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getEnvelope(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getEnvelope(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapPart_getMatchingMimeHeaders(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;[Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getMatchingMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getMatchingMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapPart_getMimeHeader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapPart_getNonMatchingMimeHeaders(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;[Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getNonMatchingMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getNonMatchingMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapPart_removeAllMimeHeaders(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_removeAllMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_removeAllMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapPart_removeMimeHeader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_removeMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_removeMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapPart_setContent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljavax/xml/transform/Source;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_setContent(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljavax/xml/transform/Source;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_setContent(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljavax/xml/transform/Source;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapPart_setMimeHeader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_setMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_setMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _soapText_isComment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/Text;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapText_isComment(Lorg/apache/xmlbeans/impl/soap/Text;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapText_isComment(Lorg/apache/xmlbeans/impl/soap/Text;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static _text_getWholeText(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _text_isElementContentWhitespace(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _text_replaceWholeText(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _text_splitText(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/w3c/dom/Text;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_deleteData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;II)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_document_createTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getParentNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Text;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->invalidateDomCaches(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    :cond_2
    check-cast p1, Lorg/w3c/dom/Text;

    return-object p1

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;-><init>()V

    throw p0
.end method

.method public static append(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    return-object p0
.end method

.method public static attr_getOwnerElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParentRaw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v0
.end method

.method public static attributes_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return v0
.end method

.method public static attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v0
.end method

.method public static attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v0
.end method

.method public static attributes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, p1, -0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    goto :goto_1

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v0
.end method

.method public static attributes_removeNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 5

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    move-object v2, v1

    check-cast v2, Lorg/apache/xmlbeans/impl/store/Xobj$AttrXobj;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Xobj$AttrXobj;->isId()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v3

    instance-of v4, v2, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentXobj;

    if-eqz v4, :cond_2

    check-cast v2, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentXobj;

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentXobj;->removeIdElement(Ljava/lang/String;)V

    :cond_2
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toPrevAttr()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Named item not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static attributes_removeNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    move-object v2, v1

    check-cast v2, Lorg/apache/xmlbeans/impl/store/Xobj$AttrXobj;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Xobj$AttrXobj;->isId()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v3

    instance-of v4, v2, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentXobj;

    if-eqz v4, :cond_3

    check-cast v2, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentXobj;

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentXobj;->removeIdElement(Ljava/lang/String;)V

    :cond_3
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toPrevAttr()Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Named item not found: uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ", local="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static attributes_setNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 5

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attr_getOwnerElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->toPrevAttr()Z

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {v2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    check-cast p1, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {p1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    check-cast p1, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {p1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    :goto_1
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v1

    :cond_4
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;

    const-string p1, "Node is not an attribute"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$InuseAttributeError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$InuseAttributeError;-><init>()V

    throw p0
.end method

.method public static attributes_setNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 5

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attr_getOwnerElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    if-nez v0, :cond_6

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->toPrevAttr()Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {v2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    check-cast p1, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {p1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    check-cast p1, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {p1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    :goto_1
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v1

    :cond_5
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;

    const-string p1, "Node is not an attribute"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$InuseAttributeError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$InuseAttributeError;-><init>()V

    throw p0
.end method

.method public static childNodes_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const-string v1, "Not impl"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDomZeroOneChildren()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    return v0

    :cond_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale;->domLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static childNodes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v1

    const-string v2, "Not impl"

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    return-object v0

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->findDomNthChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static detail_addDetailEntry(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/DetailEntry;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/Detail;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->detail_addDetailEntry(Lorg/apache/xmlbeans/impl/soap/Detail;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/DetailEntry;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->detail_addDetailEntry(Lorg/apache/xmlbeans/impl/soap/Detail;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/DetailEntry;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static detail_getDetailEntries(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/Detail;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->detail_getDetailEntries(Lorg/apache/xmlbeans/impl/soap/Detail;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->detail_getDetailEntries(Lorg/apache/xmlbeans/impl/soap/Detail;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static document_createAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateName(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createAttr(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    move-object p1, p0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/Xobj$AttrXobj;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj$NamedNodeXobj;->_canHavePrefixUri:Z

    return-object p0
.end method

.method public static document_createAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateQualifiedName(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createAttr(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p0
.end method

.method public static document_createCDATASection(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->createCdataNode()Lorg/apache/xmlbeans/impl/store/DomImpl$CdataNode;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->setChars(Ljava/lang/Object;II)V

    return-object p0
.end method

.method public static document_createComment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createComment()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v0
.end method

.method public static document_createDocumentFragment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocFragRoot()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v0
.end method

.method public static document_createElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateName(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createElement(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    move-object p1, p0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj$NamedNodeXobj;->_canHavePrefixUri:Z

    return-object p0
.end method

.method public static document_createElementNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateQualifiedName(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createElement(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p0
.end method

.method public static document_createProcessingInstruction(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->beginsWithXml(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;

    const-string p1, "Invalid target - is \'xml\'"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createProcinst(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p1

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;

    const-string p1, "Target has an invalid character"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Target is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Target is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static document_createTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->createTextNode()Lorg/apache/xmlbeans/impl/store/DomImpl$TextNode;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->setChars(Ljava/lang/Object;II)V

    return-object p0
.end method

.method public static document_getDoctype(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static document_getDocumentElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 2

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->firstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static document_getElementsByTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNodeList;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNodeList;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-object v0
.end method

.method public static document_getElementsByTagNameNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static document_importNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Z)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const-string v2, ":"

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown kind"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createDocumentFragment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    goto/16 :goto_a

    :pswitch_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotSupportedError;

    const-string p1, "Document type nodes may not be imported"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotSupportedError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotSupportedError;

    const-string p1, "Document nodes may not be imported"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotSupportedError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createComment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createProcessingInstruction(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not impl"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createCDATASection(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    goto :goto_0

    :pswitch_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    :goto_0
    move p2, v3

    goto/16 :goto_a

    :pswitch_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p0, v1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p2

    goto :goto_4

    :cond_5
    :goto_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p2

    :goto_4
    move-object v1, p2

    move p2, v4

    goto :goto_a

    :pswitch_9
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_6

    :cond_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8

    goto :goto_5

    :cond_8
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    :goto_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {p0, v2, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createElementNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    goto :goto_8

    :cond_b
    :goto_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    :cond_c
    :goto_7
    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    :goto_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    move v5, v3

    :goto_9
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_d

    invoke-interface {v2, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-static {p0, v6, v4}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_importNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Z)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_setNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_d
    :goto_a
    if-eqz p2, :cond_e

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    if-ge v3, p2, :cond_e

    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-static {p0, p2, v4}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_importNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Z)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p2

    invoke-static {v1, p2, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_e
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static domImplementation_createDocument(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateQualifiedName(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocumentRoot()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Document;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createElement(Lorg/apache/poi/javax/xml/namespace/QName;)V

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    const/4 p0, 0x0

    :try_start_0
    invoke-static {v0, p0, p0}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xmlbeans/XmlRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Lorg/apache/xmlbeans/XmlException;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not impl"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static element_getElementsByTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNodeList;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNodeList;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-object v0
.end method

.method public static element_getElementsByTagNameNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static element_setAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_setNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    :cond_0
    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public static element_setAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateQualifiedName(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1, v1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validatePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_setNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    :cond_0
    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_setPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    invoke-static {v0, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public static firstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    return-object p0
.end method

.method public static getXmlCursor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cursor;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v0
.end method

.method public static getXmlObject(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v0
.end method

.method public static getXmlStreamReader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown kind"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not impl"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->access$100(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Ljava/lang/Object;

    move-result-object p0

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_off:I

    iget v0, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    invoke-static {v1, p0, v2, v0}, Lorg/apache/xmlbeans/impl/store/Jsr173;->newXmlStreamReader(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;II)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget p0, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object p0

    iget v0, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v2, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-static {v1, p0, v0, v2}, Lorg/apache/xmlbeans/impl/store/Jsr173;->newXmlStreamReader(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;II)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object p0

    :goto_0
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_1

    :pswitch_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/Jsr173;->newXmlStreamReader(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    move-object p0, v0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static impl_saajCallback_createSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->createElement(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p1
.end method

.method public static impl_saajCallback_ensureSoapTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Text;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static impl_saajCallback_getSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    sget-object p0, Lorg/apache/xmlbeans/impl/store/DomImpl;->class$org$apache$xmlbeans$impl$store$DomImpl$SaajData:Ljava/lang/Class;

    if-nez p0, :cond_0

    const-string p0, "org.apache.xmlbeans.impl.store.DomImpl$SaajData"

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lorg/apache/xmlbeans/impl/store/DomImpl;->class$org$apache$xmlbeans$impl$store$DomImpl$SaajData:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getBookmark(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;->_obj:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p0
.end method

.method public static impl_saajCallback_importSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Element;ZLorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not impl"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static impl_saajCallback_setSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/Object;)V
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    const-string p0, "org.apache.xmlbeans.impl.store.DomImpl$SaajData"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    sget-object v2, Lorg/apache/xmlbeans/impl/store/DomImpl;->class$org$apache$xmlbeans$impl$store$DomImpl$SaajData:Ljava/lang/Class;

    if-nez v2, :cond_0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/impl/store/DomImpl;->class$org$apache$xmlbeans$impl$store$DomImpl$SaajData:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->getBookmark(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;

    if-nez v2, :cond_1

    new-instance v2, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;

    invoke-direct {v2, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$1;)V

    :cond_1
    move-object v1, v2

    iput-object p1, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;->_obj:Ljava/lang/Object;

    :cond_2
    sget-object p1, Lorg/apache/xmlbeans/impl/store/DomImpl;->class$org$apache$xmlbeans$impl$store$DomImpl$SaajData:Ljava/lang/Class;

    if-nez p1, :cond_3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lorg/apache/xmlbeans/impl/store/DomImpl;->class$org$apache$xmlbeans$impl$store$DomImpl$SaajData:Ljava/lang/Class;

    :cond_3
    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->setBookmark(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-void
.end method

.method public static insert(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->parent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    return-object p0
.end method

.method private static isValidChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 7

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result p1

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eq p1, v5, :cond_3

    const/16 v3, 0xa

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    return-object v6

    :cond_1
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_getDoctype(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p0, "Documents may only have a maximum of one document type node"

    return-object p0

    :cond_2
    return-object v6

    :cond_3
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_getDocumentElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p0, "Documents may only have a maximum of one document element"

    return-object p0

    :cond_4
    return-object v6

    :pswitch_1
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nodeKindName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " nodes may not have any children"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    if-eq p1, v4, :cond_5

    if-ne p1, v3, :cond_7

    :cond_5
    return-object v6

    :pswitch_3
    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_6

    const/4 p0, 0x4

    if-eq p1, p0, :cond_6

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_6

    goto :goto_1

    :cond_6
    return-object v6

    :cond_7
    :goto_1
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nodeKindName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " nodes may not have "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nodeKindName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " nodes as children"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    return-object p0
.end method

.method public static nodeKindName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown node type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "notation"

    return-object p0

    :pswitch_1
    const-string p0, "document fragment"

    return-object p0

    :pswitch_2
    const-string p0, "document type"

    return-object p0

    :pswitch_3
    const-string p0, "document"

    return-object p0

    :pswitch_4
    const-string p0, "comment"

    return-object p0

    :pswitch_5
    const-string p0, "processing instruction"

    return-object p0

    :pswitch_6
    const-string p0, "entity"

    return-object p0

    :pswitch_7
    const-string p0, "entity reference"

    return-object p0

    :pswitch_8
    const-string p0, "cdata section"

    return-object p0

    :pswitch_9
    const-string p0, "text"

    return-object p0

    :pswitch_a
    const-string p0, "attribute"

    return-object p0

    :pswitch_b
    const-string p0, "element"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static node_cloneNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Z)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 7

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_5

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/16 v2, 0x9

    if-eq p1, v2, :cond_1

    const/16 v2, 0xb

    if-eq p1, v2, :cond_0

    move-object p1, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocFragRoot()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocumentRoot()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->createAttr(Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->createElement(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    move-object v4, p0

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :cond_5
    if-nez v1, :cond_7

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown kind"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not impl"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->createTextNode()Lorg/apache/xmlbeans/impl/store/DomImpl$TextNode;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->createCdataNode()Lorg/apache/xmlbeans/impl/store/DomImpl$CdataNode;

    move-result-object v0

    :goto_2
    move-object v1, v0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object p0

    iget v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-virtual {v1, p0, v0, v2}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->setChars(Ljava/lang/Object;II)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->copyNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :cond_7
    :goto_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    const-string v2, "Not impl"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :cond_0
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :pswitch_1
    check-cast p0, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isFirstChildPtrDomUsable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_0
    check-cast p0, Lorg/apache/xmlbeans/impl/store/Xobj$NodeXobj;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->lastAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNextSiblingPtrDomUsable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isCharNodesAfterUsable()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isCharNodesValueUsable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    return-object p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static node_getLastChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const-string v1, "Not impl"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toLastChild()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    :goto_0
    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    :goto_1
    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v2, v1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 4

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    check-cast p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->access$100(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->access$100(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    invoke-static {v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;I)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    invoke-static {v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;I)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->isNodeAftertext()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_0
    move-object v1, p0

    check-cast v1, Lorg/apache/xmlbeans/impl/store/Xobj$NodeXobj;

    goto :goto_2

    :pswitch_3
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    instance-of v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "PI, Comments and Elements always backed up by Xobj"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_4
    :goto_1
    check-cast p0, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNextSiblingPtrDomUsable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    check-cast p0, Lorg/apache/xmlbeans/impl/store/Xobj$NodeXobj;

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isCharNodesAfterUsable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    return-object p0

    :cond_6
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 4

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Text/CData should be a CharNode"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    :goto_0
    check-cast p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->access$100(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->access$100(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_off:I

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->access$100(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->isNodeAftertext()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    invoke-static {v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;I)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_off:I

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    invoke-virtual {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getCharsAfterAsString(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    invoke-static {v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;I)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_off:I

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    invoke-virtual {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getCharsValueAsString(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    check-cast p0, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getValueAsString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_ownerDoc:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocumentRoot()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_ownerDoc:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_ownerDoc:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    return-object p0
.end method

.method public static node_getParentNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const-string v1, "Not impl"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown kind"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    goto :goto_1

    :goto_0
    :pswitch_3
    move-object p0, v2

    goto :goto_1

    :pswitch_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParentRaw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_0

    :cond_0
    :goto_1
    if-nez p0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static node_getPreviousSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    check-cast v1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-nez v1, :cond_7

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_7

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    instance-of v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Text/CData should be a CharNode"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_4
    :goto_1
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->access$100(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_5

    const/4 p0, 0x0

    return-object p0

    :cond_5
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->access$100(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->isNodeAftertext()Z

    move-result v2

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v0, :cond_8

    if-eqz v2, :cond_6

    check-cast v1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    goto :goto_2

    :cond_6
    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    goto :goto_3

    :cond_7
    :goto_2
    if-eqz v1, :cond_9

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    if-eq v0, p0, :cond_9

    :cond_8
    :goto_3
    move-object v1, v0

    goto :goto_2

    :cond_9
    return-object v1
.end method

.method public static node_hasAttributes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasAttrs()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 10

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    if-eqz p2, :cond_4

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->parent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    if-ne v1, p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    const-string p1, "RefChild is not a child of this node"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_8

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->firstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_5

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateNewChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->firstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_7

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    if-nez p2, :cond_6

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->append(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    goto :goto_4

    :cond_6
    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->insert(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    :goto_4
    move-object v0, v1

    goto :goto_3

    :cond_7
    return-object p1

    :cond_8
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateNewChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->remove(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v3

    const/4 v4, 0x1

    if-nez v0, :cond_a

    const/4 v5, 0x2

    if-eq v3, v5, :cond_a

    if-eq v3, v2, :cond_a

    const/16 v2, 0x9

    if-eq v3, v2, :cond_a

    if-ne v3, v4, :cond_9

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_a
    :goto_5
    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v5, 0x5

    const-string v6, "Not implemented"

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v1, v4, :cond_15

    const/16 v9, 0xa

    if-eq v1, v9, :cond_14

    if-eq v1, v8, :cond_d

    if-eq v1, v7, :cond_d

    if-eq v1, v5, :cond_c

    if-eq v1, v3, :cond_15

    if-ne v1, v2, :cond_b

    goto :goto_9

    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected child node type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    move-object v1, p1

    check-cast v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v0, :cond_f

    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v0, :cond_e

    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_f
    :goto_6
    const/4 v0, 0x0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    if-nez p2, :cond_10

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    goto :goto_8

    :cond_10
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v2

    if-eq v2, v8, :cond_13

    if-ne v2, v7, :cond_11

    goto :goto_7

    :cond_11
    if-eq v2, v5, :cond_12

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    goto :goto_8

    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_7
    move-object v0, p2

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCharNode(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)V

    :goto_8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object p2

    invoke-static {p2, v1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->insertNode(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object p2

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->access$100(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_off:I

    iget v1, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertChars(Ljava/lang/Object;II)V

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->setCharNodes(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)V

    goto :goto_b

    :cond_14
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_9
    if-nez p2, :cond_16

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    :goto_a
    move-object p2, p1

    check-cast p2, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {p2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    :goto_b
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto/16 :goto_12

    :cond_16
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v1

    if-eq v1, v8, :cond_1b

    if-ne v1, v7, :cond_17

    goto :goto_d

    :cond_17
    if-eq v1, v5, :cond_1a

    if-nez v0, :cond_19

    if-eq v1, v4, :cond_19

    if-eq v1, v3, :cond_19

    if-ne v1, v2, :cond_18

    goto :goto_c

    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_19
    :goto_c
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    goto :goto_a

    :cond_1a
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_e
    if-eqz p2, :cond_1d

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v1

    if-eq v1, v8, :cond_1c

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v1

    if-ne v1, v7, :cond_1d

    :cond_1c
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->remove(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p2, v1

    goto :goto_e

    :cond_1d
    if-nez p2, :cond_1e

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->append(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    goto :goto_f

    :cond_1e
    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->insert(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    :goto_f
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p2

    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-nez p2, :cond_1f

    invoke-static {v2, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->append(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    goto :goto_11

    :cond_1f
    invoke-static {v2, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->insert(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    :goto_12
    return-object p1
.end method

.method public static node_normalize(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 5

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const-string v1, "Not impl"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    goto :goto_0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    return-void

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->nextWithAttrs()Z

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1, v3, v4, v4}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->setChars(Ljava/lang/Object;II)V

    invoke-static {v1, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->remove(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eqz v2, :cond_3

    :goto_2
    iget-object v2, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v3, v4, v4}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->setChars(Ljava/lang/Object;II)V

    iget-object v2, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->remove(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    goto :goto_2

    :cond_2
    const v2, 0x7fffffff

    iput v2, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    :cond_3
    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->setCharNodes(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)V

    :cond_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAtEndOfLastPush()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale;->invalidateDomCaches(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static node_removeChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 5

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->parent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    if-ne v0, p0, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result p0

    const-string v0, "Not impl"

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown kind"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    sget-boolean v2, Lorg/apache/xmlbeans/impl/store/DomImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->access$100(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    iget v3, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    invoke-virtual {p0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->setChars(Ljava/lang/Object;II)V

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->remove(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->setCharNodes(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_1

    :pswitch_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_4
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    :goto_1
    return-object p1

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    const-string p1, "Child to remove is not a child of given parent"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static node_replaceChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_removeChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    :try_start_0
    invoke-static {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    invoke-static {p0, p2, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    throw p1
.end method

.method public static node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto/16 :goto_3

    :cond_2
    check-cast p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    invoke-virtual {v0, v3, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->setChars(Ljava/lang/Object;II)V

    goto :goto_3

    :cond_4
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_5

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_removeChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->createTextNode()Lorg/apache/xmlbeans/impl/store/DomImpl$TextNode;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->setChars(Ljava/lang/Object;II)V

    invoke-static {p0, v0, v3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    goto :goto_2

    :cond_6
    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/DomImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_8

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ne v1, v4, :cond_7

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_8
    :goto_1
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    :goto_2
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Xobj$AttrXobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj$AttrXobj;->isId()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentXobj;

    if-eqz v2, :cond_9

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentXobj;

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentXobj;->removeIdElement(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attr_getOwnerElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentXobj;->addIdElement(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public static node_setPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 7

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    invoke-static {p1, p0, p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validatePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v6

    if-ne v6, v2, :cond_2

    move v1, v3

    :cond_2
    invoke-static {p1, v5, v4, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validatePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0, v5, v4, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :goto_1
    return-void
.end method

.method public static parent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getParentNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    return-object p0
.end method

.method public static prevSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getPreviousSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->parent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_removeChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    :cond_0
    return-object p0
.end method

.method private static removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 5

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->setCharNodes(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->appendNodes(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->setCharNodes(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast p0, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {p0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    return-void
.end method

.method public static saajCallback_createSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/w3c/dom/Element;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->impl_saajCallback_createSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->impl_saajCallback_createSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static saajCallback_ensureSoapTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Text;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->impl_saajCallback_ensureSoapTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Text;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->impl_saajCallback_ensureSoapTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Text;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static saajCallback_getSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->impl_saajCallback_getSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->impl_saajCallback_getSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static saajCallback_importSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Element;ZLorg/apache/poi/javax/xml/namespace/QName;)Lorg/w3c/dom/Element;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->impl_saajCallback_importSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Element;ZLorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->impl_saajCallback_importSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Element;ZLorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static saajCallback_setSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->impl_saajCallback_setSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->impl_saajCallback_setSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapBody_addBodyElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_addBodyElement(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_addBodyElement(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapBody_addDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Document;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_addDocument(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/w3c/dom/Document;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_addDocument(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/w3c/dom/Document;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapBody_addFault(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_addFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_addFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapBody_addFault(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_addFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_addFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapBody_addFault(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_addFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_addFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapBody_getFault(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_getFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_getFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapBody_hasFault(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_hasFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_hasFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapFault_addDetail(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Detail;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_addDetail(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Lorg/apache/xmlbeans/impl/soap/Detail;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_addDetail(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Lorg/apache/xmlbeans/impl/soap/Detail;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapFault_getDetail(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Detail;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getDetail(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Lorg/apache/xmlbeans/impl/soap/Detail;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getDetail(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Lorg/apache/xmlbeans/impl/soap/Detail;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapFault_getFaultActor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getFaultActor(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getFaultActor(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapFault_getFaultCode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getFaultCode(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getFaultCode(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapFault_getFaultCodeAsName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getFaultCodeAsName(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getFaultCodeAsName(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapFault_getFaultString(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getFaultString(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getFaultString(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapFault_getFaultStringLocale(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Locale;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getFaultStringLocale(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/util/Locale;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getFaultStringLocale(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/util/Locale;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapFault_setFaultActor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_setFaultActor(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_setFaultActor(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapFault_setFaultCode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_setFaultCode(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_setFaultCode(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapFault_setFaultCode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_setFaultCode(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/soap/Name;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_setFaultCode(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/soap/Name;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapFault_setFaultString(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_setFaultString(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_setFaultString(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapFault_setFaultString(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_setFaultString(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_setFaultString(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapHeaderElement_getActor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeaderElement_getActor(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeaderElement_getActor(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapHeaderElement_getMustUnderstand(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeaderElement_getMustUnderstand(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeaderElement_getMustUnderstand(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapHeaderElement_setActor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeaderElement_setActor(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeaderElement_setActor(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapHeaderElement_setMustUnderstand(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Z)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeaderElement_setMustUnderstand(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeaderElement_setMustUnderstand(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapHeader_addHeaderElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_addHeaderElement(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_addHeaderElement(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapHeader_examineAllHeaderElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_examineAllHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_examineAllHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapHeader_examineHeaderElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_examineHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_examineHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapHeader_examineMustUnderstandHeaderElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_examineMustUnderstandHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_examineMustUnderstandHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapHeader_extractAllHeaderElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_extractAllHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_extractAllHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static soapHeader_extractHeaderElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_extractHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_extractHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method private static validateName(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;

    const-string v0, "Name has an invalid character"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateNcName(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static validateNewChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 2

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->isValidChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    if-eq p0, p1, :cond_3

    :goto_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->parent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;

    const-string p1, "New child is an ancestor node of the parent node"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NoModificationAllowedErr;

    const-string p1, "Entity reference trees may not be modified"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NoModificationAllowedErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;

    const-string p1, "New child and parent are the same node"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validatePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateNcName(Ljava/lang/String;)V

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Attempt to give a prefix for no namespace"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const-string v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Invalid prefix - begins with \'xml\'"

    if-eqz v0, :cond_5

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    if-eqz p3, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    const-string v0, "Invalid namespace - uri is not \'http://www.w3.org/2000/xmlns/;"

    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v2, "xmlns"

    if-lez p3, :cond_9

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->beginsWithXml(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Invalid namespace - attr prefix begins with \'xml\'"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Invalid namespace - attr is default namespace already"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->beginsWithXml(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    :cond_c
    :goto_2
    return-object p0

    :cond_d
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateQualifiedName(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateNcName(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    const-string p2, "xmlns"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Default xmlns attribute does not have namespace: http://www.w3.org/2000/xmlns/"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-eqz v1, :cond_a

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateNcName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_8

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateNcName(Ljava/lang/String;)V

    const-string v0, "xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Invalid prefix - begins with \'xml\'"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Invalid qualified name, no local part specified"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Invalid qualified name, more than one colon"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Attempt to give a prefix for no namespace"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Invalid qualified name, no prefix specified"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0
.end method
