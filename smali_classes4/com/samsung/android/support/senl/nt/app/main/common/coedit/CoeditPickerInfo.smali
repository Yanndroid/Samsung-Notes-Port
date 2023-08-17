.class public abstract Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$CreateStandalone;,
        Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$CreateSpace;,
        Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$ActivityFinishedListener;
    }
.end annotation


# instance fields
.field private mActivityFinishedListener:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$ActivityFinishedListener;

.field public mInvitationLink:Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

.field public mIsStandalone:Z

.field private mResultCallback:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

.field public mSpaceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInvitationLink()Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->mInvitationLink:Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    return-object v0
.end method

.method public getSpaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->mSpaceName:Ljava/lang/String;

    return-object v0
.end method

.method public isStandalone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->mIsStandalone:Z

    return v0
.end method

.method public onFail()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->mResultCallback:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;->onFail()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSocialActivityFinished(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->mActivityFinishedListener:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$ActivityFinishedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$ActivityFinishedListener;->onActivityFinished(Z)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->mResultCallback:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->mIsStandalone:Z

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;->onSuccess(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setActivityFinishedListener(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$ActivityFinishedListener;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->mActivityFinishedListener:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$ActivityFinishedListener;

    return-object p0
.end method

.method public setInvitationLink(Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->mInvitationLink:Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    return-void
.end method

.method public setResultCallback(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->mResultCallback:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    return-object p0
.end method
