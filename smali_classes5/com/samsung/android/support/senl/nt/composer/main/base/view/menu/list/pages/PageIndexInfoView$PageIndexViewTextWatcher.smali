.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageIndexViewTextWatcher"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)V

    return-void
.end method

.method private getIntFromString(Ljava/lang/String;)I
    .locals 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntFromString : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;->getIntFromString(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, p1

    :goto_0
    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;->getIntFromString(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v1, :cond_4

    if-gez v3, :cond_5

    :cond_4
    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    move v3, v1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;->updateLayoutForAutoResize()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {p1, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;II)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->j()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "beforeTextChanged# "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public updateLayoutForAutoResize()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView$PageIndexViewTextWatcher;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageIndexInfoView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    :cond_0
    return-void
.end method
