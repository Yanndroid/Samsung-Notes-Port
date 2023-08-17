.class public Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenNoteCapturePage"


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

.field private mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

.field private mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

.field private mNativeCapture:J

.field private mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mBitmapWidth:I

    iput v1, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mBitmapHeight:I

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    if-nez p1, :cond_0

    const/16 p1, 0x8

    const-string v0, " : context must not be null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iget-wide v1, v1, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->getNativeHandle()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->Native_init(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mNativeCapture:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->setResources(Landroid/content/res/Resources;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/text/SpenFontManager;->setSystemFontPath(Landroid/content/Context;)Z

    invoke-static {}, Lcom/samsung/android/sdk/pen/text/SpenFontManager;->setLocaleList()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenNoteCapturePage : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenNoteCapturePage"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native Native_capturePage(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native Native_capturePageFile(JLjava/lang/String;)Z
.end method

.method private static native Native_captureRect(JLandroid/graphics/Bitmap;Landroid/graphics/RectF;)Z
.end method

.method private static native Native_captureRectFile(JLandroid/graphics/RectF;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init(JJ)J
.end method

.method private static native Native_setBackgroundColorEnabled(JZ)V
.end method

.method private static native Native_setColorTheme(JI)V
.end method

.method private static native Native_setPageContents(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)Z
.end method

.method private static native Native_setWNote(JJ)Z
.end method

.method private createBitmap(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mBitmapWidth:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mBitmapHeight:I

    iget v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mBitmapWidth:I

    const/4 v1, 0x6

    if-nez v0, :cond_1

    const-string p1, "The width of pageDoc is 0"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "The height of pageDoc is 0"

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public capturePage(F)Landroid/graphics/Bitmap;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v0, v2, :cond_2

    const-string p1, "SpenNoteCapturePage"

    const-string/jumbo v0, "try to capturePage on single mode uses captureRect"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mBitmapWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget v2, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mBitmapHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-wide v2, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mNativeCapture:J

    invoke-static {v2, v3, p1}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->Native_capturePage(JLandroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_3
    move-object v1, p1

    :cond_4
    :goto_0
    return-object v1
.end method

.method public capturePage(Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->Native_capturePageFile(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureRect : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenNoteCapturePage"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mNativeCapture:J

    invoke-static {v1, v2, v0, p1}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->Native_captureRect(JLandroid/graphics/Bitmap;Landroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public captureRect(Landroid/graphics/RectF;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->Native_captureRectFile(JLandroid/graphics/RectF;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->Native_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mNativeCapture:J

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenNoteCapturePage close: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenNoteCapturePage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundColorEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->Native_setBackgroundColorEnabled(JZ)V

    return-void
.end method

.method public setColorTheme(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->Native_setColorTheme(JI)V

    return-void
.end method

.method public setContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "SpenNoteCapturePage"

    const-string p2, "WPage is closed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->createBitmap(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mNativeCapture:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->Native_setPageContents(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)Z

    return-void
.end method

.method public setWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHandle()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/composer/capture/SpenNoteCapturePage;->Native_setWNote(JJ)Z

    return-void
.end method
