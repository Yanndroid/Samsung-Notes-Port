.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->initSearchViewContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->backward()V

    const-string p1, "303"

    const-string v0, "3034"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
