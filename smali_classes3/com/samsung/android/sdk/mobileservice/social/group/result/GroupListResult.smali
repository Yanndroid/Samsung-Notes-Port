.class public Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupListResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/common/result/Result;


# instance fields
.field private mGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/group/Group;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/group/Group;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupListResult;->mStatus:Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupListResult;->mGroups:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/group/Group;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupListResult;->mGroups:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupListResult;->mStatus:Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    return-object v0
.end method
