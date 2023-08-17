.class public abstract Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OfficeElement:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOfficeElement;"
        }
    .end annotation
.end field

.field public mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/word/base/OfficeView;",
            "TOfficeElement;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->mElement:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addBackground(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addBackground()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    iget v1, v0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mHeight:I

    iget v0, v0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mWidth:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v3, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    sub-int v0, p3, v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v2

    mul-int/2addr v2, v1

    div-int/2addr v2, v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    iget v3, v3, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mWidth:I

    if-le v2, v3, :cond_1

    mul-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result p1

    div-int v1, v0, p1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    invoke-virtual {p0, v0, v1, p2}, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->addBackgroundToView(III)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v0, p2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mInsertHelper:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->cropBg:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;

    iget p2, p2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    invoke-direct {v1, p2, p3}, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "End background, height : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->getTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Add background error : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public abstract addBackgroundToView(III)Ljava/lang/String;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method
