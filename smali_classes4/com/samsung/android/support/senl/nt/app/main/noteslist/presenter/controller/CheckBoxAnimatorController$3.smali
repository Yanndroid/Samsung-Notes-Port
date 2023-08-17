.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController$3;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;->modeChangeAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;

.field public final synthetic val$isCurrentEditMode:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController$3;->val$isCurrentEditMode:Z

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/transition/TransitionListenerAdapter;->onTransitionEnd(Landroidx/transition/Transition;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController$3;->val$isCurrentEditMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController$CheckBoxAnimatorControllerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController$CheckBoxAnimatorControllerListener;->onTransitionEnd()V

    :cond_0
    return-void
.end method
