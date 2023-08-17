.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;->mOptionMenuListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu$OptionMenuListener;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;->access$000(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;->access$100(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->isShowingPopupMenu()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu$OptionMenuListener;->onDismiss(Z)V

    :cond_2
    return-void
.end method
