.class Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneItem:Landroid/view/MenuItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->onDoneButtonClicked()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mCancelItem:Landroid/view/MenuItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->onCancelButtonClicked()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishCancel()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
