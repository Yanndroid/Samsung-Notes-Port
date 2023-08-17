.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCreatedTime:J

.field private final mLastModifiedTime:J

.field private mNewPath:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mUuid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mUuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mCreatedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mLastModifiedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mNewPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mUuid:Ljava/lang/String;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Restriction;->getTitleForFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mTitle:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mLastModifiedTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-wide p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mCreatedTime:J

    iput-object p8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mNewPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mCreatedTime:J

    return-wide v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mLastModifiedTime:J

    return-wide v0
.end method

.method public getNewPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mNewPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public syncPath()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mNewPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mPath:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mCreatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mLastModifiedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->mNewPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
