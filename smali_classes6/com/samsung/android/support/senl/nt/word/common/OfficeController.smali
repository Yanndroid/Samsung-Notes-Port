.class public abstract Lcom/samsung/android/support/senl/nt/word/common/OfficeController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OfficeDocument:",
        "Ljava/lang/Object;",
        "OfficeElement:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createOfficeDocument(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/word/base/OfficeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;",
            "Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/word/base/OfficeView<",
            "TOfficeDocument;TOfficeElement;>;"
        }
    .end annotation
.end method

.method public abstract createOfficeParams(Z)Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public wdocToOffice(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;ZZ)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->getFeature()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->isFoldableModel()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyTextFontSizeDelta()I

    move-result v2

    const/4 v4, -0x5

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x5

    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/word/word/utils/WordUtils;->isLongPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/word/common/OfficeController;->createOfficeParams(Z)Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->setFontSizeDelta(I)V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/support/senl/nt/word/common/OfficeController;->createOfficeDocument(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    move-result-object p2

    if-eqz v4, :cond_4

    invoke-virtual {p2, p4, p5}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->exportFixedSizePage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    goto :goto_4

    :cond_4
    invoke-virtual {p2, p4, p5}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->exportContinuousPage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    :goto_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/common/OfficeController;->getMimeType()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/UriHelper;->requestScanFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string p2, ""

    :goto_5
    return-object p2
.end method
