.class Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->initViewPager(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public pageOffset:F

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$1;->pageOffset:F

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$1;->pageOffset:F

    const/high16 p3, 0x3f000000    # 0.5f

    cmpg-float v0, p1, p3

    if-gez v0, :cond_0

    cmpg-float v0, p3, p2

    if-ltz v0, :cond_1

    :cond_0
    cmpg-float v0, p2, p3

    if-gez v0, :cond_2

    cmpg-float p1, p3, p1

    if-gez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;)Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->invalidateIndicator()V

    :cond_2
    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$1;->pageOffset:F

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->updateLayout()V

    return-void
.end method
