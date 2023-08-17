.class final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongClickBinding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding$ClickAction;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cJ\u001a\u0010\r\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\tH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;",
        "",
        "()V",
        "TOOLTIP_TIME_SHOW",
        "",
        "mClickAction",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding$ClickAction;",
        "bind",
        "",
        "setUndoRedoTooltipText",
        "view",
        "Landroid/view/View;",
        "setValues",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;",
        "vmHolder",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;",
        "unbind",
        "ClickAction",
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
.field private final TOOLTIP_TIME_SHOW:I

.field private mClickAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding$ClickAction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;->TOOLTIP_TIME_SHOW:I

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;->setUndoRedoTooltipText$lambda-1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;->bind$lambda-0(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static final bind$lambda-0(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;Landroid/view/View;)Z
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getViewModel()Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;->mClickAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding$ClickAction;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;->perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;->setUndoRedoTooltipText(Landroid/view/View;)V

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;->mClickAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding$ClickAction;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsAction;->getResult()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static final setUndoRedoTooltipText$lambda-1(Landroid/view/View;)V
    .locals 2

    const-string v0, "$view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/addons/base/binding/binder/d;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/d;-><init>(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method public final setUndoRedoTooltipText(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/addons/base/binding/binder/e;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/e;-><init>(Landroid/view/View;)V

    iget p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;->TOOLTIP_TIME_SHOW:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

    new-instance p2, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding$ClickAction;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;->getBindingId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "action_long_click"

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding$ClickAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;->mClickAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding$ClickAction;

    return-void
.end method

.method public unbind()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method
