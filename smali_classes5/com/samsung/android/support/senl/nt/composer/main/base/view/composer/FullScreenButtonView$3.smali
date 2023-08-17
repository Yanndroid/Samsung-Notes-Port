.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->showToolbar(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$animate:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;Landroid/app/Activity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$3;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$3;->val$animate:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$3;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;->updateToShowHideStatusBar(Landroid/app/Activity;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$3;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$3;->val$animate:Z

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->hideFullScreenBtn(Landroid/app/Activity;Z)V

    return-void
.end method
