.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$VerticalPositionUpdater;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerticalPositionUpdater"
.end annotation


# instance fields
.field public mStartDistance:F

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$VerticalPositionUpdater;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public setUpdatePosition(Landroid/view/View;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_fast_scroll_vertical_gap_between_page_index:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$VerticalPositionUpdater;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$VerticalPositionUpdater;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;->checkInitialized(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;->mInitialized:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$VerticalPositionUpdater;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    int-to-float p2, p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;->mRangeStart:F

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$VerticalPositionUpdater;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getHeight()I

    move-result p2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;->mRangeEnd:F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$VerticalPositionUpdater;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p3

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$VerticalPositionUpdater;->mStartDistance:F

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;->mInitialized:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$VerticalPositionUpdater;->updateVariablePosition(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public updateVariablePosition(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;->mInitialized:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;->mRangeStart:F

    float-to-int v0, v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;->mRangeEnd:F

    float-to-int v1, v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$VerticalPositionUpdater;->setUpdatePosition(Landroid/view/View;II)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$VerticalPositionUpdater;->mStartDistance:F

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$VerticalPositionUpdater;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;->adjustBoundary(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method
