.class public Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BackgroundPPTController;
.super Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController<",
        "Lorg/apache/poi/xslf/usermodel/XSLFSlide;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundPPTController"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;-><init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addBackgroundToView(III)Ljava/lang/String;
    .locals 8

    const-string v0, "BackgroundPPTController"

    const-string v1, "addBackgroundToView()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->mElement:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    iget v3, v1, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mWidth:I

    sub-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    const/16 v4, 0xa

    iget v1, v1, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mHeight:I

    add-int/lit8 v1, v1, -0x14

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    sget v7, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    move v5, p1

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/PPTUtils;->createPicture(Lorg/apache/poi/xslf/usermodel/XSLFSlide;IIIII)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error add background to view : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "image"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mInsertHelper:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->bgList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/support/senl/nt/word/common/OfficeBackground;

    invoke-direct {v0, p1, p3}, Lcom/samsung/android/support/senl/nt/word/common/OfficeBackground;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BackgroundPPTController"

    return-object v0
.end method
