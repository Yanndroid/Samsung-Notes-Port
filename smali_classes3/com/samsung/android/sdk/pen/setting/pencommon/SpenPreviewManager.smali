.class public Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SCREEN_UNIT:F = 360.0f


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mColor:I

.field private mDensity:I

.field private mEraserEnabled:Z

.field private mIsSupportParticleDensity:Z

.field private mMaxPx:F

.field private mOverlappingResourceId:I

.field private mPenName:Ljava/lang/String;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SpenPreviewManager"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->TAG:Ljava/lang/String;

    const/16 v1, 0xff

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mColor:I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mPenName:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->getPreviewObject(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    const/4 p3, 0x0

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mOverlappingResourceId:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget v1, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mScreenWidth:I

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mScreenHeight:I

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMaxSettingValue()F

    move-result p3

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    mul-float/2addr p3, p1

    const/high16 p1, 0x43200000    # 160.0f

    div-float/2addr p3, p1

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mMaxPx:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    const/4 p3, 0x5

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getPenAttribute(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mIsSupportParticleDensity:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pen="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isSupportParticleDensity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mIsSupportParticleDensity:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public endDraw()V
    .locals 2

    const-string v0, "SpenPreviewManager"

    const-string v1, "endDraw()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mEraserEnabled:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setEraserEnabled(Z)V

    :cond_1
    return-void
.end method

.method public getMax()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mMaxPx:F

    return v0
.end method

.method public getOverlappingBgResource()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mOverlappingResourceId:I

    return v0
.end method

.method public getPenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mPenName:Ljava/lang/String;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mColor:I

    return-void
.end method

.method public setDensity(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mDensity:I

    return-void
.end method

.method public setOverlappingBgResource(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mOverlappingResourceId:I

    return-void
.end method

.method public startDraw(FLandroid/graphics/Bitmap;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDraw() cavasWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " canvasHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPreviewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setSize(F)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mScreenWidth:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mScreenHeight:I

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setScreenResolution(II)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mColor:I

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setColor(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setFixedWidthEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setFixedWidth(F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->isEraserEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mEraserEnabled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setEraserEnabled(Z)V

    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mIsSupportParticleDensity:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mDensity:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setParticleDensity(I)V

    :cond_2
    return-void
.end method

.method public updateDraw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
    .locals 2

    const-string v0, "SpenPreviewManager"

    const-string/jumbo v1, "updateDraw()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public updatePenBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->mSpenPreviewPen:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
