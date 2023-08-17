.class public Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPdfImport"


# instance fields
.field private mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

.field private mNativeHandle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iget-wide v1, p1, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->getNativeHandle()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->Native_init(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mNativeHandle:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenPdfImport : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenPdfImport"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native Native_attachFile(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_getPageCount(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native Native_getPageImage(JLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)Z
.end method

.method private static native Native_getPageMode(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native Native_getPageSize(JLjava/lang/String;Ljava/lang/String;IF)F
.end method

.method private static native Native_hasOwnerPermission(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native Native_hasPageExtractionPermission(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native Native_hasPassword(JLjava/lang/String;)Z
.end method

.method private static native Native_init(JJ)J
.end method

.method private static native Native_removeAppData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native Native_setDocument(JJ)Z
.end method

.method private static native Native_verifyPassword(JLjava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public attachFile(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->Native_attachFile(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->values()[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p2

    aget-object p1, p2, p1

    return-object p1
.end method

.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->Native_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mNativeHandle:J

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenPdfImport close: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPdfImport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getPageBitmap(Ljava/lang/String;Ljava/lang/String;IF)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v7, p4

    iget-wide v1, v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v8, 0x0

    if-eqz v3, :cond_3

    const/4 v9, 0x0

    cmpl-float v3, v7, v9

    if-eqz v3, :cond_3

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->Native_getPageSize(JLjava/lang/String;Ljava/lang/String;IF)F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPageBitmap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpenPdfImport"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v2, v1, v9

    if-nez v2, :cond_1

    return-object v8

    :cond_1
    float-to-int v2, v7

    float-to-int v1, v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-wide v10, v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mNativeHandle:J

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object v15, v1

    invoke-static/range {v10 .. v15}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->Native_getPageImage(JLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    :goto_0
    return-object v8
.end method

.method public getPageCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->Native_getPageCount(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getPageMode(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;->PAGE_MODE_NONE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->Native_getPageMode(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;->values()[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    move-result-object p2

    aget-object p1, p2, p1

    return-object p1
.end method

.method public hasOwnerPermission(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->Native_hasOwnerPermission(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->values()[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p2

    aget-object p1, p2, p1

    return-object p1
.end method

.method public hasPageExtractionPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->Native_hasPageExtractionPermission(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasPassword(Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->Native_hasPassword(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->Native_removeAppData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHandle()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->Native_setDocument(JJ)Z

    return-void
.end method

.method public verifyPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->Native_verifyPassword(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->values()[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p2

    aget-object p1, p2, p1

    return-object p1
.end method
