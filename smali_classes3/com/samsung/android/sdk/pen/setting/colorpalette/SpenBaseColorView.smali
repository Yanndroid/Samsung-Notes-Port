.class abstract Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field public static final COLOR_TYPE_HSV:I = 0x2

.field public static final COLOR_TYPE_NONE:I = 0x0

.field public static final COLOR_TYPE_RES:I = 0x3

.field public static final COLOR_TYPE_RGB:I = 0x1

.field public static final OPACITY_100:I = 0xff

.field private static final TAG:Ljava/lang/String; = "SpenBaseColorView"


# instance fields
.field private final mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mCheckedChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$OnCheckedChangeListener;

.field private mColorType:I

.field private mColorView:Landroid/view/View;

.field private mHoverString:Ljava/lang/CharSequence;

.field private final mHsvColor:[F

.field private mIsSupportSelector:Z

.field private mOpacity:I

.field private mStringColorPrefix:Ljava/lang/String;

.field private mStringName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mHsvColor:[F

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->construct(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mHsvColor:[F

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->construct(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setContentDescription(Z)V

    return-void
.end method

.method private changeType(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mColorType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mStringName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setHoverDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mColorType:I

    return-void
.end method

.method private construct(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mStringColorPrefix:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mCheckedChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$OnCheckedChangeListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mIsSupportSelector:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mColorType:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setInit()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getColorView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mColorView:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private setColorInView(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mColorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private setContentDescription(Z)V
    .locals 2

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getColorType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mHoverString:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mStringName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mStringColorPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mStringName:Ljava/lang/String;

    return-void
.end method

.method private setViewDegree(Landroid/view/View;II)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationX(F)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    :cond_2
    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    :goto_0
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mColorView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mHoverString:Ljava/lang/CharSequence;

    return-void
.end method

.method public getColor([F)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mHsvColor:[F

    array-length v2, v1

    invoke-static {v1, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public getColorType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mColorType:I

    return v0
.end method

.method public abstract getColorView()Landroid/view/View;
.end method

.method public getOpacity()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mOpacity:I

    return v0
.end method

.method public abstract getSelectView()Landroid/view/View;
.end method

.method public abstract initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end method

.method public resetDegree()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getSelectView()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setViewDegree(Landroid/view/View;II)Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getSelectView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setViewDegree(Landroid/view/View;II)Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getSelectView()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setViewDegree(Landroid/view/View;II)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mColorView:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setViewDegree(Landroid/view/View;II)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mColorView:Landroid/view/View;

    invoke-direct {p0, v0, v2, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setViewDegree(Landroid/view/View;II)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mColorView:Landroid/view/View;

    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setViewDegree(Landroid/view/View;II)Z

    return-void
.end method

.method public setColor(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->changeType(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mHsvColor:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setColorInView(I)V

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setColor([FILjava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mHsvColor:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColor() hue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " saturation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SpenBaseColorView"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->changeType(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mHsvColor:[F

    array-length v3, v1

    invoke-static {p1, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mOpacity:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mHsvColor:[F

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor(I[F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setColorInView(I)V

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setName(Ljava/lang/String;)V

    return v2

    :cond_1
    :goto_0
    return v0
.end method

.method public setColor([FLjava/lang/String;)Z
    .locals 1

    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setColor([FILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setColorRes(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->changeType(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mColorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setHoverDescription(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mHoverString:Ljava/lang/CharSequence;

    return-void
.end method

.method public setInit()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->changeType(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mHsvColor:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    const/4 v0, 0x1

    aput v2, v1, v0

    const/4 v0, 0x2

    aput v2, v1, v0

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mOpacity:I

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mCheckedChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$OnCheckedChangeListener;

    return-void
.end method

.method public setResourceDegree(II)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mColorView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setViewDegree(Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public setSelected(ZZ)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mIsSupportSelector:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getSelectView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getSelectView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getSelectView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getSelectView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->colorSelectAnimation(Landroid/view/View;)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mCheckedChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$OnCheckedChangeListener;

    if-eqz p2, :cond_3

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$OnCheckedChangeListener;->onCheckedChanged(Landroid/view/View;Z)V

    :cond_3
    return v1
.end method

.method public setSelectorDegree(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getSelectView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getSelectView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setViewDegree(Landroid/view/View;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setSelectorIcon(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->mIsSupportSelector:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setSelected(ZZ)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getSelectView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getSelectView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
