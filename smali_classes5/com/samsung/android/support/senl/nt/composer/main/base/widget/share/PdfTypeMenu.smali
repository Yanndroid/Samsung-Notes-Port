.class public Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mPdfShareType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;

.field public mPdfShareTypeItems:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PdfTypeMenu"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->mPdfShareTypeItems:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public getMenuItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->mPdfShareTypeItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;)V

    return-object v0
.end method

.method public getShareType()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->mPdfShareType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public initShareTypeItems(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->mPdfShareTypeItems:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->mPdfShareTypeItems:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;->RASTER:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;

    iget v2, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;->resId:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->mPdfShareTypeItems:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;->VECTOR:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;

    iget v2, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;->resId:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
