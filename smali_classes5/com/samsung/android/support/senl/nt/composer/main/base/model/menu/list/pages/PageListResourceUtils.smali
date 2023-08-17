.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListResourceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ADD_PAGE_DESCRIPTION:Ljava/lang/String; = ""

.field private static BOOKMARK_DESCRIPTION:Ljava/lang/String; = ""

.field private static BOOKMARK_OFF_DESCRIPTION:Ljava/lang/String; = ""

.field private static BOOKMARK_ON_DESCRIPTION:Ljava/lang/String; = ""

.field private static SORT_PAGE_DESCRIPTION:Ljava/lang/String; = ""


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddPageDescription()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListResourceUtils;->ADD_PAGE_DESCRIPTION:Ljava/lang/String;

    return-object v0
.end method

.method public static getBookmarkOnOffDescription(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListResourceUtils;->BOOKMARK_ON_DESCRIPTION:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListResourceUtils;->BOOKMARK_OFF_DESCRIPTION:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static getPageDescription()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListResourceUtils;->SORT_PAGE_DESCRIPTION:Ljava/lang/String;

    return-object v0
.end method

.method public static getPageDescriptionWithBookmark()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListResourceUtils;->BOOKMARK_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListResourceUtils;->SORT_PAGE_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDescriptions(Landroid/content/Context;)V
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_sort_pages:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListResourceUtils;->SORT_PAGE_DESCRIPTION:Ljava/lang/String;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_bookmark:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListResourceUtils;->BOOKMARK_DESCRIPTION:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListResourceUtils;->BOOKMARK_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->on:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListResourceUtils;->BOOKMARK_ON_DESCRIPTION:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListResourceUtils;->BOOKMARK_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->off:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListResourceUtils;->BOOKMARK_OFF_DESCRIPTION:Ljava/lang/String;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_ctx_menu_add_page:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListResourceUtils;->ADD_PAGE_DESCRIPTION:Ljava/lang/String;

    return-void
.end method
