.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnDismissListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnDismissListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnDismissListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnDismissListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnDismissListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnMoreMenuEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnDismissListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnMoreMenuEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnMoreMenuEventListener;->onDismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnDismissListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnDismissListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnDismissListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnDismissListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnDismissListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnDismissListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;Landroid/view/View;Ljava/lang/String;ILjava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;)V

    return-void
.end method
