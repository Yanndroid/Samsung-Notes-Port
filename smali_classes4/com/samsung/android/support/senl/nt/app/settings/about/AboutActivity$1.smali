.class Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->startProgress()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->d(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->d(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->e(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->e(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->f(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->f(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
