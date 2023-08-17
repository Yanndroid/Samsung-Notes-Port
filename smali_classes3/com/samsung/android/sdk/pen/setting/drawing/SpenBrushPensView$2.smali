.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "SpenBrushPensView"

    const-string/jumbo v1, "updateChild in onSizeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$200(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$300(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$300(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$400(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;IZZ)V

    :cond_0
    return-void
.end method
