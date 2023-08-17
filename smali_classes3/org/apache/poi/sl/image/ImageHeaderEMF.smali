.class public Lorg/apache/poi/sl/image/ImageHeaderEMF;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final EMF_SIGNATURE:Ljava/lang/String; = " EMF"

.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final deviceBounds:Lorg/apache/poi/java/awt/Rectangle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/image/ImageHeaderEMF;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x4

    add-int/2addr p2, v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_0

    sget-object p1, Lorg/apache/poi/sl/image/ImageHeaderEMF;->LOG:Lorg/apache/poi/util/POILogger;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "Invalid EMF picture - invalid type"

    aput-object v0, p2, v4

    invoke-virtual {p1, v2, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance p1, Lorg/apache/poi/java/awt/Rectangle;

    const/16 p2, 0xc8

    invoke-direct {p1, v4, v4, p2, p2}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    iput-object p1, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Lorg/apache/poi/java/awt/Rectangle;

    return-void

    :cond_0
    add-int/2addr p2, v1

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    add-int/2addr p2, v1

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v5

    add-int/2addr p2, v1

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v6

    add-int/2addr p2, v1

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v7

    add-int/2addr p2, v1

    new-instance v8, Lorg/apache/poi/java/awt/Rectangle;

    sub-int/2addr v6, v0

    sub-int/2addr v7, v5

    invoke-direct {v8, v0, v5, v6, v7}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    iput-object v8, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Lorg/apache/poi/java/awt/Rectangle;

    add-int/lit8 p2, p2, 0x10

    new-instance v0, Ljava/lang/String;

    sget-object v5, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string p1, " EMF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/apache/poi/sl/image/ImageHeaderEMF;->LOG:Lorg/apache/poi/util/POILogger;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "Invalid EMF picture - invalid signature"

    aput-object v0, p2, v4

    invoke-virtual {p1, v2, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBounds()Lorg/apache/poi/java/awt/Rectangle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Lorg/apache/poi/java/awt/Rectangle;

    return-object v0
.end method

.method public getSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Lorg/apache/poi/java/awt/Rectangle;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Rectangle;->getSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method
