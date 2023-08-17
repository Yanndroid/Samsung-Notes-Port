.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnMoreMenuEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Landroid/view/View;

    move-result-object p3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Ljava/lang/String;

    move-result-object p4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)I

    move-result p5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Ljava/util/List;

    move-result-object p6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-result-object p7

    invoke-virtual/range {p2 .. p7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->show(Landroid/view/View;Ljava/lang/String;ILjava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;Z)V

    :cond_0
    return-void
.end method
