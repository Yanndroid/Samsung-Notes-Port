.class abstract Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/DomImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ElementsNodeList"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _elements:Ljava/util/ArrayList;

.field private _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field private _root:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

.field private _version:J


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

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_root:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_version:J

    return-void
.end method

.method private addElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->firstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->match(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->addElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    :cond_1
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private ensureElements()V
    .locals 4

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_version:J

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_version:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_elements:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_root:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->addElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v1

    :cond_1
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_root:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->addElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method


# virtual methods
.method public getLength()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->ensureElements()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->ensureElements()V

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->_elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public abstract match(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
.end method
