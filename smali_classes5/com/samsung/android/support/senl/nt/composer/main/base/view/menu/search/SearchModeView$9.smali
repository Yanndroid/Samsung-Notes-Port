.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$9;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->initSearchText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/samsung/android/support/senl/nt/composer/R$string;->ss_maximum_number_of_characters_exceeded:I

    const/4 p5, 0x1

    new-array p6, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/16 v1, 0xc7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p6, v0

    invoke-virtual {p3, p4, p6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p5}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-object p1
.end method
