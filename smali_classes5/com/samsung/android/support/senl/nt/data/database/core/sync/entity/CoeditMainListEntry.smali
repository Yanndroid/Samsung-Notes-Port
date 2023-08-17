.class public Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_FAKE:I = 0x2

.field public static final TYPE_NOTE:I = 0x0

.field public static final TYPE_SPACE:I = 0x1


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mClientSavedChangePoint:J

.field private mMainListEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

.field private mMemberCount:I

.field private mModifiedTime:J

.field private mPreviousModifiedTime:J

.field private mSocialServerChangePoint:J

.field private mSpaceEntry:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mSocialServerChangePoint:J

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mClientSavedChangePoint:J

    return-void
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSavedChangePoint()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mClientSavedChangePoint:J

    return-wide v0
.end method

.method public getMainListEntry()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mMainListEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    return-object v0
.end method

.method public getMemberCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mMemberCount:I

    return v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mModifiedTime:J

    return-wide v0
.end method

.method public getPreviousModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mPreviousModifiedTime:J

    return-wide v0
.end method

.method public getSocialServerChangePoint()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mSocialServerChangePoint:J

    return-wide v0
.end method

.method public getSpaceEntry()Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mSpaceEntry:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mType:I

    return v0
.end method

.method public isModifiedTimeChanged()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mModifiedTime:J

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mPreviousModifiedTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSnapShotUpdateRequired()Z
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mMainListEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mSocialServerChangePoint:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-wide v6, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mClientSavedChangePoint:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v0, v6, v2

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public printSnapShotLog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mMainListEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSnapShotUpdateRequired# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mMainListEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mClientSavedChangePoint:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mSocialServerChangePoint:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditMainListEntry"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method public setClientSavedChangePoint(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mClientSavedChangePoint:J

    return-void
.end method

.method public setMainListEntry(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mMainListEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mMemberCount:I

    return-void
.end method

.method public setModifiedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mModifiedTime:J

    return-void
.end method

.method public setPreviousModifiedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mPreviousModifiedTime:J

    return-void
.end method

.method public setSocialServerChangePoint(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mSocialServerChangePoint:J

    return-void
.end method

.method public setSpaceEntry(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mSpaceEntry:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->mType:I

    return-void
.end method
