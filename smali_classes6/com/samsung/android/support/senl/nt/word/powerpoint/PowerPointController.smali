.class public Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointController;
.super Lcom/samsung/android/support/senl/nt/word/common/OfficeController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/word/common/OfficeController<",
        "Lorg/apache/poi/xslf/usermodel/XMLSlideShow;",
        "Lorg/apache/poi/xslf/usermodel/XSLFSlide;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/word/common/OfficeController;-><init>()V

    const-string v0, "PowerPointController"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointController;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createOfficeDocument(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/word/base/OfficeView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;",
            "Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/word/base/OfficeView<",
            "Lorg/apache/poi/xslf/usermodel/XMLSlideShow;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlide;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;Ljava/lang/String;)V

    return-object v0
.end method

.method public createOfficeParams(Z)Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;
    .locals 0

    new-instance p1, Lcom/samsung/android/support/senl/nt/word/powerpoint/data/PowerPointParams;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/word/powerpoint/data/PowerPointParams;-><init>()V

    return-object p1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointController;->TAG:Ljava/lang/String;

    return-object v0
.end method
