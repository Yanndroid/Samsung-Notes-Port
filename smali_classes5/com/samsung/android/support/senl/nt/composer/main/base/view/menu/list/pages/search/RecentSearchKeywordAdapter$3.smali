.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter$3;
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter$IDataManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter$IDataManager;->deleteAll()V

    return-void
.end method
