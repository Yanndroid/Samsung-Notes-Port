.class public Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTENT_TYPE_HANDWRITING:I = 0x1

.field public static final CONTENT_TYPE_TEXT:I


# instance fields
.field public contentType:I

.field public handleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lastCharRect:Landroid/graphics/Rect;

.field public leftCharRect:Landroid/graphics/Rect;

.field public linkStr:Ljava/lang/String;

.field public linkType:I

.field public pageUuid:Ljava/lang/String;

.field public pageWidth:I

.field public rect:Landroid/graphics/RectF;

.field public repObjectUuid:Ljava/lang/String;

.field public str:Ljava/lang/String;

.field public strokeColor:I

.field public strokeRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->contentType:I

    return-void
.end method
