.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;->createTagItemsAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;

.field public final synthetic val$targetList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$7;->val$targetList:Ljava/util/List;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$7;->val$targetList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
