.class Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Drawer:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->p(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->m(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_all_notes:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->q(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->p(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Landroid/view/View;

    move-result-object v0

    const-string v1, "TabletDrawerPresenter"

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->p(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->p(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v0, "DrawerBar icon click"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_all_notes:I

    if-ne p1, v0, :cond_3

    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_3
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_old_notes:I

    if-ne p1, v0, :cond_4

    const-wide/16 v2, -0x2

    goto :goto_0

    :cond_4
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_favorite:I

    if-ne p1, v0, :cond_5

    const-wide/16 v2, -0x3

    goto :goto_0

    :cond_5
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_lock:I

    if-ne p1, v0, :cond_6

    const-wide/16 v2, -0x5

    goto :goto_0

    :cond_6
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_import:I

    if-ne p1, v0, :cond_7

    const-wide/16 v2, -0x6

    goto :goto_0

    :cond_7
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_hashtag:I

    if-ne p1, v0, :cond_8

    const-wide/16 v2, -0x9

    goto :goto_0

    :cond_8
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_shared:I

    if-ne p1, v0, :cond_9

    const-wide/16 v2, -0x13

    goto :goto_0

    :cond_9
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_coedit:I

    if-ne p1, v0, :cond_a

    const-wide/16 v2, -0x8

    goto :goto_0

    :cond_a
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_trash:I

    if-ne p1, v0, :cond_b

    const-wide/16 v2, -0x7

    goto :goto_0

    :cond_b
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_myfolders:I

    if-ne p1, v0, :cond_e

    const-wide/16 v2, -0x4

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->access$000(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    if-nez p1, :cond_d

    const-string p1, "holder icon null"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->access$100(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDrawerDisplayDataByItemId(J)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->access$200(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->onFolderSelected(Ljava/lang/String;I)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->getDrawerHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->access$300(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->onFolderSelected(Ljava/lang/String;I)V

    return-void

    :cond_e
    const-string p1, "invalid resId"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    :goto_1
    const-string p1, "DrawerBar icon click block"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
