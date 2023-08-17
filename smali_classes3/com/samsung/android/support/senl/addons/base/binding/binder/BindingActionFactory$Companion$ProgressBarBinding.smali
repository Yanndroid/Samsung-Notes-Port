.class final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProgressBarBinding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$ProgressAction;
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0007H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;",
        "",
        "()V",
        "mProgressAction",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$ProgressAction;",
        "bind",
        "",
        "setValues",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;",
        "vmHolder",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;",
        "unbind",
        "ProgressAction",
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
.field private mProgressAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$ProgressAction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMProgressAction$p(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;)Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$ProgressAction;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;->mProgressAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$ProgressAction;

    return-object p0
.end method


# virtual methods
.method public bind()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/SeekBar;

    new-instance v1, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$bind$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$bind$1;-><init>(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

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

    new-instance p2, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$ProgressAction;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;->getBindingId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "action_onProgress"

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$ProgressAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;->mProgressAction:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$ProgressAction;

    return-void
.end method

.method public unbind()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    return-void
.end method
