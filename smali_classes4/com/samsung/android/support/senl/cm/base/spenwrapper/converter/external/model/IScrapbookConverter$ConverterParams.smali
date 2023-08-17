.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IScrapbookConverter$ConverterParams;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IScrapbookConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConverterParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams<",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IScrapbookConverter$ConverterParams;",
        ">;"
    }
.end annotation


# instance fields
.field private mCategoryId:Ljava/lang/String;

.field private mJSONObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IScrapbookConverter$ConverterParams;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getCategoryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IScrapbookConverter$ConverterParams;->mCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getJSONObject()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IScrapbookConverter$ConverterParams;->mJSONObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setCategoryId(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IScrapbookConverter$ConverterParams;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IScrapbookConverter$ConverterParams;->mCategoryId:Ljava/lang/String;

    return-object p0
.end method

.method public setJsonObject(Lorg/json/JSONObject;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IScrapbookConverter$ConverterParams;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IScrapbookConverter$ConverterParams;->mJSONObject:Lorg/json/JSONObject;

    return-object p0
.end method
