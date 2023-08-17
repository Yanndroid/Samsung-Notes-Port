.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;

    move-result-object v0

    return-object v0
.end method

.method public showSearchMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;Z)V

    return-void
.end method
