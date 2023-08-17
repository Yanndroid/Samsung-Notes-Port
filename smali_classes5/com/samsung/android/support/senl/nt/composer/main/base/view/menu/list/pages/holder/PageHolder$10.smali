.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->updateModeState(ZZ)V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->l()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "longclick# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$PageHolderListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->mInputEventChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/InputEventChecker;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/InputEventChecker;->getToolType()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$PageHolderListener;->onItemLongClicked(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IPageHolder;I)V

    const/4 p1, 0x1

    return p1
.end method
