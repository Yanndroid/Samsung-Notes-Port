.class public Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;
.implements Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInterface;


# static fields
.field public static final BOTTOM:I = 0x50

.field public static final END:I = 0x800005

.field public static final HORIZONTAL:I = 0x0

.field public static final START:I = 0x800003

.field private static final TAG:Ljava/lang/String; = "SpenBrushPenView"

.field public static final TOP:I = 0x30

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAutoDescriptionUpdate:Z

.field private mColorMask:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;

.field private mColorName:Ljava/lang/String;

.field private mIconView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenImageButton;

.field private mIsTabletGUI:Z

.field private mMaskColor:I

.field private mMaskLower:Landroid/view/View;

.field private mMaskUpper:Landroid/view/View;

.field private mMaskingLayout:Landroid/widget/LinearLayout;

.field private mOrientation:I

.field private mPenAlign:I

.field private mPenNameStringId:I

.field private mProhibitTooltipText:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x50

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mPenAlign:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mAutoDescriptionUpdate:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mProhibitTooltipText:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private checkMaskingOrder()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v3, Lcom/samsung/android/spen/R$id;->color_mask_upper:I

    if-eq v0, v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/samsung/android/spen/R$id;->color_mask_lower:I

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v2, v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mColorMask:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;->setPortrait(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v3, Lcom/samsung/android/spen/R$id;->color_mask_lower:I

    if-eq v0, v3, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/samsung/android/spen/R$id;->color_mask_upper:I

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mColorMask:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;->setPortrait(Z)V

    move v2, v1

    :goto_1
    return v2
.end method

.method private initView()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mPenNameStringId:I

    sget v1, Lcom/samsung/android/spen/R$id;->pen_hover_info:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenImageButton;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mIconView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    sget v0, Lcom/samsung/android/spen/R$id;->masking_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/samsung/android/spen/R$id;->color_mask_upper:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskUpper:Landroid/view/View;

    sget v0, Lcom/samsung/android/spen/R$id;->color_mask_lower:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskLower:Landroid/view/View;

    sget v0, Lcom/samsung/android/spen/R$id;->color_mask:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mColorMask:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;

    return-void
.end method

.method private needUpdate(I)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mOrientation:I

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mOrientation:I

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private reInitLayout(Landroid/view/ViewGroup;II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/samsung/android/spen/R$styleable;->SpenBrushPenView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenBrushPenView_orientation:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mOrientation:I

    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenBrushPenView_isTabletGUI:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mIsTabletGUI:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private setHoverDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mProhibitTooltipText:Z

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setTalkBackDescription(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAccessibility;->setAccessibilityNodeInfoToButton(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateChild(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->needUpdate(I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mOrientation:I

    const/4 v0, -0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v2, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->reInitLayout(Landroid/view/ViewGroup;II)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->reInitLayout(Landroid/view/ViewGroup;II)V

    goto :goto_0

    :cond_2
    const-string p1, "SpenBrushPenView"

    const-string v0, "onSizeChanged(). not change childLayout. just change size."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, v2

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->checkMaskingOrder()Z

    if-eqz v1, :cond_4

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method private updateFixedTalkBack()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mAutoDescriptionUpdate:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mPenNameStringId:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mPenNameStringId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mColorName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/spen/R$string;->pen_palette_color_custom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setTalkBackDescription(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public enablePenMask(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mColorMask:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mOrientation:I

    return v0
.end method

.method public getParticleSize()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPenColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskColor:I

    return v0
.end method

.method public getPenMaskEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mColorMask:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getPenName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPenSizeLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFixedWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFinishInflate()V
    .locals 7

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOrienation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPenBaseAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mPenAlign:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushPenView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_brush_pen_view:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->initView()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->enablePenMask(Z)V

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskColor:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setPenInfo(Ljava/lang/String;IIFZ)Z

    :cond_1
    return-void
.end method

.method public setFixedContentDescription(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFixedContentDescription() description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushPenView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mAutoDescriptionUpdate:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setHoverDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFixedWidth(Z)V
    .locals 0

    return-void
.end method

.method public setMaskPosition(FFF)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskUpper:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskLower:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mColorMask:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskLower:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mColorMask:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskingLayout:Landroid/widget/LinearLayout;

    add-float v4, p1, p2

    add-float/2addr v4, p3

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput p3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskUpper:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mColorMask:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskLower:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mOrientation:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->updateChild(Z)V

    :cond_0
    return-void
.end method

.method public setParticleSize(F)V
    .locals 0

    return-void
.end method

.method public setPenColor(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setPenColor(ILjava/lang/String;)V

    return-void
.end method

.method public setPenColor(ILjava/lang/String;)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mMaskColor:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mColorMask:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;

    if-eqz v0, :cond_0

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mColorName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->updateFixedTalkBack()V

    return-void
.end method

.method public setPenColorEnabled(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->enablePenMask(Z)V

    return-void
.end method

.method public setPenInfo(Ljava/lang/String;IIFZ)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenResource;->getBrushPenViewInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p4

    const-string p5, ")"

    const-string v0, "SpenBrushPenView"

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not Changed Pen. Pen("

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changed Pen. Pen("

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenStringId()I

    move-result v3

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenResourceId()I

    move-result v4

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenMaskResourceId()I

    move-result v5

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenMaskStrokeResourceId()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setPenResourceInfo(Ljava/lang/String;IIII)V

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mIsTabletGUI:Z

    invoke-static {p3, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenResource;->setMaskPosition(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;Z)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getUpperWeight()F

    move-result p1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getMaskWeight()F

    move-result p4

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getBottomWeight()F

    move-result p5

    invoke-virtual {p0, p1, p4, p5}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setMaskPosition(FFF)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mColorMask:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenMaskResourceId()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setPenColor(ILjava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public setPenResourceInfo(Ljava/lang/String;IIII)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPenInfo() localImageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " maskStrokeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushPenView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mPenNameStringId:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mIconView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenImageButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenImageButton;->setPortraitBackgroundResource(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mColorMask:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;

    invoke-virtual {p1, p4}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;->setMaskId(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mColorMask:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;

    invoke-virtual {p1, p5}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushMaskImageView;->setMaskStrokeId(I)V

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mAutoDescriptionUpdate:Z

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setHoverDescription(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setTalkBackDescription(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setPenSizeLevel(I)V
    .locals 0

    return-void
.end method

.method public setProhibitTooltipText(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mProhibitTooltipText:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->mIconView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    return-void
.end method
