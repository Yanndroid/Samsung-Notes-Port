.class public Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder$ShadowBuilderContract;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private final mShadowBuilderContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder$ShadowBuilderContract;

.field private final mShadowHeight:I

.field private mShadowView:Landroid/view/View;

.field private final mShadowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder$ShadowBuilderContract;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mCount:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$dimen;->note_drag_n_drop_shadow_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->note_drag_n_drop_shadow_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowHeight:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowBuilderContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder$ShadowBuilderContract;

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->note_drag_n_drop_shadow:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->note_drag_n_drop_badge:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$dimen;->note_drag_n_drop_badge_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-le v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    add-int/lit8 v2, v2, 0xa

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mCount:I

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowBuilderContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder$ShadowBuilderContract;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowView:Landroid/view/View;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->imageView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder$ShadowBuilderContract;->setImageView(Landroid/widget/ImageView;)V

    :cond_2
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowView:Landroid/view/View;

    invoke-virtual {v2, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowView:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowWidth:I

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowWidth:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mShadowHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method public setShadowBadge(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;->mCount:I

    return-void
.end method
