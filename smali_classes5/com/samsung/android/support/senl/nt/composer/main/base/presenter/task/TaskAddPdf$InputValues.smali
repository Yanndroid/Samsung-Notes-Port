.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputValues"
.end annotation


# instance fields
.field private composerContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ComposerContract;

.field private final context:Landroid/content/Context;

.field private curPageIndex:I

.field private final filePathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isPDFReader:Z

.field private isStartedByExternalImportMenu:Z

.field private isTemplate:Z

.field private final mIsLimitPdfFileSize:Z

.field private final noteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

.field private final pageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

.field private final pdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

.field private final textManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

.field private final uriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Ljava/util/List;Ljava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->noteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->pdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->pageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->textManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->uriList:Ljava/util/List;

    iput-object p7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->filePathList:Ljava/util/List;

    iput p8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->curPageIndex:I

    iput-boolean p9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->mIsLimitPdfFileSize:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Ljava/util/List;Ljava/util/List;IZZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ComposerContract;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZZ",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ComposerContract;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Ljava/util/List;Ljava/util/List;IZ)V

    iput-boolean p10, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->isStartedByExternalImportMenu:Z

    iput-object p11, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->composerContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ComposerContract;

    iput-boolean p12, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->isTemplate:Z

    iput-boolean p13, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->isPDFReader:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ComposerContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->composerContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ComposerContract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->curPageIndex:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->filePathList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->isPDFReader:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->isStartedByExternalImportMenu:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->isTemplate:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->mIsLimitPdfFileSize:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->noteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->pageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->pdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->textManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->uriList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->curPageIndex:I

    return-void
.end method
