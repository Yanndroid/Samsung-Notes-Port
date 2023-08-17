.class public Lcom/samsung/android/support/senl/document/data/ContentData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;,
        Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;,
        Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;,
        Lcom/samsung/android/support/senl/document/data/ContentData$Key;
    }
.end annotation


# static fields
.field public static final TYPE_ID_DEFAULT:I = 0x1

.field public static final TYPE_ID_TODO:I = 0x2

.field public static final TYPE_ID_TODO_DONE:I = 0x3

.field public static final TYPE_ID_VOICE_RECORD:I = 0x5


# instance fields
.field public body:Ljava/lang/String;

.field public contentId:I

.field public contentType:I

.field public extraMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public objectFileId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public objectRect:Landroid/graphics/RectF;

.field public spans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;",
            ">;"
        }
    .end annotation
.end field

.field public taskId:I

.field public taskState:I

.field public text:Ljava/lang/String;

.field public thumbnailId:I

.field public title:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData;->contentType:I

    iput v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData;->contentId:I

    iput v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData;->thumbnailId:I

    iput v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData;->taskId:I

    iput v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData;->taskState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData;->spans:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData;->objectFileId:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData;->objectRect:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData;->body:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/ContentData;->extraMap:Ljava/util/HashMap;

    return-void
.end method
