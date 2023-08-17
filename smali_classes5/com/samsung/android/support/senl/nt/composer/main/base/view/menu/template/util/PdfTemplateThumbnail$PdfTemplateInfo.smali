.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PdfTemplateInfo"
.end annotation


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mPdfFilePath:Ljava/lang/String;

.field private mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->mCachePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;-><init>(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->mPdfFilePath:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->mCachePath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->mPdfFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    return-object p0
.end method


# virtual methods
.method public getCachePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->mCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPdfFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->mPdfFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSpenNotePdfImport()Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    return-object v0
.end method

.method public setPdfFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->mPdfFilePath:Ljava/lang/String;

    return-void
.end method
