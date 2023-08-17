.class public Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrokeRecognitionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;
    }
.end annotation


# instance fields
.field public actionLinkData:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;

.field public pageWidth:I

.field public rect:Landroid/graphics/Rect;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;->rect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;->pageWidth:I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;->actionLinkData:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;

    return-void
.end method
