.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;->initSearchButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout$Contract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout$Contract;->showSearchMode()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/BaseModeTopLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "0"

    const-string v0, "8165"

    goto :goto_0

    :cond_0
    const-string p1, "504"

    const-string v0, "3563"

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
