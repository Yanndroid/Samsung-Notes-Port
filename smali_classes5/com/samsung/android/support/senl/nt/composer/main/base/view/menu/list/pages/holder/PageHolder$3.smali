.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->initMoreBtn()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$PageHolderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->mPageId:Ljava/lang/String;

    iget v3, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->mIndex:I

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->mInputEventChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/InputEventChecker;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/InputEventChecker;->getToolType()I

    move-result v1

    invoke-interface {v0, p1, v2, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$PageHolderListener;->onMoreBtnClicked(Landroid/view/View;Ljava/lang/String;II)V

    return-void
.end method
