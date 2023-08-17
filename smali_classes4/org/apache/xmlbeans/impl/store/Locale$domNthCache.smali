.class Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "domNthCache"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field public static final BLITZ_BOUNDARY:I = 0x28


# instance fields
.field private _child:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

.field private _len:I

.field private _n:I

.field private _parent:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

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

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->this$0:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;)I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_len:I

    return p0
.end method

.method public static synthetic access$302(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_version:J

    return-wide p1
.end method

.method public static synthetic access$400(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_parent:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    return-object p0
.end method


# virtual methods
.method public distance(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)I
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_version:J

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->this$0:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const p1, 0x7ffffffe

    return p1

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_parent:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eq p1, v0, :cond_3

    const p1, 0x7fffffff

    return p1

    :cond_3
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_n:I

    if-le p2, p1, :cond_4

    sub-int/2addr p2, p1

    goto :goto_1

    :cond_4
    sub-int p2, p1, p2

    :goto_1
    return p2
.end method

.method public fetch(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_version:J

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->this$0:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_parent:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eq v0, p1, :cond_2

    goto :goto_3

    :cond_2
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_n:I

    if-gez p1, :cond_3

    return-object v1

    :cond_3
    if-le p2, p1, :cond_5

    :goto_1
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_n:I

    if-le p2, p1, :cond_7

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_child:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_child:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_n:I

    goto :goto_1

    :cond_5
    if-ge p2, p1, :cond_7

    :goto_2
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_n:I

    if-ge p2, p1, :cond_7

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_child:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->prevSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    if-nez p1, :cond_6

    return-object v1

    :cond_6
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_child:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_n:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_n:I

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_child:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    return-object p1

    :cond_8
    :goto_3
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_parent:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->this$0:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_version:J

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_child:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_n:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_len:I

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_parent:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->firstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_a

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_n:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_child:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-nez v1, :cond_9

    if-ne p2, v0, :cond_9

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_child:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    goto :goto_5

    :cond_9
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    goto :goto_4

    :cond_a
    :goto_5
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_child:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    return-object p1
.end method

.method public length(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I
    .locals 4

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_version:J

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->this$0:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_parent:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eq v0, p1, :cond_1

    :cond_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_parent:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->this$0:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_version:J

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_child:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_n:I

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_len:I

    :cond_1
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_len:I

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_child:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz p1, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_n:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_len:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_parent:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->firstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_len:I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_child:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_n:I

    :goto_0
    if-eqz p1, :cond_3

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_len:I

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->_len:I

    return p1
.end method
