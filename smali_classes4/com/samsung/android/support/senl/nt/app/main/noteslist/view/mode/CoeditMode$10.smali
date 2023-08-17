.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceListResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->landingInvitationLink(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

.field public final synthetic val$caller:Ljava/lang/String;

.field public final synthetic val$groupId:Ljava/lang/String;

.field public final synthetic val$isForceDownload:Z

.field public final synthetic val$isStandalone:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;->val$isForceDownload:Z

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;->val$groupId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;->val$isStandalone:Z

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;->val$caller:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceListResult;)V
    .locals 9

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceListResult;->getStatus()Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->getCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceListResult;->getResult()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/mobileservice/social/share/Space;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getSpaceId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    move-object v5, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "landingInvitationLink#onResult result : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", spaceId : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isForceDownload : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;->val$isForceDownload:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditMode"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->runOnUiThread(Landroid/app/Activity;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->k(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;->val$groupId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;->val$isStandalone:Z

    iget-boolean v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;->val$isForceDownload:Z

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;->val$caller:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method
