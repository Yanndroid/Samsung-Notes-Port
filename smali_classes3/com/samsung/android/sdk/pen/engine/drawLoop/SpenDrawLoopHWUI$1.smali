.class Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->postDestroyRendererAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI$1;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI$1;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->access$000(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;)Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI$1;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->access$000(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;)Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI$1;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->access$002(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;)Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;

    :cond_0
    return-void
.end method
