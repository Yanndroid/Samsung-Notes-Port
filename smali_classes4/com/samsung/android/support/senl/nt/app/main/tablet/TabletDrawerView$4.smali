.class Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->f(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Drawer onClick# mIsDrawerOpened : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->i(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TabletDrawerView"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->i(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->p(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->closeDrawer()Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->o(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->openDrawer(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->f(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->f(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_3
    :goto_0
    const-string p1, "103"

    const-string v0, "8001"

    const-string v1, "a"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
