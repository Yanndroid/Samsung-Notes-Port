.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputValues"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsLongPage:Z

.field private final mPageCount:I

.field private final mPdfFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;->mPdfFilePath:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;->mPageCount:I

    const-string p1, "_long"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "_Long"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;->mIsLongPage:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;->mIsLongPage:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;->mPageCount:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;->mPdfFilePath:Ljava/lang/String;

    return-object p0
.end method
