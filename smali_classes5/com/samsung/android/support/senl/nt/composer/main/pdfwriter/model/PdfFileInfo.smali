.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mSaveAs:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mPath:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mSaveAs:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mPath:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mSaveAs:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mSaveAs:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public isSaveAs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mSaveAs:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mPath:Ljava/lang/String;

    return-void
.end method

.method public setSaveAs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mSaveAs:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mSaveAs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->mSaveAs:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
