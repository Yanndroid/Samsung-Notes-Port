.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConverterParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams<",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RENAME:I = 0x2

.field public static final MODE_REPLACE:I = 0x1


# instance fields
.field private mMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;->mMode:I

    return v0
.end method

.method public setMode(I)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x2L
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;->mMode:I

    return-object p0
.end method
