.class Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDragListener(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

.field public final synthetic val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

.field public final synthetic val$heightPixels:I

.field public final synthetic val$mgr:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final synthetic val$viewType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;ILandroidx/recyclerview/widget/LinearLayoutManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->val$viewType:I

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->val$mgr:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput p5, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->val$heightPixels:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->drawer_list_ripple:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->val$mgr:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->val$heightPixels:I

    invoke-static {v0, v1, p1, p2, v2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->u(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/view/View;Landroid/view/DragEvent;I)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->s(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->access$400(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$color;->list_ripple_color:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->access$500(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->val$viewType:I

    const/16 v2, 0x3f2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->r(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->n(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->n(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->access$600(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDrawerDisplayDataList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->access$700(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDrawerDisplayDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->access$800(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->o(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->s(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->m(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;->val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->dragAndDropFinished(Ljava/lang/String;)V

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->drawer_list_ripple:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    const-string p1, "TabletDrawerPresenter"

    const-string p2, "DrawerFragment# drag_drop"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_7
    return v2
.end method
