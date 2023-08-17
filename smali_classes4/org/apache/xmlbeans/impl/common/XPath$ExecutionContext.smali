.class public Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/common/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExecutionContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field public static final ATTRS:I = 0x4

.field public static final DESCEND:I = 0x2

.field public static final HIT:I = 0x1


# instance fields
.field private _paths:[Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;

.field private _stack:Ljava/util/ArrayList;

.field private _xpath:Lorg/apache/xmlbeans/impl/common/XPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/common/XPath;->class$org$apache$xmlbeans$impl$common$XPath:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.common.XPath"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/XPath;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/common/XPath;->class$org$apache$xmlbeans$impl$common$XPath:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->_stack:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->_stack:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final attr(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->_paths:[Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->attr(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final element(Lorg/apache/poi/javax/xml/namespace/QName;)I
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->_stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->_paths:[Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->element(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public final end()V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->_stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->_paths:[Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->end()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final init(Lorg/apache/xmlbeans/impl/common/XPath;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->_xpath:Lorg/apache/xmlbeans/impl/common/XPath;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->_xpath:Lorg/apache/xmlbeans/impl/common/XPath;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/XPath;->access$000(Lorg/apache/xmlbeans/impl/common/XPath;)Lorg/apache/xmlbeans/impl/common/XPath$Selector;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/common/XPath$Selector;->_paths:[Lorg/apache/xmlbeans/impl/common/XPath$Step;

    array-length v0, v0

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->_paths:[Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->_paths:[Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    new-instance v3, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;

    invoke-direct {v3, p0}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;-><init>(Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->_stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->_paths:[Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;

    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v0, v0, v1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/XPath;->access$000(Lorg/apache/xmlbeans/impl/common/XPath;)Lorg/apache/xmlbeans/impl/common/XPath$Selector;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/common/XPath$Selector;->_paths:[Lorg/apache/xmlbeans/impl/common/XPath$Step;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->init(Lorg/apache/xmlbeans/impl/common/XPath$Step;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final start()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->_paths:[Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext$PathContext;->start()I

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
