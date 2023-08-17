.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "221"

    const-string v1, "2231"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)[Landroid/view/View;

    move-result-object v0

    aget-object p1, v0, p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->search_item_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;->onKeywordSelected(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper$AsyncExecutor;->insertSearchKeyword(Ljava/lang/String;)V

    return-void
.end method
