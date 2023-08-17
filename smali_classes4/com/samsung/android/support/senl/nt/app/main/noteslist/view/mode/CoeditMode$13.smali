.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->launchSocialPickerForNewStandaloneNote(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

.field public final synthetic val$finalPickerInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

.field public final synthetic val$toolType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$13;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$13;->val$finalPickerInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$13;->val$toolType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$13;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->removeProgressCircle()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$13;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object p3, p3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->removeProgressCircle()V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$13;->val$finalPickerInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->getInvitationLink()Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$13;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object p3, p3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$13;->val$finalPickerInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->getInvitationLink()Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$13;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object p3, p3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$13;->val$toolType:I

    invoke-interface {p3, p1, p2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->onNewCoeditNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
