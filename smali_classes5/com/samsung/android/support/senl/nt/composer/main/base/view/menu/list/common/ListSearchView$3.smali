.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;->initSearchView(Landroid/view/View;Landroid/view/View$OnFocusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/IBaseListContract$ISearchPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/IBaseListContract$ISearchPresenter;->onNavigateUpClicked()V

    return-void
.end method
