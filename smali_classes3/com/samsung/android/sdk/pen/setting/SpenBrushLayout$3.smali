.class Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "SpenBrushLayout"

    const-string v1, "onSizeChanged() run2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "mBrushGuideControl is null. [after close()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$1402(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$1500(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$1502(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;Z)Z

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$1600(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$1700(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;ZZ)V

    :cond_2
    return-void
.end method
