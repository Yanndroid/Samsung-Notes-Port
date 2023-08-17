.class public Lcom/samsung/android/support/senl/nt/word/word/controller/BackgroundWordController;
.super Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundWordController"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;-><init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addBackgroundToView(III)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->mElement:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    iget-wide v3, v1, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mBgLeftIndentation:D

    move/from16 v1, p1

    int-to-double v7, v1

    move/from16 v1, p2

    int-to-double v9, v1

    sget v14, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    const-wide/16 v5, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lcom/samsung/android/support/senl/nt/word/word/utils/WordUtils;->addImageToRun(Lorg/apache/poi/xwpf/usermodel/XWPFRun;DDDDZZZII)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->removeInline(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mInsertHelper:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->bgList:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/support/senl/nt/word/common/OfficeBackground;

    move/from16 v4, p3

    invoke-direct {v3, v1, v4}, Lcom/samsung/android/support/senl/nt/word/common/OfficeBackground;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BackgroundWordController"

    return-object v0
.end method
