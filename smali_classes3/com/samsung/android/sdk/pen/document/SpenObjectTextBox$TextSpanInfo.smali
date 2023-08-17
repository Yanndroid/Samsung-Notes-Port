.class public Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextSpanInfo"
.end annotation


# static fields
.field public static final SPAN_EXCLUSIVE_EXCLUSIVE:I = 0x2

.field public static final SPAN_EXCLUSIVE_INCLUSIVE:I = 0x3

.field public static final SPAN_INCLUSIVE_EXCLUSIVE:I = 0x0

.field public static final SPAN_INCLUSIVE_INCLUSIVE:I = 0x1


# instance fields
.field public endPos:I

.field public intervalType:I

.field public startPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;->startPos:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;->endPos:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;->intervalType:I

    return-void
.end method
