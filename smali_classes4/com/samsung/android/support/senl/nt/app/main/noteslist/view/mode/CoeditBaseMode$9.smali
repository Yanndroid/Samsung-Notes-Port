.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->showCoeditMemberManage(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;

.field public final synthetic val$groupId:Ljava/lang/String;

.field public final synthetic val$isPickMode:Z

.field public final synthetic val$spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$9;->val$isPickMode:Z

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$9;->val$groupId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$9;->val$spaceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 2
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$9;->val$isPickMode:Z

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$9;->val$groupId:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$9;->val$spaceId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->requestSpaceLeaveAfterLeaderAssignSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->getModeIndex()I

    move-result p1

    const/16 p2, 0xe

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onBackKeyDown()Z

    :cond_0
    return-void
.end method
