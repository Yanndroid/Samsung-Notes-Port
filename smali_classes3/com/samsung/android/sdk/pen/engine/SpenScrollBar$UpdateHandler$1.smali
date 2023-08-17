.class Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler$1;->this$1:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const-string p1, "SpenScrollBar"

    const-string v0, "onAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler$1;->this$1:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->access$002(Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;Z)Z

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
