.class Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$DebugMemInfo;
.super Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$MemInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugMemInfo"
.end annotation


# static fields
.field private static final mMemStatsTargets:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "summary.java-heap"

    const-string v1, "summary.native-heap"

    const-string v2, "summary.code"

    const-string v3, "summary.stack"

    const-string v4, "summary.graphics"

    const-string v5, "summary.private-other"

    const-string v6, "summary.system"

    const-string v7, ""

    const-string v8, "summary.total-pss"

    const-string v9, ""

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$DebugMemInfo;->mMemStatsTargets:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$MemInfo;-><init>(Lcom/samsung/android/support/senl/nt/base/common/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$DebugMemInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public print()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStats()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MemStats:   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sget-object v4, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$MemInfo;->mTargets:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    sget-object v5, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$DebugMemInfo;->mMemStatsTargets:[Ljava/lang/String;

    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    aget-object v5, v5, v3

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x44800000    # 1024.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%8.2f  "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Memory]"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
