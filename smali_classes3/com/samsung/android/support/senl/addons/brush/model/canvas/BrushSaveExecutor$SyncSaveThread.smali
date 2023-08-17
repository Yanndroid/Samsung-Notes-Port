.class final Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$SyncSaveThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SyncSaveThread"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$SyncSaveThread;",
        "Ljava/lang/Thread;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;)V",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$SyncSaveThread;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/a;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/a;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "BrushSyncSaveThread"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-void
.end method

.method private static final _init_$lambda-1(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->doInBackground()Z

    invoke-static {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->access$getMSynchronize$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->access$setMSyncThread$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;Ljava/lang/Thread;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$SyncSaveThread;->_init_$lambda-1(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;)V

    return-void
.end method
