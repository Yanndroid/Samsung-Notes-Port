.class abstract Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConverterWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;",
        ">",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConverterWrapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public mPassWord:Ljava/lang/String;

.field private mSrcPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConverterWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;->mSrcPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->getPassword()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;->mPassWord:Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;->mSrcPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;->convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    move-result-object p1

    return-object p1
.end method

.method public verifySourcePath(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;->mSrcPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
