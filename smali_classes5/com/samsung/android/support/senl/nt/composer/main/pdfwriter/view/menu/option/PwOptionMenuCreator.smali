.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/menu/option/PwOptionMenuCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PwOptionMenuCreator"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/menu/option/PwOptionMenuCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOptionMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isEditable()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuCreator;->createOptionMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isViewMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isInitMode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    :cond_3
    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/menu/option/PwOptionEditMenu;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/menu/option/PwOptionEditMenu;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    goto :goto_1

    :cond_4
    :goto_0
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    :cond_5
    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/menu/option/PwOptionViewMenu;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/menu/option/PwOptionViewMenu;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    :cond_6
    :goto_1
    if-nez p0, :cond_7

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/menu/option/PwOptionMenuCreator;->TAG:Ljava/lang/String;

    const-string v0, "createOptionMenu# none"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuNone;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuNone;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    :cond_7
    return-object p0
.end method
