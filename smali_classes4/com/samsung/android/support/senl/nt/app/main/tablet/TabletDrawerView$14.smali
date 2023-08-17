.class Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->openDrawerMoveAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

.field public final synthetic val$autoAnimation:Z

.field public final synthetic val$holders:Ljava/util/ArrayList;

.field public final synthetic val$iconHeight:I

.field public final synthetic val$openDrawerMoveAnimatorFinished:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;ZLjava/lang/Runnable;Ljava/util/ArrayList;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$autoAnimation:Z

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$openDrawerMoveAnimatorFinished:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$holders:Ljava/util/ArrayList;

    iput p5, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$iconHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconDstY()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconList()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$autoAnimation:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$openDrawerMoveAnimatorFinished:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconList()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    move p4, p2

    move p5, p3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/view/View;

    iget-object p7, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$holders:Ljava/util/ArrayList;

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p7

    iget-object p8, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$holders:Ljava/util/ArrayList;

    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result p8

    const-wide/16 v0, -0xb

    const/high16 p9, 0x3f000000    # 0.5f

    if-gt p8, p4, :cond_2

    iget-object p8, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$holders:Ljava/util/ArrayList;

    sub-int v2, p4, p5

    invoke-virtual {p8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    iget-object p8, p8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p8}, Landroid/view/View;->getHeight()I

    move-result p8

    mul-int/lit8 p8, p8, 0x3

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconList()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$holders:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    int-to-float p8, p8

    mul-float/2addr p8, p9

    add-float/2addr v0, p8

    iget-object p8, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p8}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object p8

    invoke-virtual {p8}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getDividerHeight()I

    move-result p8

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$holders:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    int-to-float p8, p8

    mul-float/2addr p8, p9

    add-float/2addr v0, p8

    iget p8, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$iconHeight:I

    :goto_1
    int-to-float p8, p8

    mul-float/2addr p8, p9

    sub-float/2addr v0, p8

    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    :cond_2
    iget-object p8, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$holders:Ljava/util/ArrayList;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    iget-object p8, p8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p8}, Landroid/view/View;->getHeight()I

    move-result p8

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconList()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    int-to-float p8, p8

    mul-float/2addr p8, p9

    add-float/2addr v0, p8

    iget-object p8, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p8}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object p8

    invoke-virtual {p8}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getDividerHeight()I

    move-result p8

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    int-to-float p8, p8

    mul-float/2addr p8, p9

    add-float/2addr v0, p8

    iget p8, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$iconHeight:I

    :goto_2
    int-to-float p8, p8

    mul-float/2addr p8, p9

    sub-float/2addr v0, p8

    :goto_3
    iget-object p8, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p8}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object p8

    invoke-virtual {p8}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconDstY()Ljava/util/ArrayList;

    move-result-object p8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p9

    invoke-virtual {p8, p9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p8, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$autoAnimation:Z

    if-eqz p8, :cond_5

    const-wide/16 p7, 0x190

    invoke-virtual {p6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p6

    iget-object p9, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p9}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object p9

    invoke-virtual {p9}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getAllNotesY()F

    move-result p9

    add-float/2addr p9, v0

    invoke-virtual {p6, p9}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p6

    if-ne p4, p3, :cond_4

    invoke-virtual {p6, p7, p8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p6

    iget-object p7, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$openDrawerMoveAnimatorFinished:Ljava/lang/Runnable;

    invoke-virtual {p6, p7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    :cond_4
    invoke-virtual {p6, p7, p8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    :cond_5
    iget-object p8, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p8}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->i(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Z

    move-result p8

    if-eqz p8, :cond_8

    if-ne p4, p3, :cond_7

    move p8, p2

    :goto_4
    if-ge p8, p7, :cond_6

    iget-object p9, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->val$holders:Ljava/util/ArrayList;

    invoke-virtual {v1, p8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->getDrawerHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v1

    invoke-static {p9, v1, p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->r(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;I)V

    add-int/lit8 p8, p8, 0x1

    goto :goto_4

    :cond_6
    iget-object p7, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p7}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object p7

    const/4 p8, 0x4

    invoke-virtual {p7, p8}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setVisibility(I)V

    :cond_7
    iget-object p7, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p7}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object p7

    invoke-virtual {p7}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getAllNotesY()F

    move-result p7

    add-float/2addr p7, v0

    invoke-virtual {p6, p7}, Landroid/view/View;->setY(F)V

    :cond_8
    :goto_5
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
