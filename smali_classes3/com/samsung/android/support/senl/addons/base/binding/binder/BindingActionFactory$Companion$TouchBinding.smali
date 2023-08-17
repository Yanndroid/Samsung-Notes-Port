.class final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TouchBinding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0017J\u001a\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0007H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;",
        "",
        "()V",
        "mAction",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;",
        "bind",
        "",
        "setValues",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;",
        "vmHolder",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;",
        "unbind",
        "TouchAction",
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
.field private mAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;->bind$lambda-0(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static final bind$lambda-0(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;->mAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;->setTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getViewModel()Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;->mAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;->perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;->mAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsAction;->getResult()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;->mAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;->release()V

    :cond_3
    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public bind()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/addons/base/binding/binder/f;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/f;-><init>(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setValues(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->setValues(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;)V

    new-instance p2, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;->getBindingId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "action_touch"

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;->mAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding$TouchAction;

    return-void
.end method

.method public unbind()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method
