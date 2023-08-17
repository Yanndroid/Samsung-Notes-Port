.class public Lorg/apache/poi/sl/image/ImageHeaderWMF;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final APMHEADER_KEY:I = -0x65393229

.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final bottom:I

.field private checksum:I

.field private final handle:I

.field private final inch:I

.field private final left:I

.field private final reserved:I

.field private final right:I

.field private final top:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/image/ImageHeaderWMF;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Rectangle;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->handle:I

    iget v1, p1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iput v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    iget v2, p1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iput v2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    iget v3, p1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    iget p1, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/2addr v2, p1

    iput v2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    const/16 p1, 0x48

    iput p1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->reserved:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    add-int/lit8 p2, p2, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const v4, -0x65393229

    if-eq v0, v4, :cond_0

    sget-object p1, Lorg/apache/poi/sl/image/ImageHeaderWMF;->LOG:Lorg/apache/poi/util/POILogger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "WMF file doesn\'t contain a placeable header - ignore parsing"

    aput-object v0, p2, v3

    invoke-virtual {p1, v2, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    iput v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->handle:I

    iput v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    iput v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    const/16 p1, 0xc8

    iput p1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    iput p1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    const/16 p1, 0x48

    iput p1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    iput v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->reserved:I

    return-void

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->handle:I

    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->reserved:I

    add-int/lit8 p2, p2, 0x4

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p1

    iput p1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->checksum:I

    invoke-virtual {p0}, Lorg/apache/poi/sl/image/ImageHeaderWMF;->getChecksum()I

    move-result p2

    if-eq p1, p2, :cond_1

    sget-object p1, Lorg/apache/poi/sl/image/ImageHeaderWMF;->LOG:Lorg/apache/poi/util/POILogger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "WMF checksum does not match the header data"

    aput-object v0, p2, v3

    invoke-virtual {p1, v2, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBounds()Lorg/apache/poi/java/awt/Rectangle;
    .locals 5

    new-instance v0, Lorg/apache/poi/java/awt/Rectangle;

    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    iget v2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    iget v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    sub-int/2addr v3, v1

    iget v4, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    sub-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getChecksum()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    const v1, -0xa8ef

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public getLength()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public getSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 6

    iget v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    div-double/2addr v2, v0

    new-instance v0, Lorg/apache/poi/java/awt/Dimension;

    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    iget v4, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    sub-int/2addr v1, v4

    int-to-double v4, v1

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    iget v4, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    iget v5, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4

    const/16 v0, 0x16

    new-array v0, v0, [B

    const/4 v1, 0x0

    const v2, -0x65393229

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    iget v2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    const/4 v3, 0x6

    invoke-static {v0, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    iget v2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    const/16 v3, 0x8

    invoke-static {v0, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    iget v2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    const/16 v3, 0xa

    invoke-static {v0, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    iget v2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    const/16 v3, 0xc

    invoke-static {v0, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    iget v2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    const/16 v3, 0xe

    invoke-static {v0, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/16 v2, 0x10

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {p0}, Lorg/apache/poi/sl/image/ImageHeaderWMF;->getChecksum()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->checksum:I

    const/16 v2, 0x14

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
