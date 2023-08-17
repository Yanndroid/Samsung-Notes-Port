.class public Lcom/sec/android/diagmonagent/dma/aperf/Operation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/android/diagmonagent/dma/aperf/Operation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private opDataSize:J

.field private opElapsedTime:J

.field private opId:Ljava/lang/String;

.field private opItemCount:J

.field private opName:Ljava/lang/String;

.field private startOpTimeMills:J

.field private startOpTimestamp:Ljava/lang/String;

.field private stopOpTimeMills:J

.field private stopOpTimestamp:Ljava/lang/String;

.field private subOpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;",
            ">;"
        }
    .end annotation
.end field

.field private subOpTotalCount:J

.field private subOpTotalElapsedTime:J

.field private tagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/diagmonagent/dma/aperf/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/diagmonagent/dma/aperf/Operation$1;

    invoke-direct {v0}, Lcom/sec/android/diagmonagent/dma/aperf/Operation$1;-><init>()V

    sput-object v0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->tagList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "opId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opId:Ljava/lang/String;

    const-string v0, "opName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opName:Ljava/lang/String;

    const-string v0, "startOpTimeMills"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->startOpTimeMills:J

    const-string v0, "startOpTimestamp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->startOpTimestamp:Ljava/lang/String;

    const-string v0, "stopOpTimeMills"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->stopOpTimeMills:J

    const-string v0, "stopOpTimestamp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->stopOpTimestamp:Ljava/lang/String;

    const-string v0, "opElapsedTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opElapsedTime:J

    const-string v0, "opItemCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opItemCount:J

    const-string v0, "opDataSize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opDataSize:J

    const-string v0, "subOpList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpList:Ljava/util/ArrayList;

    const-string v0, "tagList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->tagList:Ljava/util/ArrayList;

    const-string v0, "subOpTotalElapsedTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpTotalElapsedTime:J

    const-string v0, "subOpTotalCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpTotalCount:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->tagList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->startOpTimeMills:J

    invoke-static {v0, v1}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfUtil;->localToUTC(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->startOpTimestamp:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opElapsedTime:J

    invoke-static {}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfUtil;->generateUUID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opId:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opItemCount:J

    iput-wide v2, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opDataSize:J

    iput-wide v2, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpTotalCount:J

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpTotalElapsedTime:J

    return-void
.end method


# virtual methods
.method public addSubOperation(Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTags(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/diagmonagent/dma/aperf/Tag;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->tagList:Ljava/util/ArrayList;

    return-void
.end method

.method public calculateStopOpTime()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->startOpTimeMills:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opElapsedTime:J

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->stopOpTimeMills:J

    invoke-static {v0, v1}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfUtil;->localToUTC(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->stopOpTimestamp:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOpDataSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opDataSize:J

    return-wide v0
.end method

.method public getOpElapsedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opElapsedTime:J

    return-wide v0
.end method

.method public getOpId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpItemCount()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opItemCount:J

    return-wide v0
.end method

.method public getOpName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOpTimeMills()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->startOpTimeMills:J

    return-wide v0
.end method

.method public getStartOpTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->startOpTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getSubOpTotalCount()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpTotalCount:J

    return-wide v0
.end method

.method public getSubOpTotalElapsedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpTotalElapsedTime:J

    return-wide v0
.end method

.method public getSubOps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/diagmonagent/dma/aperf/Tag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->tagList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setOpDataSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opDataSize:J

    return-void
.end method

.method public setOpItemCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opItemCount:J

    return-void
.end method

.method public setSubOpTotalCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpTotalCount:J

    return-void
.end method

.method public setSubOpTotalElapsedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpTotalElapsedTime:J

    return-void
.end method

.method public setSubOps(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpList:Ljava/util/ArrayList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opId:Ljava/lang/String;

    const-string v1, "opId"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opName:Ljava/lang/String;

    const-string v1, "opName"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->startOpTimeMills:J

    const-string v2, "startOpTimeMills"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->startOpTimestamp:Ljava/lang/String;

    const-string v1, "startOpTimestamp"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->stopOpTimeMills:J

    const-string v2, "stopOpTimeMills"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->stopOpTimestamp:Ljava/lang/String;

    const-string v1, "stopOpTimestamp"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opElapsedTime:J

    const-string v2, "opElapsedTime"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opItemCount:J

    const-string v2, "opItemCount"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->opDataSize:J

    const-string v2, "opDataSize"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpList:Ljava/util/ArrayList;

    const-string v1, "subOpList"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->tagList:Ljava/util/ArrayList;

    const-string v1, "tagList"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpTotalElapsedTime:J

    const-string v2, "subOpTotalElapsedTime"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->subOpTotalCount:J

    const-string v2, "subOpTotalCount"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
