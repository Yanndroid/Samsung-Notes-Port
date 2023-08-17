.class public Lcom/samsung/android/sdk/ocr/SOCRecognizer_OneUI41;
.super Lcom/samsung/android/sdk/ocr/SOCRecognizerBase;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOCRecognizer_OneUI41"


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;Lcom/samsung/android/sdk/ocr/RecognizerParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ocr/SOCRecognizerBase;-><init>(Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;Lcom/samsung/android/sdk/ocr/RecognizerParams;)V

    const-string p1, "SOCRecognizer_OneUI41"

    const-string p2, "SpenRecognizer(SOCRecognizer_OneUI41) is created!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "SOCRecognizer_OneUI41"

    const-string v1, "Cancel operation is not supported on SOCR OneUI41"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
