.class public Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchData"
.end annotation


# static fields
.field public static final SEARCHDATA_TYPE_STROKE:I = 0x1

.field public static final SEARCHDATA_TYPE_TEXTBOX:I


# instance fields
.field public pageWidth:I

.field public rect:Landroid/graphics/Rect;

.field public text:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;->type:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;->rect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;->text:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;->pageWidth:I

    return-void
.end method
