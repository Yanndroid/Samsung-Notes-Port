.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConverterParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams<",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RENAME:I = 0x2

.field public static final MODE_REPLACE:I = 0x1


# instance fields
.field private mDeleteData:Z

.field private mMemoUuid:Ljava/lang/String;

.field private mMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getMemoUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;->mMemoUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;->mMode:I

    return v0
.end method

.method public isDeleteData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;->mDeleteData:Z

    return v0
.end method

.method public setDeleteDataAfterConvert(Z)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;->mDeleteData:Z

    return-object p0
.end method

.method public setMode(I)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x2L
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;->mMode:I

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;->mMemoUuid:Ljava/lang/String;

    return-object p0
.end method
