.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->initMultiSelectionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-static {p2, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->k()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onLongPressMultiSelectionEnded"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListEditModeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListEditModeLayout;->getVisibilityBottomNavigation()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListEditModeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListEditModeLayout;->showBottomNavigation()V

    :cond_0
    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->k()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onLongPressMultiSelectionStarted"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
