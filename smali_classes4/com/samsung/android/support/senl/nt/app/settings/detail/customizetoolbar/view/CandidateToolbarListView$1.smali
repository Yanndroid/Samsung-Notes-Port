.class Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->isValidEvent(Landroid/view/DragEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->isEmptyExist()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;

    iget-boolean p2, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mIsTransition:Z

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->d(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;)V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->dropItem()Z

    return v0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->dropItem()Z

    move-result p1

    return p1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->isEmptyExist()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method
