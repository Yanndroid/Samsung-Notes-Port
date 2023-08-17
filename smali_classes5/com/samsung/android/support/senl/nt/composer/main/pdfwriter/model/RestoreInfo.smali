.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mPdfFileInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

.field public mSavePath:Ljava/lang/String;

.field public mUuid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->mUuid:Ljava/lang/String;

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->mPdfFileInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->mSavePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->mUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->mPdfFileInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->mSavePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPdfFileInfo()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->mPdfFileInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    return-object v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->mPdfFileInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->mSavePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
