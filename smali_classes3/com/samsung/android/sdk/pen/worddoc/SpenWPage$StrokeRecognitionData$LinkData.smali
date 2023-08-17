.class public Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkData"
.end annotation


# static fields
.field public static final LINK_TYPE_EMAIL:I = 0x2

.field public static final LINK_TYPE_FORMULA:I = 0x3

.field public static final LINK_TYPE_PHONE:I = 0x0

.field public static final LINK_TYPE_URL:I = 0x1


# instance fields
.field public firstCharRect:Landroid/graphics/Rect;

.field public indexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lastCharRect:Landroid/graphics/Rect;

.field public repObjectUuid:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;->type:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;->firstCharRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;->lastCharRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;->indexList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;->repObjectUuid:Ljava/lang/String;

    return-void
.end method
