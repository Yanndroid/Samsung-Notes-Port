.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$InvitationResult;,
        Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;,
        Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;,
        Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActivityContract;
    }
.end annotation


# virtual methods
.method public abstract connect()Z
.end method

.method public abstract disconnect()V
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isLatestNotesVersion()Z
.end method

.method public abstract isStorageFull()Z
.end method

.method public abstract launchSocialPicker(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;)V
.end method

.method public abstract releaseSpaceDeleteActionResult()V
.end method

.method public abstract requestInvitationAccept(Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;)V
.end method

.method public abstract requestInvitationDecline(Ljava/lang/String;)V
.end method

.method public abstract requestInvitationList(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$InvitationResult;)V
.end method

.method public abstract requestMember()V
.end method

.method public abstract requestMember(Ljava/lang/String;)V
.end method

.method public abstract requestMemberRemove(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestOldSharedNotebooks(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;)V
.end method

.method public abstract requestSpace(Ljava/lang/String;)V
.end method

.method public abstract requestSpaceCreateWithLink(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;)V
.end method

.method public abstract requestSpaceDelete(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;Ljava/lang/String;J)Z
.end method

.method public abstract requestSpaceLeave(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;)Z
.end method

.method public abstract requestSpaceLeaveAfterLeaderAssignSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;)V
.end method

.method public abstract requestSpaceMove(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract requestSpaceUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;)V
.end method

.method public abstract requestSync()V
.end method

.method public abstract requestSync(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;)V
.end method
