.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final SHOW_TEXT_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "SpenPenAttrMiniView"


# instance fields
.field private mApplyDynamicColorSize:Z

.field private mColor:I

.field private mColorBackground:Landroid/view/View;

.field private mColorView:Landroid/widget/ImageView;

.field private mCurrentResId:I

.field private mDefaultMargin:I

.field private mDiffColorRadius:I

.field private mFullResId:I

.field private mLabelFormat:Ljava/lang/String;

.field private mLabelText:Landroid/widget/TextView;

.field private mNormalResId:I

.field private mSelectedView:Landroid/view/View;

.field private mSizeLevel:I

.field private mUserDefineChildLayoutId:I

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mSizeLevel:I

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->updateColorSize(I)V

    return-void
.end method

.method private adjustBackground()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mApplyDynamicColorSize:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mNormalResId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mSizeLevel:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mFullResId:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mNormalResId:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setInnerColorBackground(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private getInflateChildId()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mUserDefineChildLayoutId:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/spen/R$layout;->setting_pen_attr_mini_view:I

    :goto_0
    return v0
.end method

.method private initView(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_0
    sget p1, Lcom/samsung/android/spen/R$id;->text_label:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mLabelText:Landroid/widget/TextView;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;-><init>()V

    sget p2, Lcom/samsung/android/spen/R$id;->color:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mColorView:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const/high16 p2, -0x1000000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setDrawableInfo(IIII)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->makeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mDefaultMargin:I

    :cond_1
    const-string p1, "%d"

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mLabelFormat:Ljava/lang/String;

    sget p1, Lcom/samsung/android/spen/R$id;->color_selected:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mSelectedView:Landroid/view/View;

    sget p1, Lcom/samsung/android/spen/R$id;->color_background:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mColorBackground:Landroid/view/View;

    return-void
.end method

.method private setAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->mini_pen_attr_default_color_diff_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/spen/R$styleable;->SpenPenAttrMiniView:[I

    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenPenAttrMiniView_applyDynamicColorSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mApplyDynamicColorSize:Z

    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenPenAttrMiniView_diffColorRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mDiffColorRadius:I

    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenPenAttrMiniView_childLayout:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mUserDefineChildLayoutId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mApplyDynamicColorSize:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mDiffColorRadius:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mUserDefineChildLayoutId:I

    :goto_0
    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mSizeLevel:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mColor:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mNormalResId:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mFullResId:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mCurrentResId:I

    return-void
.end method

.method private setInnerColorBackground(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mColorBackground:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mCurrentResId:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mCurrentResId:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateColorSize(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mColorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mApplyDynamicColorSize:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mDiffColorRadius:I

    rsub-int/lit8 p1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-double v1, v1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v1, v3

    double-to-int p1, v1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mDefaultMargin:I

    add-int/2addr p1, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLabelText(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateLabelText() value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenAttrMiniView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mLabelText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mLabelFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mLabelText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mSelectedView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mColorView:Landroid/widget/ImageView;

    return-void
.end method

.method public getUserDefineChildLayout()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mUserDefineChildLayoutId:I

    return v0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->getInflateChildId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->initView(Landroid/content/Context;I)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mApplyDynamicColorSize:Z

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mSizeLevel:I

    if-lez p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mColorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mColor:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->adjustBackground()V

    :cond_0
    return-void
.end method

.method public setColorBackground(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setInnerColorBackground(I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mNormalResId:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mFullResId:I

    return-void
.end method

.method public setDynamicColorBackground(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mApplyDynamicColorSize:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mNormalResId:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mFullResId:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->adjustBackground()V

    return-void
.end method

.method public setLabelFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mLabelFormat:Ljava/lang/String;

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mValue:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->updateLabelText(I)V

    return-void
.end method

.method public setLabelVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mLabelText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mLabelText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mLabelText:Landroid/widget/TextView;

    const/16 v0, 0xf

    const-wide/16 v1, 0xc8

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->alphaVisibleAnimation(Landroid/view/View;IJ)V

    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/spen/R$drawable;->setting_mini_attr_selected_bg:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method public setSizeLevel(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mApplyDynamicColorSize:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mSizeLevel:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mSizeLevel:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->updateColorSize(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->adjustBackground()V

    :cond_0
    return-void
.end method

.method public setUserDefineChildLayout(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mUserDefineChildLayoutId:I

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->mValue:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->updateLabelText(I)V

    return-void
.end method
