.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;->onEnded(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;

.field public final synthetic val$spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener$1;->val$spaceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_start_success:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_start_with_space_success:I

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "EditModeView"

    const-string v1, "ImportProgressListener onEnded# openShareViaInvitationLink"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener$1;->val$spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getSpaceTitleWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/social/social/OpenSessionApi;

    invoke-direct {v1}, Lcom/samsung/android/sdk/mobileservice/social/social/OpenSessionApi;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x1f5

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/sdk/mobileservice/social/social/OpenSessionApi;->getIntentForShareViaInvitationLink(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;Ljava/lang/ref/WeakReference;)V

    :cond_3
    :goto_1
    return-void
.end method
