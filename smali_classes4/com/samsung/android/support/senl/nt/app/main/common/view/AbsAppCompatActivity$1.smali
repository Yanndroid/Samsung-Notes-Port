.class Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroidx/activity/result/ActivityResult;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->c(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult# resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbsAppCompatActivity"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "EXTRA_DATA_IGNORE_ACTIVITY_RESULT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->c(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;->onActivityResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->d(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity$1;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
