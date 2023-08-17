.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->startCoedit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

.field public final synthetic val$isStandalone:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$3;->val$isStandalone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 3
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "mde_space_id"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "EditModeView"

    const-string p2, "startCoedit# fail - spaceId is null or empty."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$3;->val$isStandalone:Z

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Z)V

    const-string v1, "mde_coedit_invite_url"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;->setInvitationLink(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->addImportProgressListener(Lj/a;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->importNoteToSpace(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
