.class public Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AVAILABLE_CONVERTING_MEMORY_SIZE_FOR_NEW_MEMO:J

.field private static final DISK_FACTOR:F = 4.0f

.field private static final TAG:Ljava/lang/String; = "ConvertingUtils"

.field private static mTotalSizeInConverting:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->getAvailableConvertingMemorySizeForNewMemo()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->AVAILABLE_CONVERTING_MEMORY_SIZE_FOR_NEW_MEMO:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->mTotalSizeInConverting:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRequiredSizeForConverting(J)J
    .locals 2

    long-to-float p0, p0

    const/high16 p1, 0x40800000    # 4.0f

    mul-float/2addr p0, p1

    sget-wide v0, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->AVAILABLE_CONVERTING_MEMORY_SIZE_FOR_NEW_MEMO:J

    long-to-float p1, v0

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method public static getUncompressedSdocSize(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->getUncompressedSdocSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isAvailableMemoryForSdocConverting(J)Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->getAvailableInternalMemorySize()J

    move-result-wide v0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->getRequiredSizeForConverting(J)J

    move-result-wide p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableMemoryForConverting, storage/reqSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConvertingUtils"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static declared-synchronized isAvailableMemoryForSdocXConverting(J)Z
    .locals 9

    const-class v0, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->getAvailableInternalMemorySize()J

    move-result-wide v1

    sget-wide v3, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->mTotalSizeInConverting:J

    add-long/2addr v3, p0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    sput-wide v3, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->mTotalSizeInConverting:J

    :cond_1
    const-string v5, "ConvertingUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAvailableMemoryForConverting, availabe = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", storage/expected/required = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v6

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized reduceConvertingSize(J)V
    .locals 5

    const-class v0, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    sget-wide v3, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->mTotalSizeInConverting:J

    sub-long/2addr v3, p0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    sput-wide v1, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->mTotalSizeInConverting:J

    const-string v1, "ConvertingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reduceConvertingSize, finished = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", total = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p0, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->mTotalSizeInConverting:J

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized resetConvertingSize()V
    .locals 3

    const-class v0, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "ConvertingUtils"

    const-string v2, "resetConvertingSize"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->mTotalSizeInConverting:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
