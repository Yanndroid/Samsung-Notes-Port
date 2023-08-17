.class Lorg/apache/xmlbeans/impl/store/Locale$nthCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "nthCache"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _child:Lorg/apache/xmlbeans/impl/store/Xobj;

.field private _n:I

.field private _name:Lorg/apache/poi/javax/xml/namespace/QName;

.field private _parent:Lorg/apache/xmlbeans/impl/store/Xobj;

.field private _set:Lorg/apache/xmlbeans/QNameSet;

.field private _version:J

.field private final synthetic this$0:Lorg/apache/xmlbeans/impl/store/Locale;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->class$org$apache$xmlbeans$impl$store$Locale:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Locale"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->class$org$apache$xmlbeans$impl$store$Locale:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->this$0:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cacheSame(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)Z
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->namesSame(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_set:Lorg/apache/xmlbeans/QNameSet;

    invoke-direct {p0, p2, p1}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->setsSame(Lorg/apache/xmlbeans/QNameSet;Lorg/apache/xmlbeans/QNameSet;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private nameHit(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 0

    if-nez p2, :cond_0

    invoke-direct {p0, p1, p3}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->namesSame(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private namesSame(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private setsSame(Lorg/apache/xmlbeans/QNameSet;Lorg/apache/xmlbeans/QNameSet;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public distance(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)I
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_version:J

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->this$0:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const p1, 0x7ffffffe

    return p1

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne p1, v0, :cond_5

    invoke-direct {p0, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->cacheSame(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_n:I

    if-le p4, p1, :cond_4

    sub-int/2addr p4, p1

    goto :goto_1

    :cond_4
    sub-int p4, p1, p4

    :goto_1
    return p4

    :cond_5
    :goto_2
    const p1, 0x7fffffff

    return p1
.end method

.method public fetch(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_version:J

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->this$0:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v0, p1, :cond_2

    invoke-direct {p0, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->cacheSame(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->this$0:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_version:J

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_child:Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_n:I

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->nameHit(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_child:Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_n:I

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_1

    :cond_4
    :goto_2
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_n:I

    if-gez p1, :cond_5

    return-object v1

    :cond_5
    if-le p4, p1, :cond_8

    :goto_3
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_n:I

    if-le p4, p1, :cond_b

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_child:Lorg/apache/xmlbeans/impl/store/Xobj;

    :cond_6
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez p1, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->nameHit(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_child:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_n:I

    goto :goto_3

    :cond_8
    if-ge p4, p1, :cond_b

    :goto_4
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_n:I

    if-ge p4, p1, :cond_b

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_child:Lorg/apache/xmlbeans/impl/store/Xobj;

    :cond_9
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez p1, :cond_a

    return-object v1

    :cond_a
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->nameHit(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_child:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_n:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_n:I

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->_child:Lorg/apache/xmlbeans/impl/store/Xobj;

    return-object p1
.end method
