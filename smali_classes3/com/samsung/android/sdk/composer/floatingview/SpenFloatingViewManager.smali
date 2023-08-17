.class public Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LINK_PREVIEW_EXCEPTION_PATTERN:[Ljava/lang/String;

.field private static final SUPPORT_TOOLTIP:Z

.field private static final TAG:Ljava/lang/String; = "SpenFloatingViewManager"


# instance fields
.field private mNativeViewId:I

.field private mRect:Landroid/graphics/RectF;

.field private mView:Landroid/view/View;


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
    sput-boolean v0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->SUPPORT_TOOLTIP:Z

    const-string v0, "^(http(s)?:\\/\\/)?((w){3}.)?youtu(be|.be)?(\\.com)?\\/.+"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->LINK_PREVIEW_EXCEPTION_PATTERN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mNativeViewId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mRect:Landroid/graphics/RectF;

    return-void
.end method

.method private getLayoutParams(Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    add-float/2addr v1, p1

    sub-float/2addr p2, v1

    float-to-int p1, p2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return-object v0
.end method

.method private isLinkPreviewSupported(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->LINK_PREVIEW_EXCEPTION_PATTERN:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mView:Landroid/view/View;

    return-void
.end method

.method public onAddFloatingImageButton(Landroid/graphics/RectF;Ljava/lang/String;I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mNativeViewId:I

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->removeFloatingView()Z

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageButton;

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageButton;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->getLayoutParams(Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v2, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->SUPPORT_TOOLTIP:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageButton;->setNativeViewId(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mRect:Landroid/graphics/RectF;

    iput p3, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mNativeViewId:I

    :cond_2
    return-void
.end method

.method public onAddFloatingTextView(Landroid/graphics/RectF;Ljava/lang/String;FZI)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mNativeViewId:I

    if-ne v0, p5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->removeFloatingView()Z

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->getLayoutParams(Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p3, 0x1

    invoke-static {v1, p3}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V

    const/4 p3, 0x0

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    if-eqz p4, :cond_1

    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p4, Landroid/text/style/URLSpan;

    invoke-direct {p4, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v3, 0x21

    invoke-virtual {p3, p4, v2, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->isLinkPreviewSupported(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v1, p2}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;->setLinkPreviewEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    :goto_0
    invoke-virtual {v1, p5}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;->setNativeViewId(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mRect:Landroid/graphics/RectF;

    iput p5, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mNativeViewId:I

    :cond_2
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mNativeViewId:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->removeFloatingView()Z

    :cond_3
    :goto_0
    return-void
.end method

.method public removeFloatingView()Z
    .locals 9

    iget v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mNativeViewId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    instance-of v5, v4, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mNativeViewId:I

    check-cast v4, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;->getNativeViewId()I

    move-result v8

    if-ne v5, v8, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;->close()V

    :goto_1
    iput-object v6, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mRect:Landroid/graphics/RectF;

    iput v1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mNativeViewId:I

    return v7

    :cond_1
    instance-of v5, v4, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageButton;

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->mNativeViewId:I

    check-cast v4, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageButton;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageButton;->getNativeViewId()I

    move-result v8

    if-ne v5, v8, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageButton;->close()V

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
