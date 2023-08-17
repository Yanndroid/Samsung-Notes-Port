.class Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$5;
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->f(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->l(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->getModel()Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->saveFolderExpandState(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->a(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onExecuteItemSelected(I)V

    return-void
.end method
