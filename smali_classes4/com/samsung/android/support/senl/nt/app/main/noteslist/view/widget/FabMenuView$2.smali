.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setPivotX(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setPivotY(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
