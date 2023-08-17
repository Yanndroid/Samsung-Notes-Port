.class Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "SpenPopupInOutAnimation"

    const-string v1, "ShowAnimation - onAnimationEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->access$002(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation$AnimationListener;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->cancelAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "SpenPopupInOutAnimation"

    const-string v1, "ShowAnimation - onAnimationStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
