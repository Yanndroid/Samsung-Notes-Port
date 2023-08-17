.class public Lcom/samsung/android/support/senl/nt/word/common/DocConverter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;
.source "SourceFile"


# instance fields
.field private mPowerPointController:Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointController;

.field private mWordController:Lcom/samsung/android/support/senl/nt/word/word/WordController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public isActivated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setPowerPointController(Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/DocConverter;->mPowerPointController:Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointController;

    return-void
.end method

.method public setWordController(Lcom/samsung/android/support/senl/nt/word/word/WordController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/DocConverter;->mWordController:Lcom/samsung/android/support/senl/nt/word/word/WordController;

    return-void
.end method

.method public wdocToPPT(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/DocConverter;->mPowerPointController:Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointController;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/word/common/OfficeController;->wdocToOffice(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public wdocToWord(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/DocConverter;->mWordController:Lcom/samsung/android/support/senl/nt/word/word/WordController;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/word/common/OfficeController;->wdocToOffice(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method
