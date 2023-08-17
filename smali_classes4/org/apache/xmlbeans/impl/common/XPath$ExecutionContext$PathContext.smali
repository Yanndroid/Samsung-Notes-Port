.class final Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PathContext"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

.field private _prev:Ljava/util/List;

.field private final synthetic this$0:Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/common/XPath;->class$org$apache$xmlbeans$impl$common$XPath:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.common.XPath"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/XPath;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/common/XPath;->class$org$apache$xmlbeans$impl$common$XPath:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->this$0:Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_prev:Ljava/util/List;

    return-void
.end method

.method private backtrack()V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iget-boolean v2, v1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_hasBacktrack:Z

    if-eqz v2, :cond_2

    iget-object v0, v1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_backtrack:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    return-void

    :cond_2
    if-nez v0, :cond_4

    iget-boolean v0, v1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_deep:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    iget-object v0, v1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_prev:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    :goto_2
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iget-boolean v1, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_deep:Z

    if-nez v1, :cond_6

    const/4 v1, 0x0

    :goto_3
    iget-boolean v2, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_deep:Z

    if-nez v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->top(I)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$Step;->match(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_prev:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_prev:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    move v1, v2

    goto :goto_3

    :cond_6
    return-void
.end method

.method private top(I)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->this$0:Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->access$100(Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->this$0:Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->access$100(Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/javax/xml/namespace/QName;

    return-object p1
.end method


# virtual methods
.method public attr(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_attr:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/common/XPath$Step;->match(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public element(Lorg/apache/poi/javax/xml/namespace/QName;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_prev:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v2, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget-boolean v2, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_attr:Z

    if-nez v2, :cond_5

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/common/XPath$Step;->match(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    if-eqz v0, :cond_3

    iget p1, p1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_flags:I

    return p1

    :cond_3
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->backtrack()V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    const/4 v0, 0x1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget p1, p1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_flags:I

    or-int/2addr v0, p1

    :goto_1
    return v0

    :cond_5
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->backtrack()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/common/XPath$Step;->match(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_next:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iget-boolean v0, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_deep:Z

    if-eqz v0, :cond_5

    :goto_2
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iget p1, p1, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_flags:I

    return p1
.end method

.method public end()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_prev:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    return-void
.end method

.method public init(Lorg/apache/xmlbeans/impl/common/XPath$Step;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_prev:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public start()I
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_prev:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    if-eqz v1, :cond_4

    iget v0, v0, Lorg/apache/xmlbeans/impl/common/XPath$Step;->_flags:I

    return v0

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->_curr:Lorg/apache/xmlbeans/impl/common/XPath$Step;

    const/4 v0, 0x1

    return v0
.end method
