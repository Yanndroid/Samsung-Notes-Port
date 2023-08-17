.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->showToolbar(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;

.field public final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$2;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;->updateToShowHideStatusBar(Landroid/app/Activity;Z)V

    return-void
.end method
