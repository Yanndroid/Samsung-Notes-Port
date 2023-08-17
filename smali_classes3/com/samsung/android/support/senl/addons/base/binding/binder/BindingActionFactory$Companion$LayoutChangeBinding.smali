.class final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutChangeBinding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding$LayoutChangeAction;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u000e\u001a\u00020\tH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;",
        "",
        "()V",
        "mLayoutChangeAction",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding$LayoutChangeAction;",
        "mLayoutChangeListener",
        "Landroid/view/View$OnLayoutChangeListener;",
        "bind",
        "",
        "setValues",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;",
        "vmHolder",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;",
        "unbind",
        "LayoutChangeAction",
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
.field private mLayoutChangeAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding$LayoutChangeAction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding;->bind$lambda-0(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private static final bind$lambda-0(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding;Landroid/view/View;IIIIIIII)V
    .locals 12

    move-object v0, p0

    const-string/jumbo v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, p2

    move/from16 v8, p6

    if-ne v1, v8, :cond_1

    move/from16 v6, p4

    move/from16 v10, p8

    move v5, p3

    if-ne v6, v10, :cond_0

    move/from16 v9, p7

    move/from16 v7, p5

    move/from16 v11, p9

    if-ne v5, v9, :cond_2

    if-ne v7, v11, :cond_2

    return-void

    :cond_0
    move/from16 v7, p5

    move/from16 v9, p7

    goto :goto_0

    :cond_1
    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    :goto_0
    move/from16 v11, p9

    :cond_2
    iget-object v2, v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding;->mLayoutChangeAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding$LayoutChangeAction;

    if-eqz v2, :cond_3

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding$LayoutChangeAction;->setLayoutChangeEvent(Landroid/view/View;IIIIIIII)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getViewModel()Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding;->mLayoutChangeAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding$LayoutChangeAction;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;->perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/c;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/c;-><init>(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

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

    new-instance p2, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding$LayoutChangeAction;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;->getBindingId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "action_layoutChange"

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding$LayoutChangeAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding;->mLayoutChangeAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding$LayoutChangeAction;

    return-void
.end method

.method public unbind()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LayoutChangeBinding;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method
