.class final Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$GestureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GestureListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J(\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J(\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0016J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$GestureListener;",
        "Landroid/view/GestureDetector$OnGestureListener;",
        "(Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;)V",
        "onDown",
        "",
        "e",
        "Landroid/view/MotionEvent;",
        "onFling",
        "e1",
        "e2",
        "velocityX",
        "",
        "velocityY",
        "onLongPress",
        "",
        "onScroll",
        "distanceX",
        "distanceY",
        "onShowPress",
        "onSingleTapUp",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$GestureListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$GestureListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->access$getMListener$p(Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$GestureListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->access$getMListener$p(Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;->onTouch()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p3, "e1"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$GestureListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->access$getMListener$p(Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$GestureListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->access$getMOrientation$p(Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$GestureListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->access$getMListener$p(Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0, p4}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;->onScroll(FF)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$GestureListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->access$getMListener$p(Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, p3, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;->onScroll(FF)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
