.class Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->startAlphaAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->access$102(Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;Z)Z

    return-void
.end method
