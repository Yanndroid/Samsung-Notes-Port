.class public final synthetic Lcom/samsung/android/support/senl/addons/brush/model/canvas/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/a;->a:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/a;->a:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$SyncSaveThread;->a(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;)V

    return-void
.end method
