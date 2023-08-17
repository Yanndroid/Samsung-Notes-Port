.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->showRecommendedList(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_page_list_item_more_menu_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager$Contract;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager$Contract;->onSelectedRecommend(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
