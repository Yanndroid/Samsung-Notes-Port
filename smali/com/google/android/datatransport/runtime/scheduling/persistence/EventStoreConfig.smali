.class abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

.field private static final DURATION_ONE_WEEK_MS:J = 0x240c8400L

.field private static final LOAD_BATCH_SIZE:I = 0xc8

.field private static final LOCK_TIME_OUT_MS:I = 0x2710

.field private static final MAX_BLOB_BYTE_SIZE_PER_ROW:I = 0x14000

.field private static final MAX_DB_STORAGE_SIZE_IN_BYTES:J = 0xa00000L


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->builder()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;

    move-result-object v0

    const-wide/32 v1, 0xa00000

    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;->setMaxStorageSizeInBytes(J)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;->setLoadBatchSize(I)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;->setCriticalSectionEnterTimeoutMs(I)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;

    move-result-object v0

    const-wide/32 v1, 0x240c8400

    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;->setEventCleanUpAge(J)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;

    move-result-object v0

    const v1, 0x14000

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;->setMaxBlobByteSizePerRow(I)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;->build()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->DEFAULT:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getCriticalSectionEnterTimeoutMs()I
.end method

.method public abstract getEventCleanUpAge()J
.end method

.method public abstract getLoadBatchSize()I
.end method

.method public abstract getMaxBlobByteSizePerRow()I
.end method

.method public abstract getMaxStorageSizeInBytes()J
.end method

.method public toBuilder()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;
    .locals 3

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->builder()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getMaxStorageSizeInBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;->setMaxStorageSizeInBytes(J)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getLoadBatchSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;->setLoadBatchSize(I)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getCriticalSectionEnterTimeoutMs()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;->setCriticalSectionEnterTimeoutMs(I)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getEventCleanUpAge()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;->setEventCleanUpAge(J)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getMaxBlobByteSizePerRow()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;->setMaxBlobByteSizePerRow(I)Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig$Builder;

    move-result-object v0

    return-object v0
.end method
