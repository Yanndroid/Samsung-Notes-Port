.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setBeforeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBeforeAnimation.onAnimationEnd() from="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRotationX()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " to="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBrushPenListLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setRotationX(F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->access$300(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
