.class public Landroid/print/PdfPrint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PdfPrint$CallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private outputFile:Landroid/os/ParcelFileDescriptor;

.field private final printAttributes:Landroid/print/PrintAttributes;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PdfPrint"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/print/PdfPrint;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/print/PrintAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/print/PdfPrint;->printAttributes:Landroid/print/PrintAttributes;

    return-void
.end method

.method public static synthetic a(Landroid/os/CancellationSignal;Landroid/print/PdfPrint$CallBack;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/print/PdfPrint;->lambda$print$0(Landroid/os/CancellationSignal;Landroid/print/PdfPrint$CallBack;)V

    return-void
.end method

.method public static bridge synthetic b(Landroid/print/PdfPrint;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    iget-object p0, p0, Landroid/print/PdfPrint;->outputFile:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/print/PdfPrint;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getOutputFile(Ljava/io/File;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Landroid/print/PdfPrint;->TAG:Ljava/lang/String;

    const-string p2, "getOutputFile, mkdirs is fail"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    const/high16 p1, 0x30000000

    invoke-static {v0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method private static synthetic lambda$print$0(Landroid/os/CancellationSignal;Landroid/print/PdfPrint$CallBack;)V
    .locals 0

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Landroid/print/PdfPrint$CallBack;->onLayoutCancelled()V

    :cond_0
    return-void
.end method


# virtual methods
.method public print(Landroid/print/PrintDocumentAdapter;Ljava/io/File;Ljava/lang/String;Landroid/print/PdfPrint$CallBack;)V
    .locals 11

    invoke-direct {p0, p2, p3}, Landroid/print/PdfPrint;->getOutputFile(Ljava/io/File;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PdfPrint;->outputFile:Landroid/os/ParcelFileDescriptor;

    new-instance v4, Landroid/os/CancellationSignal;

    invoke-direct {v4}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v0, Landroid/print/a;

    invoke-direct {v0, v4, p4}, Landroid/print/a;-><init>(Landroid/os/CancellationSignal;Landroid/print/PdfPrint$CallBack;)V

    invoke-virtual {v4, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    iget-object v3, p0, Landroid/print/PdfPrint;->printAttributes:Landroid/print/PrintAttributes;

    new-instance v0, Landroid/print/PdfPrint$1;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p4

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Landroid/print/PdfPrint$1;-><init>(Landroid/print/PdfPrint;Landroid/print/PdfPrint$CallBack;Landroid/print/PrintDocumentAdapter;Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/print/PrintDocumentAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V

    return-void
.end method
