.class Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hideAnimation(Landroid/view/animation/Animation$AnimationListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    iget-boolean v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hasAnimation:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setAnimation(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setAnimation(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
