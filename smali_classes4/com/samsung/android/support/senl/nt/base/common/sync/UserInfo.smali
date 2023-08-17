.class public Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCreatorId:Ljava/lang/String;

.field private mCreatorName:Ljava/lang/String;

.field private mOwnerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;->mOwnerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;->mCreatorId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;->mCreatorName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCreatorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;->mCreatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;->mCreatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;->mOwnerId:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatorId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;->mCreatorId:Ljava/lang/String;

    return-void
.end method

.method public setCreatorName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;->mCreatorName:Ljava/lang/String;

    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;->mOwnerId:Ljava/lang/String;

    return-void
.end method
