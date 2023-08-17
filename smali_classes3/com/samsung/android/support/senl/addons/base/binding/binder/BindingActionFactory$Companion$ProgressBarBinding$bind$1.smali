.class public final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$bind$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$bind$1",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "onProgressChanged",
        "",
        "seekBar",
        "Landroid/widget/SeekBar;",
        "progress",
        "",
        "fromUser",
        "",
        "onStartTrackingTouch",
        "onStopTrackingTouch",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$bind$1;->this$0:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p3, "seekBar"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$bind$1;->this$0:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;->access$getMProgressAction$p(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;)Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$ProgressAction;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$ProgressAction;->setMProgressData(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$bind$1;->this$0:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getViewModel()Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$bind$1;->this$0:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;

    invoke-static {p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;->access$getMProgressAction$p(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding;)Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$ProgressBarBinding$ProgressAction;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;->perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
