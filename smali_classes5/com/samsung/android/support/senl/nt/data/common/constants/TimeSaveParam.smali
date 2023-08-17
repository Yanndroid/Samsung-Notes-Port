.class public Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCreatedTime:Ljava/lang/Long;

.field private mForceUpdate:Z

.field private mLastModifiedTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatedTime(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->mCreatedTime:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->mCreatedTime:Ljava/lang/Long;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public getForceUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->mForceUpdate:Z

    return v0
.end method

.method public getLastModifiedTime(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->mLastModifiedTime:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->mLastModifiedTime:Ljava/lang/Long;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public setCreatedTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->mCreatedTime:Ljava/lang/Long;

    return-void
.end method

.method public setForceUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->mForceUpdate:Z

    return-void
.end method

.method public setLastModifiedTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->mLastModifiedTime:Ljava/lang/Long;

    return-void
.end method

.method public setTime(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->mCreatedTime:Ljava/lang/Long;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->mLastModifiedTime:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeSaveParam{mCreatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->mCreatedTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastModifiedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->mLastModifiedTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mForceUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->mForceUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
