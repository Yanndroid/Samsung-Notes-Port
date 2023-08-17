.class Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->setThumbAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;Z)V

    return-void
.end method
