.class public Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCreatedTime:J

.field private mGroupId:Ljava/lang/String;

.field private mIsOwnedByMe:Z

.field private mIsStandAlone:Z

.field private final mMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSpaceId:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUnReadCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mIsStandAlone:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mMembers:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mGroupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mSpaceId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mCreatedTime:J

    return-void
.end method


# virtual methods
.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mCreatedTime:J

    return-wide v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mMembers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mMembers:Ljava/util/List;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStandAlone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mIsStandAlone:Z

    return v0
.end method

.method public getThumbnailIds()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getMemberCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getMemberCount()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mMembers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getMemberName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mMembers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getMemberName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mMembers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUnReadCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mUnReadCount:I

    return v0
.end method

.method public isOwnedByMe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mIsOwnedByMe:Z

    return v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public setMembers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mMembers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mMembers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setOwnedByMe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mIsOwnedByMe:Z

    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mSpaceId:Ljava/lang/String;

    return-void
.end method

.method public setStandAlone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mIsStandAlone:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setUnReadCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->mUnReadCount:I

    return-void
.end method
