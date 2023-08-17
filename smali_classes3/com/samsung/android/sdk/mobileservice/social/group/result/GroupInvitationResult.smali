.class public Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/common/result/Result;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult$ExcludedMember;
    }
.end annotation


# instance fields
.field private mDisplayMessage:Ljava/lang/String;

.field private mExcludedMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult$ExcludedMember;",
            ">;"
        }
    .end annotation
.end field

.field private mGroup:Lcom/samsung/android/sdk/mobileservice/social/group/Group;

.field private mStatus:Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Lcom/samsung/android/sdk/mobileservice/social/group/Group;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;",
            "Lcom/samsung/android/sdk/mobileservice/social/group/Group;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult$ExcludedMember;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult;->mStatus:Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult;->mGroup:Lcom/samsung/android/sdk/mobileservice/social/group/Group;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult;->mExcludedMembers:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult;->mDisplayMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult;->mDisplayMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExcludedMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult$ExcludedMember;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult;->mExcludedMembers:Ljava/util/List;

    return-object v0
.end method

.method public getGroup()Lcom/samsung/android/sdk/mobileservice/social/group/Group;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult;->mGroup:Lcom/samsung/android/sdk/mobileservice/social/group/Group;

    return-object v0
.end method

.method public getStatus()Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult;->mStatus:Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    return-object v0
.end method
