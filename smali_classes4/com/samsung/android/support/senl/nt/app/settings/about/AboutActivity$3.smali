.class Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->stateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->e(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->c(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->getUpdateText()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->e(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->e(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->e(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->e(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->f(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->c(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->getUpdateNoticeText()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->f(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->f(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->f(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->f(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_1
    return-void
.end method
