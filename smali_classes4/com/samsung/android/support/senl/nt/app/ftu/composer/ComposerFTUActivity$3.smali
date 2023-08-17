.class Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->initPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public pageOffset:F

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$3;->pageOffset:F

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$3;->pageOffset:F

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
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->f(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->invalidateIndicator()V

    :cond_2
    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$3;->pageOffset:F

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->c(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->g(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected# prevPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->c(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposerFTUActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->e(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->onPageSelected(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->i(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)V

    return-void
.end method
