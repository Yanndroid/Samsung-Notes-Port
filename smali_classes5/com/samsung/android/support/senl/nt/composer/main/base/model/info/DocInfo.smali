.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;
    }
.end annotation


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

.field public static final KEY_DOC_INFO:Ljava/lang/String; = "docInfo"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;

.field private mOpenType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

.field private mRawDocPath:Ljava/lang/String;

.field private mUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DocInfo"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;->values()[Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mOpenType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mRawDocPath:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;->None:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mUuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;->None:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public static restoreFromSavedInstance(Landroid/os/Bundle;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;
    .locals 1

    const-string v0, "docInfo"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDocPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mRawDocPath:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenType()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mOpenType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mOpenType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mRawDocPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mUuid:Ljava/lang/String;

    return-void
.end method

.method public isInvalid()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;->None:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpenType(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mOpenType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "docInfo"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setDocPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mRawDocPath:Ljava/lang/String;

    return-void
.end method

.method public setOpenType(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mOpenType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mUuid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mOpenType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Err: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$ErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", P: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mRawDocPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mOpenType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mRawDocPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
