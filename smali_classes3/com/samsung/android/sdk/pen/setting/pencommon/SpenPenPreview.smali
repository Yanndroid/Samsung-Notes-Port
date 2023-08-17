.class public Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPenPreview1"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mIsFixedWidth:Z

.field private mManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

.field private mPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

.field private mRect:Landroid/graphics/RectF;

.field private mStrokeSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mStrokeSize:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->construct()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mStrokeSize:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->construct()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mStrokeSize:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->construct()V

    return-void
.end method

.method private construct()V
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mStrokeSize:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mIsFixedWidth:Z

    return-void
.end method

.method private drawPen()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->getMax()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f733333    # 0.95f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1

    return-void

    :cond_1
    cmpl-float v3, v0, v1

    if-lez v3, :cond_2

    div-float v3, v1, v0

    goto :goto_0

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawPen() stroke scale : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mStrokeSize:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenPreview1"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mStrokeSize:F

    mul-float/2addr v0, v3

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_3

    const-string v0, " drawPen() strokeSize <= 0"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->getOverlappingBgResource()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v2, v1, v3, v5, v4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilImage;->getDrawable(Landroid/content/Context;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v1, v4, v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mIsFixedWidth:Z

    invoke-virtual {v1, p0, v0, v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->readyToDraw(Landroid/view/View;FZ)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mIsFixedWidth:Z

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->startDraw(FLandroid/graphics/Bitmap;Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getDrawStartEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->updateDraw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_5
    const/4 v0, 0x1

    move v2, v0

    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getDrawNextEvent()Landroid/view/MotionEvent;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->updateDraw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getDrawEndEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->updateDraw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->endDraw()V

    :cond_9
    :goto_2
    return-void
.end method

.method private getPreview(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;
    .locals 2

    const-string v0, "FountainPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;-><init>(Landroid/content/Context;F)V

    return-object p1

    :cond_0
    const-string v0, ".BrushPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenBrushPenPreview;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenBrushPenPreview;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_1
    const-string v0, "Marker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenMarkerPreview;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenMarkerPreview;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_2
    const-string v0, "WaterColorBrush"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenWaterColorBrushPreview;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenWaterColorBrushPreview;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_3
    const-string v0, "ObliquePen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenObliquePreview;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenObliquePreview;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_4
    const-string v0, "AirBrushPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;-><init>(Landroid/content/Context;F)V

    return-object p1

    :cond_5
    const-string v0, "Beautify2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenBeautify2Preview;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenBeautify2Preview;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_6
    const-string v0, "ColoredPencil"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColoredPencilPreview;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColoredPencilPreview;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_7
    const-string v0, "InkPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_8
    new-instance p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;-><init>(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mRect:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    return-void
.end method

.method public isFixedWidth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mIsFixedWidth:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->drawPen()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mBitmap:Landroid/graphics/Bitmap;

    :cond_2
    :goto_0
    return-void
.end method

.method public setFixedWidth(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFixedWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenPreview1"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mIsFixedWidth:Z

    return-void
.end method

.method public setPreviewManager(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->close()V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->getPenName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->getPreview(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mPreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->setSizeLevel(I)V

    :cond_1
    return-void
.end method

.method public setStrokeSize(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->mStrokeSize:F

    return-void
.end method
