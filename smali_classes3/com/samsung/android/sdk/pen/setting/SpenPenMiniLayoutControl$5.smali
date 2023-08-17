.class Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->initTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    const-string p1, "SpenPenMiniLayoutControl"

    const-string v0, "onTransitionEnd()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;IZ)V

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method
