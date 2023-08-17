.class Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->endAction(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$2;->val$view:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$700(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$700(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->notifyActionPositionChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$800(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)V

    return-void
.end method
