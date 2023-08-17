.class Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;->updateBottomLayout(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;

.field public final synthetic val$y:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;F)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2$1;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->f(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->d(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->d(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f200000    # 0.625f

    :goto_0
    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->f(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->f(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2$1;->val$y:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->f(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2$1;->val$y:F

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setY(F)V

    :cond_1
    return-void
.end method
