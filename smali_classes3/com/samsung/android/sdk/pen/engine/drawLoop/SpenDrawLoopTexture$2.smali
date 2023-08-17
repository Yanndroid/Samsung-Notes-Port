.class Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->doFrame(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$000(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$000(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$100(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$000(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$200(JZ)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$000(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$300(JZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$000(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$300(JZ)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$000(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$200(JZ)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$400(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$400(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$500(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$400(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$400(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$402(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->access$502(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;->this$0:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_2
    return-void
.end method
