.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->startExpandableListAnimation(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mAddedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mAddedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
