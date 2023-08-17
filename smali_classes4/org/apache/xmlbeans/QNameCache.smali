.class public final Lorg/apache/xmlbeans/QNameCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_LOAD:F = 0.7f

.field public static synthetic class$org$apache$xmlbeans$QNameCache:Ljava/lang/Class;


# instance fields
.field private hashmask:I

.field private final loadFactor:F

.field private numEntries:I

.field private table:[Lorg/apache/poi/javax/xml/namespace/QName;

.field private threshold:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/QNameCache;->class$org$apache$xmlbeans$QNameCache:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.QNameCache"

    invoke-static {v0}, Lorg/apache/xmlbeans/QNameCache;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/QNameCache;->class$org$apache$xmlbeans$QNameCache:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/QNameCache;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f333333    # 0.7f

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/QNameCache;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/QNameCache;->numEntries:I

    sget-boolean v0, Lorg/apache/xmlbeans/QNameCache;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const/16 v0, 0x10

    :goto_2
    if-ge v0, p1, :cond_4

    shl-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iput p2, p0, Lorg/apache/xmlbeans/QNameCache;->loadFactor:F

    add-int/lit8 p1, v0, -0x1

    iput p1, p0, Lorg/apache/xmlbeans/QNameCache;->hashmask:I

    int-to-float p1, v0

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lorg/apache/xmlbeans/QNameCache;->threshold:I

    new-array p1, v0, [Lorg/apache/poi/javax/xml/namespace/QName;

    iput-object p1, p0, Lorg/apache/xmlbeans/QNameCache;->table:[Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
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

.method private static equals(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    shl-int/lit8 p2, p2, 0xa

    add-int/lit8 p2, p2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    shl-int/lit8 p0, p0, 0x5

    add-int/2addr p2, p0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p2, p0

    return p2
.end method

.method private rehash()V
    .locals 8

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameCache;->table:[Lorg/apache/poi/javax/xml/namespace/QName;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lorg/apache/poi/javax/xml/namespace/QName;

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/apache/xmlbeans/QNameCache;->table:[Lorg/apache/poi/javax/xml/namespace/QName;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/apache/xmlbeans/QNameCache;->hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :goto_1
    and-int/2addr v5, v2

    aget-object v6, v1, v5

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    aput-object v4, v1, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lorg/apache/xmlbeans/QNameCache;->table:[Lorg/apache/poi/javax/xml/namespace/QName;

    iput v2, p0, Lorg/apache/xmlbeans/QNameCache;->hashmask:I

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/xmlbeans/QNameCache;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/xmlbeans/QNameCache;->threshold:I

    return-void
.end method


# virtual methods
.method public getName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlbeans/QNameCache;->getName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1
.end method

.method public getName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/QNameCache;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-string v0, ""

    if-nez p1, :cond_2

    move-object p1, v0

    :cond_2
    if-nez p3, :cond_3

    move-object p3, v0

    :cond_3
    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/QNameCache;->hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_1
    iget v1, p0, Lorg/apache/xmlbeans/QNameCache;->hashmask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/xmlbeans/QNameCache;->table:[Lorg/apache/poi/javax/xml/namespace/QName;

    aget-object v1, v1, v0

    if-nez v1, :cond_5

    iget v1, p0, Lorg/apache/xmlbeans/QNameCache;->numEntries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xmlbeans/QNameCache;->numEntries:I

    iget v2, p0, Lorg/apache/xmlbeans/QNameCache;->threshold:I

    if-lt v1, v2, :cond_4

    invoke-direct {p0}, Lorg/apache/xmlbeans/QNameCache;->rehash()V

    :cond_4
    iget-object v1, p0, Lorg/apache/xmlbeans/QNameCache;->table:[Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v2, p1, p2, p3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    return-object v2

    :cond_5
    invoke-static {v1, p1, p2, p3}, Lorg/apache/xmlbeans/QNameCache;->equals(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
