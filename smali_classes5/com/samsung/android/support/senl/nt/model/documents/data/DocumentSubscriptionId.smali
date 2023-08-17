.class public Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COMPOSER_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

.field public static final CONVERT_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOCUMENT_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

.field public static final REFERENCE_SKIP_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

.field public static final SKIPPED_USERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYNC_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

.field private static final TAG:Ljava/lang/String; = "DocumentSubscriptionId"


# instance fields
.field private final mUsedTime:J

.field private final mUser:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "DOCUMENT_SERVICE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->create(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->DOCUMENT_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    const-string v2, "COMPOSER_SERVICE"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->create(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->COMPOSER_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    const-string v2, "CONVERT_SERVICE"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->create(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->CONVERT_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    const-string v2, "SYNC_SERVICE"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->create(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->SYNC_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    const-string v2, "SKIP_USER"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->create(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->REFERENCE_SKIP_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->SKIPPED_USERS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->mUsedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->mUser:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DocumentUser - parcel, user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", usedTime : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DocumentSubscriptionId"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/support/senl/nt/model/documents/data/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocumentUser, user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", usedTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentSubscriptionId"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->mUser:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->mUsedTime:J

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create, userName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", restoredId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentSubscriptionId"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;-><init>(Ljava/lang/String;J)V

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "equals, obj : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentSubscriptionId"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->mUser:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->mUsedTime:J

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->getUsedTime()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getUsedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->mUsedTime:J

    return-wide v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->mUser:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocumentSubscriptionId{mUsedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->mUsedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUser=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->mUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->mUsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->mUser:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
