.class Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->showButtonAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->d(Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->c(Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
