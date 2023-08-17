.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter$IDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordInfo;->getKeyword()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter$IDataManager;->search(Ljava/lang/String;)V

    return-void
.end method
