.class final Lorg/apache/xmlbeans/impl/store/Path$XbeanPath;
.super Lorg/apache/xmlbeans/impl/store/Path;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XbeanPath"
.end annotation


# instance fields
.field private final _compiledPath:Lorg/apache/xmlbeans/impl/common/XPath;

.field private final _currentVar:Ljava/lang/String;

.field public namespaces:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/XPath;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Path;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPath;->_currentVar:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPath;->_compiledPath:Lorg/apache/xmlbeans/impl/common/XPath;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPath;

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/common/XPath;->compileXPath(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/common/XPath;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Path$XbeanPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/XPath;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public execute(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Path$PathEngine;
    .locals 4

    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    const-string v0, "PATH_DELEGATE_INTERFACE"

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/store/Path;->access$000()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPath;->_compiledPath:Lorg/apache/xmlbeans/impl/common/XPath;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/common/XPath;->sawDeepDot()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPath;->_compiledPath:Lorg/apache/xmlbeans/impl/common/XPath;

    invoke-direct {p2, v0, p1}, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;-><init>(Lorg/apache/xmlbeans/impl/common/XPath;Lorg/apache/xmlbeans/impl/store/Cur;)V

    return-object p2

    :cond_2
    :goto_1
    const/16 v1, 0x16

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Path;->_pathKey:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPath;->_currentVar:Ljava/lang/String;

    invoke-static {v2, v1, v3, v0}, Lorg/apache/xmlbeans/impl/store/Path;->getCompiledPath(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Path;->execute(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Path$PathEngine;

    move-result-object p1

    return-object p1
.end method
