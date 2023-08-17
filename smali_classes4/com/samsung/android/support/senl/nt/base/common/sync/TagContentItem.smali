.class public Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private extraInfo:Ljava/lang/String;

.field private isDeleted:I

.field private sDocUUID:Ljava/lang/String;

.field private tagModifiedTime:J

.field private tagServerTime:J

.field private tagUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->sDocUUID:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->tagUUID:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->extraInfo:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->isDeleted:I

    iput-wide p5, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->tagModifiedTime:J

    iput-wide p7, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->tagServerTime:J

    return-void
.end method


# virtual methods
.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDeleted()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->isDeleted:I

    return v0
.end method

.method public getTagModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->tagModifiedTime:J

    return-wide v0
.end method

.method public getTagServerTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->tagServerTime:J

    return-wide v0
.end method

.method public getTagUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->tagUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getsDocUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->sDocUUID:Ljava/lang/String;

    return-object v0
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->extraInfo:Ljava/lang/String;

    return-void
.end method

.method public setIsDeleted(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->isDeleted:I

    return-void
.end method

.method public setTagModifiedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->tagModifiedTime:J

    return-void
.end method

.method public setTagServerTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->tagServerTime:J

    return-void
.end method

.method public setTagUUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->tagUUID:Ljava/lang/String;

    return-void
.end method

.method public setsDocUUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->sDocUUID:Ljava/lang/String;

    return-void
.end method
