.class Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->b(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->b(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$dimen;->bottom_navigation_with_icon_view_height:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setNotesListBottomViewMargin(I)V

    :cond_1
    return-void
.end method
