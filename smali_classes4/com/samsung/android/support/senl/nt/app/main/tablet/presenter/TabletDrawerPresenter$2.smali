.class Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDrawerBarIconOnDragListener(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final iconId:I

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

.field public final uuid:Ljava/lang/String;

.field public final synthetic val$resId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$2;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_trash:I

    if-ne p2, p1, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->trash:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->myfolders:I

    :goto_0
    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$2;->iconId:I

    if-ne p2, p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$RecycleBin;->UUID:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$2;->uuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    const/4 v2, 0x4

    if-eq p2, v2, :cond_2

    const/4 v2, 0x5

    if-eq p2, v2, :cond_1

    const/4 v2, 0x6

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$2;->iconId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$2;->iconId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->t(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Z)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->m(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object p2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$2;->uuid:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->dragAndDropFinished(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$2;->iconId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    const-string p1, "TabletDrawerPresenter"

    const-string p2, "DrawerBar# drag_drop"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->t(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Z)V

    :goto_0
    return v1
.end method
