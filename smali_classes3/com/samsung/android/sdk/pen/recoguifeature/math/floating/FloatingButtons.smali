.class public Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$ActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatingButtons"


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$ActionListener;

.field private mInnerView:Landroid/widget/RelativeLayout;

.field private mWindowRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;)Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$ActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->mActionListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$ActionListener;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/samsung/android/spen/R$layout;->sdk_floating_math_buttons:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->mInnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->mInnerView:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$1;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->mInnerView:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$2;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->mInnerView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/samsung/android/spen/R$id;->preview_convert_btn:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$3;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->mInnerView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/samsung/android/spen/R$id;->preview_close_btn:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "Clear"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$4;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setInParent()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FloatingButtons::setInParent nHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FloatingButtons"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setY(F)V

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setY(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLayout left: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", right : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bottom:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", top : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FloatingButtons"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayout w: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p4, p2

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", h:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p5, p3

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->mWindowRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_5

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/spen/R$dimen;->sdk_floating_convert_text_preview_vertical_margin:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onLayout y: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    cmpg-float p4, p1, p2

    if-gez p4, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/samsung/android/spen/R$dimen;->sdk_convert_text_handle_height:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    new-instance p5, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->mWindowRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v3, p2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p5, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    add-int v2, p4, p3

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLayout handleSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",margin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",frameHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", getHeight() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_1

    iget p1, p5, Landroid/graphics/RectF;->top:F

    int-to-float p4, p4

    add-float/2addr p1, p4

    int-to-float p3, p3

    add-float/2addr p1, p3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    iget v0, p5, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-ge v0, p4, :cond_2

    iget p1, p5, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    add-int/2addr p1, p3

    int-to-float p1, p1

    :cond_2
    :goto_1
    cmpl-float p3, p1, p2

    if-lez p3, :cond_3

    goto :goto_2

    :cond_3
    move p1, p2

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    cmpl-float p3, p1, p2

    if-lez p3, :cond_4

    move p2, p1

    :cond_4
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setX(F)V

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->setInParent()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->mActionListener:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons$ActionListener;

    return-void
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatingMathEditor::setRect() windowRect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatingButtons"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->mWindowRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->mWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingButtons;->mInnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setToolbarRect(Landroid/graphics/Rect;)V
    .locals 4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    if-le v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    :cond_2
    if-eqz v1, :cond_3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    goto :goto_1

    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    :cond_4
    :goto_2
    return-void
.end method
