.class final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding$LayoutChangeAction;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutChangeAction"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016JP\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding$LayoutChangeAction;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsAction;",
        "type",
        "",
        "subType",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "mLayoutChangeEvent",
        "Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;",
        "getData",
        "",
        "setLayoutChangeEvent",
        "",
        "v",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
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
.field private final mLayoutChangeEvent:Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;
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

    new-instance p1, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding$LayoutChangeAction;->mLayoutChangeEvent:Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding$LayoutChangeAction;->mLayoutChangeEvent:Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;

    return-object v0
.end method

.method public final setLayoutChangeEvent(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding$LayoutChangeAction;->mLayoutChangeEvent:Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;

    iput-object p1, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mView:Landroid/view/View;

    iput p2, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mLeft:I

    iput p3, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mTop:I

    iput p4, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mRight:I

    iput p5, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mBottom:I

    iput p6, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldLeft:I

    iput p7, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldTop:I

    iput p8, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldRight:I

    iput p9, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldBottom:I

    return-void
.end method
