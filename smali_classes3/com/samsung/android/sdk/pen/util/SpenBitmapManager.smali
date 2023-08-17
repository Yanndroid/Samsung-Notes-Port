.class public Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;
    }
.end annotation


# static fields
.field private static mIs64:Z = false

.field private static mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;",
            ">;"
        }
    .end annotation
.end field

.field private static mProtect:I

.field private static mRemoveReservedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mRemoveReservedList:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _createNativeBitmap(Landroid/graphics/Bitmap;)I
.end method

.method private static native _createNativeBitmap_64(Landroid/graphics/Bitmap;)J
.end method

.method private static native _deleteNativeAncenstor(I)V
.end method

.method private static native _deleteNativeAncenstor(J)V
.end method

.method private static native _getNativeBitmapRef(I)I
.end method

.method private static native _getNativeBitmapRef(J)I
.end method

.method private static bindBitmap(Landroid/graphics/Bitmap;)J
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-object v2, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v0, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    return-wide v0

    :cond_1
    sget v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    if-lez v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mRemoveReservedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-object v2, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-wide v0, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    return-wide v0

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;-><init>()V

    iput-object p0, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_createNativeBitmap(Landroid/graphics/Bitmap;)I

    move-result p0

    int-to-long v1, p0

    iput-wide v1, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_4

    iget-object p0, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    return-wide v3

    :cond_4
    sget-object p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->printLog()V

    iget-wide v0, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    return-wide v0
.end method

.method private static bindMutableClone(I)J
    .locals 8

    sget-object v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-wide v4, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    int-to-long v6, p0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    new-instance p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;-><init>()V

    iget-object v0, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_createNativeBitmap(Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    return-wide v2

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->printLog()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    return-wide v0

    :cond_2
    return-wide v2
.end method

.method private static bitmapCount()I
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method private static createBitmap(Landroid/graphics/Bitmap;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "BitmapManager"

    const-string v2, "createBitmap(bitmap==null) failed"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;-><init>()V

    iput-object p0, v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_createNativeBitmap(Landroid/graphics/Bitmap;)I

    move-result p0

    int-to-long v3, p0

    iput-wide v3, v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    cmp-long p0, v3, v0

    if-nez p0, :cond_1

    iget-object p0, v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p0, 0x0

    iput-object p0, v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    return-wide v0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->printLog()V

    iget-wide v0, v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    return-wide v0
.end method

.method private static createBitmap(Ljava/lang/String;II)J
    .locals 3

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "spd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v1, p1

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    const-wide/16 v0, 0x0

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createBitmap("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") failed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_3
    new-instance p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_createNativeBitmap(Landroid/graphics/Bitmap;)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    return-wide v0

    :cond_4
    sget-object p1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->printLog()V

    iget-wide p0, p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    return-wide p0
.end method

.method private static createBitmap([IIIIZ)J
    .locals 2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-wide/16 p3, 0x0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createBitmap(width="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") failed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p3

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;-><init>()V

    iput-object p0, p1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_createNativeBitmap(Landroid/graphics/Bitmap;)I

    move-result p0

    int-to-long v0, p0

    iput-wide v0, p1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    cmp-long p0, v0, p3

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    return-wide p3

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->printLog()V

    iget-wide p0, p1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    return-wide p0
.end method

.method private static decodeBitmapFile(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->bindBitmap(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static findBitmap(I)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-wide v2, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    int-to-long v4, p0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object p0, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isBuildTypeEngMode()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static printLog()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u2193\u2193\u2193\u2193 Bitmap Manager (P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") \u2193\u2193\u2193\u2193"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BitmapManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reserved Count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mRemoveReservedList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static protectRemoval()V
    .locals 1

    sget v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    return-void
.end method

.method private static releaseBitmap(I)I
    .locals 8

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    sget-object v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-wide v4, v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    int-to-long v6, p0

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    sget-boolean p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    if-eqz p0, :cond_2

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_getNativeBitmapRef(J)I

    move-result p0

    goto :goto_1

    :cond_2
    long-to-int p0, v4

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_getNativeBitmapRef(I)I

    move-result p0

    :goto_1
    if-ne p0, v2, :cond_5

    sget p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    if-lez p0, :cond_3

    sget-object p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mRemoveReservedList:Ljava/util/LinkedList;

    invoke-virtual {p0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object p0, v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    sget-boolean p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    iget-wide v2, v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    if-eqz p0, :cond_4

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_deleteNativeAncenstor(J)V

    goto :goto_2

    :cond_4
    long-to-int p0, v2

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_deleteNativeAncenstor(I)V

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->printLog()V

    return v1

    :cond_5
    return p0

    :cond_6
    const/4 p0, -0x1

    return p0
.end method

.method private static releaseBitmap(Landroid/graphics/Bitmap;)I
    .locals 6

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    sget-object v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-object v4, v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    iget-wide v4, v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    if-eqz p0, :cond_2

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_getNativeBitmapRef(J)I

    move-result p0

    goto :goto_1

    :cond_2
    long-to-int p0, v4

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_getNativeBitmapRef(I)I

    move-result p0

    :goto_1
    if-ne p0, v2, :cond_5

    sget p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    if-lez p0, :cond_3

    sget-object p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mRemoveReservedList:Ljava/util/LinkedList;

    invoke-virtual {p0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object p0, v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    sget-boolean p0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    iget-wide v2, v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    if-eqz p0, :cond_4

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_deleteNativeAncenstor(J)V

    goto :goto_2

    :cond_4
    long-to-int p0, v2

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_deleteNativeAncenstor(I)V

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->printLog()V

    return v1

    :cond_5
    return p0

    :cond_6
    const/4 p0, -0x1

    return p0
.end method

.method private static saveBitmap(ILjava/lang/String;)Z
    .locals 10

    const-string v0, ") failed"

    const-string v1, "saveBitmap("

    const-string v2, "BitmapManager"

    sget-object v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-wide v6, v4, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    int-to-long v8, p0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, v4, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v6

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v3, v6

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v3, v6

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_2
    :goto_3
    return v5

    :goto_4
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    throw p0

    :cond_4
    return v5
.end method

.method private static unprotectRemoval()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    sget v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    sub-int/2addr v0, v1

    sput v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mRemoveReservedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-object v2, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    sget-boolean v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    if-eqz v2, :cond_1

    iget-wide v1, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_deleteNativeAncenstor(J)V

    goto :goto_1

    :cond_1
    iget-wide v1, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    long-to-int v1, v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_deleteNativeAncenstor(I)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mRemoveReservedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_3
    return-void
.end method
