.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$5;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGlobalLayout() aniTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$5;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$600(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " expended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$5;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$700(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushPensView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$5;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$800(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$5;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$800(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$5;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$802(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$5;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$600(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$5;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$700(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$5;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$500(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->setPenAnimation(IZLandroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method
