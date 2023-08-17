.class public Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfoCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PaintIndexInfoCreator"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfoCreator;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfoCreator;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfoCreator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfoCreator;->mInstance:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfoCreator;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfoCreator;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfoCreator;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfoCreator;->mInstance:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfoCreator;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfoCreator;->mInstance:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfoCreator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public createPaintIndexInfo()Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfo;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfo;-><init>()V

    return-object v0
.end method

.method public createPaintIndexInfo(II)Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfo;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintIndexInfo;-><init>(II)V

    return-object v0
.end method
