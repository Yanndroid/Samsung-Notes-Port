.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->mPageThumbnailHoverListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->dismissHoverPopup()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->mPageHolderVariable:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;

    iget v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->updateCheckboxStatus()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$PageHolderListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->mPageId:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->mInputEventChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/InputEventChecker;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/InputEventChecker;->getToolType()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$PageHolderListener;->onItemClicked(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
