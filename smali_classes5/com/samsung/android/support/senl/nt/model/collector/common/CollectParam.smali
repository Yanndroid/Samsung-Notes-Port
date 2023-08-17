.class public Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionType:I

.field private mCancelType:I

.field private mChangedPageIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInReadyState:Z

.field private mIsNewNote:Z

.field private mLastModifiedAt:J

.field private mLinkWith:I

.field private mNoteJobFinishCallback:Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;

.field private mPdfActionCaller:Ljava/lang/Class;

.field private mPdfActionKey:Ljava/lang/String;

.field private mPriority:I

.field private mSourceType:I

.field private mTriggerType:I

.field private mUUid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CollectParam"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->SAVE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mTriggerType:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->START:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mActionType:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->COMPOSER:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mSourceType:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;->SAVE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mCancelType:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$Priority;->FOREGROUND:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$Priority;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$Priority;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mPriority:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mIsNewNote:Z

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->ALL:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mLinkWith:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mInReadyState:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/common/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getActionType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mActionType:I

    return v0
.end method

.method public getCancelType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mCancelType:I

    return v0
.end method

.method public getChangedPageIdList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mChangedPageIdList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getInReadyState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mInReadyState:Z

    return v0
.end method

.method public getIsNewNote()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mIsNewNote:Z

    return v0
.end method

.method public getLastModifiedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mLastModifiedAt:J

    return-wide v0
.end method

.method public getLinkWith()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mLinkWith:I

    return v0
.end method

.method public getNoteJobFinishCallback()Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mNoteJobFinishCallback:Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;

    return-object v0
.end method

.method public getPdfActionCaller()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mPdfActionCaller:Ljava/lang/Class;

    return-object v0
.end method

.method public getPdfActionKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mPdfActionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mPriority:I

    return v0
.end method

.method public getSourceType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mSourceType:I

    return v0
.end method

.method public getTriggerType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mTriggerType:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mUUid:Ljava/lang/String;

    return-object v0
.end method

.method public setActionType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mActionType:I

    return-void
.end method

.method public setCancelType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mCancelType:I

    return-void
.end method

.method public setChangedPageIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mChangedPageIdList:Ljava/util/List;

    return-void
.end method

.method public setInReadyState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mInReadyState:Z

    return-void
.end method

.method public setIsNewNote(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mIsNewNote:Z

    return-void
.end method

.method public setLastModifiedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mLastModifiedAt:J

    return-void
.end method

.method public setLinkWith(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mLinkWith:I

    return-void
.end method

.method public setNoteJobFinishCallback(Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mNoteJobFinishCallback:Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;

    return-void
.end method

.method public setPdfActionCaller(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mPdfActionCaller:Ljava/lang/Class;

    return-void
.end method

.method public setPdfActionKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mPdfActionKey:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mPriority:I

    return-void
.end method

.method public setSourceType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mSourceType:I

    return-void
.end method

.method public setTriggerType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mTriggerType:I

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->mUUid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getActionType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uuid  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
