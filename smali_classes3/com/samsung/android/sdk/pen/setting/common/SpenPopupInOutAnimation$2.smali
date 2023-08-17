.class Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$2;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HideAnimation - onAnimationEnd() called. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "NULL"

    goto :goto_0

    :cond_0
    const-string v1, "NOT NULL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPopupInOutAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->access$102(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation$AnimationListener;

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->cancelAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "SpenPopupInOutAnimation"

    const-string v1, "HideAnimation - onAnimationStart() called. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
