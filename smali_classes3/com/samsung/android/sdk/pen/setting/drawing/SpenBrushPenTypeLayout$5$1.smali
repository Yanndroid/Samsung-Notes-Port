.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5$1;->this$1:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5$1;->this$1:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->access$600(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5$1;->this$1:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->access$600(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5$1;->this$1:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;->onModeChanged(I)V

    :cond_0
    return-void
.end method
