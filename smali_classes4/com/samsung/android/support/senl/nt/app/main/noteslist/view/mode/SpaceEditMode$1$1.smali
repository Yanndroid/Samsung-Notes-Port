.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1;->onEnded(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1;

.field public final synthetic val$spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1$1;->val$spaceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_save_to_new_coedit_success_message:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1$1;->val$spaceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getSpaceTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode;->n(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SpaceEditMode"

    const-string v1, "ImportProgressListener onEnded# openShareViaInvitationLink"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1$1;->val$spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getSpaceTitleWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/social/social/OpenSessionApi;

    invoke-direct {v1}, Lcom/samsung/android/sdk/mobileservice/social/social/OpenSessionApi;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x1f5

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode;->n(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/sdk/mobileservice/social/social/OpenSessionApi;->getIntentForShareViaInvitationLink(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode;->o(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceEditMode;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
