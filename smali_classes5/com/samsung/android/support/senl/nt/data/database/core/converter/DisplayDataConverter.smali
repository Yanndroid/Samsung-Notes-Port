.class public Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DISPLAY_CONTENT_MAX_LENGTH:I = 0x12c

.field public static final INDEXING_CONTENT_MAX_LENGTH:I = 0x7530

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DisplayDataConverter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToString([B)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static convertDisplayData(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;)[B
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->TAG:Ljava/lang/String;

    const-string v0, "convertDisplayData, contentText is null"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/SpenObjectConstructor;->makeObjectShape()Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setText(Ljava/lang/String;)V

    const/16 p0, 0x12c

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->convertDisplayData(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static convertDisplayData(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->convertDisplayData(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static convertDisplayData(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;IZ)[B
    .locals 8

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    new-instance v6, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter$1;

    invoke-direct {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter$1;-><init>()V

    move-object v2, p0

    move v4, p1

    move v7, p2

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->convertSpenTextToSpannableSBuilder(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;ZILcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->trimMaxContentString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->TAG:Ljava/lang/String;

    const-string p1, "convertDisplayData, text is null"

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    :goto_1
    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->setContent(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayDataHelper;->marshall(Landroid/os/Parcelable;)[B

    move-result-object p0

    return-object p0
.end method

.method public static convertDisplayData(Ljava/lang/String;)[B
    .locals 4

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->TAG:Ljava/lang/String;

    const-string v0, "convertDisplayData, text is null"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    :cond_0
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p0

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {p0, v0, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->setContent(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayDataHelper;->marshall(Landroid/os/Parcelable;)[B

    move-result-object p0

    return-object p0
.end method

.method public static trimMaxContentString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x12c

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static trimMaxContentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x12c

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static trimMaxIndexContentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x7530

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
