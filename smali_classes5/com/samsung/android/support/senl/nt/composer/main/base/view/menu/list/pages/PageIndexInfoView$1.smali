.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x42

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;Ljava/lang/String;)I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object p3

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object p3

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->onPageIndexChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "0"

    const-string p2, "8163"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method
