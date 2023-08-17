.class public Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDocumentUuid:Ljava/lang/String;

.field private mRequestCode:I

.field private mTriggerTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mDocumentUuid:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mRequestCode:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mTriggerTime:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mDocumentUuid:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mRequestCode:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mTriggerTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mDocumentUuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mRequestCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mTriggerTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public generateRequestCode()V
    .locals 2

    const/16 v0, 0x2710

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->getRandomNumberInRange(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mRequestCode:I

    return-void
.end method

.method public getDocumentUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mDocumentUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomNumberInRange(II)I
    .locals 1

    if-ge p1, p2, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/2addr p2, p1

    return p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "max must be greater than min"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mRequestCode:I

    return v0
.end method

.method public getTriggerTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mTriggerTime:J

    return-wide v0
.end method

.method public setDocumentUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mDocumentUuid:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mDocumentUuid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setRequestCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mRequestCode:I

    return-void
.end method

.method public setTriggerTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mTriggerTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDocumentUuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mDocumentUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mRequestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTriggerTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mTriggerTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mDocumentUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mRequestCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/Reminder;->mTriggerTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
