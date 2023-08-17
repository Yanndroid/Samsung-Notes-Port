.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;
    }
.end annotation


# instance fields
.field private mBgColor:I

.field private mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

.field private mIsRTL:Z

.field private mRadius:I

.field private mRadiusDir:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->mini_pen_sub_popup_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mRadius:I

    sget v0, Lcom/samsung/android/spen/R$color;->mini_setting_sub_popup_bg:I

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mBgColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mIsRTL:Z

    return-void
.end method

.method private containsLeft()Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mIsRTL:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mRadiusDir:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;->RADIUS_DIR_START:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    if-eq v1, v2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mRadiusDir:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;->RADIUS_DIR_END:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private containsRight()Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mIsRTL:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mRadiusDir:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;->RADIUS_DIR_END:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    if-eq v1, v2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mRadiusDir:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;->RADIUS_DIR_START:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initBackground(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->getTopLeftRadius()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->getTopRightRadius()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->getBottomLeftRadius()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->getBottomRightRadius()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->getRoundedRectDrawable(FFFF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    :cond_0
    return-void
.end method

.method public getBottomLeftRadius()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mRadiusDir:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;->RADIUS_DIR_BOTTOM:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->containsLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mRadius:I

    :goto_1
    return v0
.end method

.method public getBottomRightRadius()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mRadiusDir:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;->RADIUS_DIR_BOTTOM:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->containsRight()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mRadius:I

    :goto_1
    return v0
.end method

.method public getTopLeftRadius()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mRadiusDir:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;->RADIUS_DIR_TOP:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->containsLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mRadius:I

    :goto_1
    return v0
.end method

.method public getTopRightRadius()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mRadiusDir:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;->RADIUS_DIR_TOP:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->containsRight()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mRadius:I

    :goto_1
    return v0
.end method

.method public initView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;->RADIUS_DIR_TOP:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->initView(Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;)V

    return-void
.end method

.method public initView(Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->setConsumedListener(Landroid/view/ViewParent;Landroid/view/View;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->mRadiusDir:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->initBackground(Landroid/view/View;)V

    return-void
.end method
