.class final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TouchAction"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0006\u0010\n\u001a\u00020\u000bJ\u001a\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsAction;",
        "type",
        "",
        "bindId",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "mTouchEvent",
        "Lcom/samsung/android/support/senl/addons/base/model/event/TouchEvent;",
        "getData",
        "",
        "release",
        "",
        "setTouchEvent",
        "view",
        "Landroid/view/View;",
        "event",
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
.field private final mTouchEvent:Lcom/samsung/android/support/senl/addons/base/model/event/TouchEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/addons/base/model/event/TouchEvent;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/base/model/event/TouchEvent;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;->mTouchEvent:Lcom/samsung/android/support/senl/addons/base/model/event/TouchEvent;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;->mTouchEvent:Lcom/samsung/android/support/senl/addons/base/model/event/TouchEvent;

    return-object v0
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;->mTouchEvent:Lcom/samsung/android/support/senl/addons/base/model/event/TouchEvent;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/event/TouchEvent;->release()V

    return-void
.end method

.method public final setTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;->mTouchEvent:Lcom/samsung/android/support/senl/addons/base/model/event/TouchEvent;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/event/TouchEvent;->setView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;->mTouchEvent:Lcom/samsung/android/support/senl/addons/base/model/event/TouchEvent;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/base/model/event/TouchEvent;->setEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method
