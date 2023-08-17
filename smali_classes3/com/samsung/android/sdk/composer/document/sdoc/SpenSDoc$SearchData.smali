.class public Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchData"
.end annotation


# static fields
.field public static final CONTENT_TYPE:I = 0x0

.field public static final CONTENT_TYPE_STROKE:Ljava/lang/String; = "stroke"

.field public static final CONTENT_TYPE_TEXTBOX:Ljava/lang/String; = "textbox"


# instance fields
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

.field public filePath:Ljava/lang/String;

.field public hasVisualCue:Z

.field public pageWidth:I

.field public rect:Landroid/graphics/Rect;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->hasVisualCue:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->rect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->text:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->filePath:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->pageWidth:I

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->customData:Ljava/util/HashMap;

    return-void
.end method
