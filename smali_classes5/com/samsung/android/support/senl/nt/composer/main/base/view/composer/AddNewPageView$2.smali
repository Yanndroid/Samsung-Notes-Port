.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AddNewPageView;Z)V

    return-void
.end method
