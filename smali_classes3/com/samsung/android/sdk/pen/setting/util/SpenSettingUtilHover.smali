.class public Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HOVER_TAG:Ljava/lang/String; = "SupportTag"

.field private static final SUPPORT_TOOLTIP:Z

.field private static final TAG:Ljava/lang/String; = "SpenSettingUtilHover"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->SUPPORT_TOOLTIP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->lambda$setHoverEffect$0(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static findChildButton(Landroid/view/ViewGroup;)Landroid/widget/ImageButton;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    if-nez v2, :cond_2

    move-object v2, v3

    check-cast v2, Landroid/widget/ImageButton;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    return-object v0
.end method

.method public static getHoverText(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->SUPPORT_TOOLTIP:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->findChildButton(Landroid/view/ViewGroup;)Landroid/widget/ImageButton;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$setHoverEffect$0(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    const/16 v0, 0x9

    if-eq p3, v0, :cond_1

    const/16 p0, 0xa

    if-eq p3, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setElevation(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p0}, Landroid/view/View;->setElevation(F)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setHoverEffect(Landroid/view/View;FF)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/util/a;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/a;-><init>(FF)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public static setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->SUPPORT_TOOLTIP:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->findChildButton(Landroid/view/ViewGroup;)Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "SupportTag"

    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static setHoverText(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 0

    if-nez p2, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-boolean p2, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->SUPPORT_TOOLTIP:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
