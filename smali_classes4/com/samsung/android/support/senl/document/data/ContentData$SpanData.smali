.class public Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/document/data/ContentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpanData"
.end annotation


# static fields
.field public static final KEY_DRAWING_BOTTOM:I = 0x192

.field public static final KEY_DRAWING_REAL_IMAGE:I = 0x193

.field public static final KEY_DRAWING_TOP:I = 0x191

.field public static final KEY_STROKE_SPD_PATH:I = 0x1f5

.field public static final KEY_THUMB_IMAGE:I = 0x64

.field public static final SPAN_TYPE_BOLD:I = 0xb

.field public static final SPAN_TYPE_FOREGROUND_COLOR:I = 0xe

.field public static final SPAN_TYPE_ITALIC:I = 0xc

.field public static final SPAN_TYPE_UNDERLINE:I = 0xd


# instance fields
.field public arg1:I

.field public arg2:I

.field public customData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public endPosition:I

.field public intervalType:I

.field public spanType:I

.field public spanVersion:I

.field public startPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->spanType:I

    iput v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->startPosition:I

    iput v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->endPosition:I

    iput v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->intervalType:I

    iput v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->spanVersion:I

    iput v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->arg1:I

    iput v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->arg2:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->customData:Ljava/util/HashMap;

    return-void
.end method
