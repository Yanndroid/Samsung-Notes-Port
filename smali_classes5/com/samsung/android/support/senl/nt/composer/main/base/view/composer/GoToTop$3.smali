.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;->runShowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
