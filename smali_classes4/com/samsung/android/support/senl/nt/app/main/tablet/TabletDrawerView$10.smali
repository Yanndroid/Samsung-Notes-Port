.class Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->updateDrawerBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

.field public final synthetic val$iconHeight:I

.field public final synthetic val$isDataChanged:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->val$isDataChanged:Z

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->val$iconHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->o(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Z

    move-result p1

    const-string p2, "TabletDrawerView"

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->f(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isDataChanged #"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->val$isDataChanged:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->val$isDataChanged:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->f(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->j(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const-string p1, "onLayoutChange"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconDstY()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconList()Ljava/util/LinkedHashMap;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p5}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->f(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p5

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p6

    invoke-virtual {p5, p6, p7}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    const/high16 p5, 0x3f000000    # 0.5f

    if-eqz p4, :cond_4

    iget-object p1, p4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p6, p4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p6}, Landroid/view/View;->getY()F

    move-result p6

    int-to-float p1, p1

    mul-float/2addr p1, p5

    add-float/2addr p6, p1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->val$iconHeight:I

    int-to-float p1, p1

    mul-float/2addr p1, p5

    sub-float/2addr p6, p1

    move-object p1, p4

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    iget-object p4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    mul-int/lit8 p4, p4, 0x2

    iget-object p6, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p6}, Landroid/view/View;->getY()F

    move-result p6

    int-to-float p4, p4

    mul-float/2addr p4, p5

    add-float/2addr p6, p4

    iget p4, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->val$iconHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p5

    sub-float/2addr p6, p4

    goto :goto_2

    :cond_5
    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->b(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p6, p4

    :goto_2
    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconDstY()Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateDrawerBar#onLayoutChange() icon destTop : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconDstY()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
