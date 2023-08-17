.class Lorg/apache/poi/sun/misc/SoftCache$ValueCell;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/misc/SoftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueCell"
.end annotation


# static fields
.field private static INVALID_KEY:Ljava/lang/Object;

.field private static dropped:I


# instance fields
.field private key:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->INVALID_KEY:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/sun/misc/SoftCache$ValueCell;)Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->isValid()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/sun/misc/SoftCache$ValueCell;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$210()I
    .locals 2

    sget v0, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->dropped:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->dropped:I

    return v0
.end method

.method public static synthetic access$300(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->strip(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lorg/apache/poi/sun/misc/SoftCache$ValueCell;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lorg/apache/poi/sun/misc/SoftCache$ValueCell;

    move-result-object p0

    return-object p0
.end method

.method private static create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lorg/apache/poi/sun/misc/SoftCache$ValueCell;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method

.method private drop()V
    .locals 1

    invoke-super {p0}, Ljava/lang/ref/SoftReference;->clear()V

    sget-object v0, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->INVALID_KEY:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    sget v0, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->dropped:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->dropped:I

    return-void
.end method

.method private isValid()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->INVALID_KEY:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static strip(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->drop()V

    :cond_1
    return-object v0
.end method
