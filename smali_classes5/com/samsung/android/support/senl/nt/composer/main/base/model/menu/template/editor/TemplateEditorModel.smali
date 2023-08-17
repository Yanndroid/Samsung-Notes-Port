.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;
.super Ljava/util/Observable;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdjustModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

.field private mImageModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TemplateEditorModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;)V

    iput-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->mImageModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->mImageModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->mAdjustModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->mAdjustModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->mAdjustModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->mImageModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->close()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->mImageModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;

    return-void
.end method

.method public getAdjustModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->mAdjustModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    return-object v0
.end method

.method public getImageModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->mImageModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;

    return-object v0
.end method
