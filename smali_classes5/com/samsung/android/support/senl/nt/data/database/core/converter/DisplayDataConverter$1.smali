.class Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter$1;
.super Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->convertDisplayData(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;IZ)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, "\ufffc"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;->getSpanText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
