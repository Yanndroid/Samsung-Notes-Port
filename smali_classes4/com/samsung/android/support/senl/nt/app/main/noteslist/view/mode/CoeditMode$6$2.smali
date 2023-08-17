.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;->onEditDialogResult(ILjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;

.field public final synthetic val$pickerInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6$2;->val$pickerInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->removeProgressCircle()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->removeProgressCircle()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6$2;->val$pickerInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->getInvitationLink()Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "CoeditMode"

    const-string p2, "createNewSpace# openShareViaInvitationLink"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/mobileservice/social/social/OpenSessionApi;

    invoke-direct {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/OpenSessionApi;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    const/16 p3, 0x1f5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6$2;->val$pickerInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->getSpaceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6$2;->val$pickerInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->getInvitationLink()Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/samsung/android/sdk/mobileservice/social/social/OpenSessionApi;->getIntentForShareViaInvitationLink(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
