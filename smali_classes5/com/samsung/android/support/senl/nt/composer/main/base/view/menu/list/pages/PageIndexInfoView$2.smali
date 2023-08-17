.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageIndexView, onFocusChange# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->onFocusChanged(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;I)Z

    :goto_0
    return-void
.end method
