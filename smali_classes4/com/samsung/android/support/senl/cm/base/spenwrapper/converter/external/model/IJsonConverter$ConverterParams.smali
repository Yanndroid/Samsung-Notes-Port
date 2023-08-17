.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter$ConverterParams;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConvertParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConverterParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConvertParams<",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter$ConverterParams;",
        ">;"
    }
.end annotation


# instance fields
.field private mCategoryName:Ljava/lang/String;

.field private mCategoryUUID:Ljava/lang/String;

.field private mDirPath:Ljava/lang/String;

.field private mExtDirPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter$ConverterParams;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConvertParams;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getCategoryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter$ConverterParams;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter$ConverterParams;->mCategoryUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter$ConverterParams;->mDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getExtDirPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter$ConverterParams;->mExtDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getPassword()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConvertParams;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCategoryName(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter$ConverterParams;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter$ConverterParams;->mCategoryName:Ljava/lang/String;

    return-object p0
.end method

.method public setCategoryUUID(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter$ConverterParams;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter$ConverterParams;->mCategoryUUID:Ljava/lang/String;

    return-object p0
.end method

.method public setExtDirPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter$ConverterParams;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter$ConverterParams;->mExtDirPath:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPassword(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConvertParams;->setPassword(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setSyncDirPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter$ConverterParams;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IJsonConverter$ConverterParams;->mDirPath:Ljava/lang/String;

    return-object p0
.end method
