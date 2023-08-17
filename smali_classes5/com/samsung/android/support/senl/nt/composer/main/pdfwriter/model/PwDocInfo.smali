.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPdfFileInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;-><init>(Landroid/os/Parcel;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;->mPdfFileInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPdfFileInfo()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;->mPdfFileInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    return-object v0
.end method

.method public setPdfFileInfo(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;->mPdfFileInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;->mPdfFileInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;->mPdfFileInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
