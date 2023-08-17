.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;->initCloseButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->onClose()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;->hide(Z)V

    return-void
.end method
