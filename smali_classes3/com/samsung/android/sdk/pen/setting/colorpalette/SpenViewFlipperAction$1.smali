.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->access$010(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;)I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd() remainAnimationCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenViewFlipperAction"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->access$008(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;)I

    return-void
.end method
