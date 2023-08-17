.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->updateViewByInAppCollaborationMode(Landroid/app/Activity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$animate:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;Landroid/app/Activity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$1;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$1;->val$animate:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$1;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$1;->val$animate:Z

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;Landroid/app/Activity;Z)V

    return-void
.end method
