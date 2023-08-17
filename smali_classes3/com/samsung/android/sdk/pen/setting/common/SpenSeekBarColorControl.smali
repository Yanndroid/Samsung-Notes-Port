.class Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SCALE_DEFAULT_LEVEL:I = 0x1e14

.field private static final TAG:Ljava/lang/String; = "SpenSeekBarColorControl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGradientThumbColorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mGradientThumbStrokeDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mHasScaleThumb:Z

.field private mInitComplete:Z

.field private mProgressBg:Landroid/graphics/drawable/GradientDrawable;

.field private mProgressBgInset:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

.field private mProgressInset:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

.field private mProgressStrokeDrawable:Landroid/graphics/drawable/Drawable;

.field private mScaleThumbColorDrawable:Landroid/graphics/drawable/ScaleDrawable;

.field private mScaleThumbStrokeDrawable:Landroid/graphics/drawable/ScaleDrawable;

.field private mSeekBarColor:Landroid/graphics/drawable/GradientDrawable;

.field private mStrokeColor:I

.field private mStrokeSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->reset()V

    return-void
.end method

.method private findProgressGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    sget v0, Lcom/samsung/android/spen/R$id;->gradient_progress:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getColorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mHasScaleThumb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mScaleThumbColorDrawable:Landroid/graphics/drawable/ScaleDrawable;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mGradientThumbColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method private getStrokeDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mHasScaleThumb:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mScaleThumbStrokeDrawable:Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mGradientThumbStrokeDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mInitComplete:Z

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mScaleThumbColorDrawable:Landroid/graphics/drawable/ScaleDrawable;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mScaleThumbStrokeDrawable:Landroid/graphics/drawable/ScaleDrawable;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mGradientThumbColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mGradientThumbStrokeDrawable:Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressStrokeDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressBgInset:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressInset:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressBg:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method private setStrokeVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressStrokeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->getStrokeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressStrokeDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mStrokeSize:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mStrokeColor:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->getStrokeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mStrokeSize:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mStrokeColor:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressStrokeDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->getStrokeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->reset()V

    return-void
.end method

.method public getProgressDrawables()[Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mInitComplete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressBgInset:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressInset:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    aput-object v2, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/ScaleDrawable;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mInitComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mHasScaleThumb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mScaleThumbColorDrawable:Landroid/graphics/drawable/ScaleDrawable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbDrawables()[Landroid/graphics/drawable/ScaleDrawable;
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mInitComplete:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mHasScaleThumb:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mScaleThumbStrokeDrawable:Landroid/graphics/drawable/ScaleDrawable;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    new-array v2, v2, [Landroid/graphics/drawable/ScaleDrawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mScaleThumbColorDrawable:Landroid/graphics/drawable/ScaleDrawable;

    aput-object v4, v2, v3

    if-eqz v0, :cond_1

    aput-object v0, v2, v1

    :cond_1
    return-object v2

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbStrokeDrawable()Landroid/graphics/drawable/ScaleDrawable;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mInitComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mHasScaleThumb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mScaleThumbStrokeDrawable:Landroid/graphics/drawable/ScaleDrawable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initSeekBar(Landroid/widget/SeekBar;Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->initSeekBar(Landroid/widget/SeekBar;Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;F)V

    return-void
.end method

.method public initSeekBar(Landroid/widget/SeekBar;Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;F)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v7, p4

    move/from16 v8, p5

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/spen/R$color;->setting_brush_seek_bar_stroke_color:I

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mStrokeColor:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$dimen;->seekbar_thumb_stroke_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mStrokeSize:I

    invoke-virtual/range {p1 .. p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    sget v2, Lcom/samsung/android/spen/R$id;->progress_thumb:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$id;->progress_thumb_border:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v2, :cond_a

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    instance-of v3, v2, Landroid/graphics/drawable/ScaleDrawable;

    const/16 v4, 0x1e14

    const/16 v5, 0x18

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_1

    iput-boolean v9, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mHasScaleThumb:Z

    check-cast v2, Landroid/graphics/drawable/ScaleDrawable;

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mScaleThumbColorDrawable:Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ScaleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v5, :cond_2

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mScaleThumbColorDrawable:Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    goto :goto_0

    :cond_1
    iput-boolean v10, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mHasScaleThumb:Z

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mGradientThumbColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_0
    if-nez p3, :cond_4

    iget-boolean v2, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mHasScaleThumb:Z

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    check-cast v1, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mHasScaleThumb:Z

    if-eqz v2, :cond_5

    check-cast v1, Landroid/graphics/drawable/ScaleDrawable;

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mScaleThumbStrokeDrawable:Landroid/graphics/drawable/ScaleDrawable;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v5, :cond_6

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    goto :goto_2

    :cond_5
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mGradientThumbStrokeDrawable:Landroid/graphics/drawable/GradientDrawable;

    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v12, 0x1020000

    if-eqz v7, :cond_7

    new-instance v13, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v13

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v13, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressBgInset:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    invoke-direct {v0, v7}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->findProgressGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressBg:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_3

    :cond_7
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressBgInset:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    :goto_3
    invoke-virtual {v11}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressBgInset:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    invoke-virtual {v11, v12, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$drawable;->slider_progress_track:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v2

    move-object v13, v1

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressInset:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    const v2, 0x102000d

    invoke-virtual {v11, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ClipDrawable;

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressInset:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lcom/samsung/android/spen/R$id;->progress_track_color:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mSeekBarColor:Landroid/graphics/drawable/GradientDrawable;

    sget v2, Lcom/samsung/android/spen/R$id;->progress_track_border:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_8

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mSeekBarColor:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_8
    if-nez p3, :cond_9

    invoke-virtual {v1, v10, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_4

    :cond_9
    iput-object v1, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressStrokeDrawable:Landroid/graphics/drawable/Drawable;

    :goto_4
    iput-boolean v9, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mInitComplete:Z

    return-void

    :cond_a
    :goto_5
    const-string v1, "SpenSeekBarColorControl"

    const-string v2, "initSeekBar() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isSupportProgressBg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mInitComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressBg:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setColor(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->setThumbColor(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->setProgressColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isAdaptiveColor(Landroid/content/Context;I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->setStrokeVisible(Z)V

    return-void
.end method

.method public setProgressAlpha(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mInitComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mSeekBarColor:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setProgressBgAlpha(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mInitComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressBgInset:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mInitComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mSeekBarColor:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method public varargs setProgressColor([I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mInitComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mProgressBg:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :cond_0
    return-void
.end method

.method public setThumbAlpha(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mInitComplete:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->getColorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setThumbColor(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->mInitComplete:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->getColorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
