.class public final Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel$mPreTouchListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel$mPreTouchListener$1",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;",
        "onPreTouch",
        "",
        "motionEvent",
        "Landroid/view/MotionEvent;",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel$mPreTouchListener$1;->this$0:Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_d

    :goto_1
    const/16 v1, 0xd3

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3

    goto :goto_9

    :cond_3
    :goto_2
    const/4 v1, 0x2

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_c

    :goto_3
    const/16 v1, 0xd5

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_6

    goto :goto_8

    :cond_6
    :goto_4
    const/4 v1, 0x1

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_b

    :goto_5
    const/16 v1, 0xd4

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_9

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v1, 0x3

    if-nez v0, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel$mPreTouchListener$1;->this$0:Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->onActionCanceled(Landroid/view/MotionEvent;)V

    goto :goto_a

    :cond_b
    :goto_7
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel$mPreTouchListener$1;->this$0:Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->onActionUp()V

    goto :goto_a

    :cond_c
    :goto_8
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel$mPreTouchListener$1;->this$0:Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->onActionMove(Landroid/view/MotionEvent;)V

    goto :goto_a

    :cond_d
    :goto_9
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel$mPreTouchListener$1;->this$0:Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->onActionDown()V

    :cond_e
    :goto_a
    const/4 p1, 0x0

    return p1
.end method
