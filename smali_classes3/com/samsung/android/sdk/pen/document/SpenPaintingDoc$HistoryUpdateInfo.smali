.class public Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryUpdateInfo"
.end annotation


# instance fields
.field public layerId:I

.field public redoFile:Ljava/lang/String;

.field public undoFile:Ljava/lang/String;

.field public updateRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
