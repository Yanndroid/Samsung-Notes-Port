.class public Lcom/samsung/android/support/senl/document/data/SearchData;
.super Ljava/lang/Object;
.source "SourceFile"


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

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/data/SearchData;->hasVisualCue:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/document/data/SearchData;->rect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/support/senl/document/data/SearchData;->text:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/support/senl/document/data/SearchData;->filePath:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/support/senl/document/data/SearchData;->pageWidth:I

    iput-object v1, p0, Lcom/samsung/android/support/senl/document/data/SearchData;->customData:Ljava/util/HashMap;

    return-void
.end method
