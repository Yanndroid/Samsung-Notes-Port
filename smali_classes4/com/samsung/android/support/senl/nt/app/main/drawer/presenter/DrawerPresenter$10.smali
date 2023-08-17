.class Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->onItemLongPressed(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

.field public final synthetic val$anchorView:Landroid/view/View;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;->val$uuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;->val$anchorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->create:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;->val$uuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;->val$anchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->i(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->rename:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;->val$uuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;->val$anchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->l(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->delete:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;->val$uuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;->val$anchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->k(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->change_color:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;->val$uuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$10;->val$anchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->j(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
